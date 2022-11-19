import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:universal_shop/presentation/pages/product/widgets/shimmer_product_card.dart';

import '../../../../application/product_bloc/product_bloc.dart';
import '../../../component/custom_pagination.dart';
import '../../../routes/routes.dart';
import '../../../styles/theme_wrapper.dart';
import 'product_card_row.dart';

class ProductsRowWithTitle extends StatefulWidget {
  final String query;
  final String field;
  final String title;
  final String? badgeId;

  const ProductsRowWithTitle({
    Key? key,
    required this.query,
    required this.field,
    required this.title,
    this.badgeId,
  }) : super(key: key);

  @override
  State<ProductsRowWithTitle> createState() => _ProductsRowWithTitleState();
}

class _ProductsRowWithTitleState extends State<ProductsRowWithTitle> {
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
  void initState() {
    _onRefresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return BlocConsumer<ProductBloc, ProductState>(
          listener: (BuildContext context, ProductState state) {
        if (state.noMoreData) {
          _refreshController.loadNoData();
        }
        if (state.error) {
          _refreshController.loadFailed();
        }
      }, builder: (context, state) {
        if (state.isInitial) {
          return Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      Routes.getProductGrid(context,
                          isValue: true,
                          query: widget.query,
                          field: widget.field,
                          title: widget.title,
                          badgeUid: widget.badgeId));
                },
                title: Text(
                  widget.title,
                  style: fonts.headline3,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "all".tr(),
                      style: fonts.bodyText2.copyWith(color: colors.primary),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.primary,
                      size: 16.w,
                    )
                  ],
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
              ),
              SizedBox(
                height: 280.h,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        12, (index) => const ShimmerProductCard()),
                  ),
                ),
              ),
            ],
          );
        } else if (state.products.isEmpty) {
          return const SizedBox();
        } else {
          return Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      Routes.getProductGrid(context,
                          isValue: true,
                          query: widget.query,
                          field: widget.field,
                          title: widget.title,
                          badgeUid: widget.badgeId));
                },
                title: Text(
                  widget.title,
                  style: fonts.headline3,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "all".tr(),
                      style: fonts.bodyText2.copyWith(color: colors.primary),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colors.primary,
                      size: 16.w,
                    )
                  ],
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              ),
              SizedBox(
                height: 280.h,
                child: CustomPagination(
                    enablePullDown: false,
                    scrollDirection: Axis.horizontal,
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
                    child: ProductCardRow(
                      products: state.products,
                      badgeUid: widget.badgeId,
                    )),
              ),
            ],
          );
        }
      });
    });
  }
}
