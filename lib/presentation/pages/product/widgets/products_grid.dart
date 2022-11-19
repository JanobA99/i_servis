import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:universal_shop/presentation/pages/product/widgets/shimmer_product_card.dart';

import '../../../../application/product_bloc/product_bloc.dart';
import '../../../component/custom_pagination.dart';
import '../../../styles/theme_wrapper.dart';
import 'product_card.dart';

class ProductsGrid extends StatefulWidget {
 final String field;
 final String query;
 final String title;
 final String? badgeUid;
  const ProductsGrid({Key? key, required this.field, required this.query, required this.title, this.badgeUid, })
      : super(key: key);

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onLoading() async {
    context.read<ProductBloc>().add(ProductEvent.getProductWithSort(
        firstPage: false, query: widget.query, field: widget.field));
    if (mounted) {
      setState(() {});
    }
    _refreshController.loadComplete();
  }

  void _onRefresh() async {
    _refreshController.footerMode?.value = LoadStatus.canLoading;
    context.read<ProductBloc>().add(ProductEvent.getProductWithSort(
        firstPage: true, query: widget.query, field: widget.field));
    _refreshController.refreshCompleted();
  }


  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: fonts.headline3,
          ),
        ),
        body: BlocConsumer<ProductBloc, ProductState>(
            listener: (BuildContext context, ProductState state) {
          if (state.noMoreData) {
            _refreshController.loadNoData();
          }
          if (state.error) {
            _refreshController.loadFailed();
          }
        }, builder: (context, state) {
              if(state.isInitial){
                return GridView(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.sw / 568.h),
                  children: List.generate(12, (index){
                    return const ShimmerProductCard();
                  }),
                );
              }else if (state.products.isEmpty) {
            return const SizedBox();
          } else {
            return CustomPagination(
                enablePullDown: true,
                controller: _refreshController,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                onRetry: () {
                  if (state.products.isEmpty) {
                    _onRefresh();
                  } else {
                    _onLoading();
                  }
                },
                child:  GridView(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.sw / 568.h),
                  children: List.generate(state.products.length, (index){
                    int optionIndex = 0;
                    if (widget.badgeUid != null) {
                      int i = state.products[index].options?.indexWhere(
                              (p0) => p0.badgesIds?.contains(widget.badgeUid) ?? false) ??
                          0;
                      if(i!=-1){
                        optionIndex = i;
                      }
                    }
                    return ProductCard(
                      productDetailModel: state.products[index],
                      optionInitialIndex: optionIndex,
                    );
                  }),
                ));
          }
        }),
      );
    });
  }
}
