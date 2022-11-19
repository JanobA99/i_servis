import 'package:built_collection/built_collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:universal_shop/application/product_bloc/product_bloc.dart';
import 'package:universal_shop/infrastructure/extensions/custom_string_extension.dart';
import 'package:universal_shop/infrastructure/models/category/category_model.dart';
import 'package:universal_shop/infrastructure/models/product/product_model.dart';
import 'package:universal_shop/infrastructure/repositories/product_repo.dart';
import 'package:universal_shop/infrastructure/services/firebase_service.dart';
import 'package:universal_shop/presentation/component/custom_button.dart';
import 'package:universal_shop/presentation/component/select_filter.dart';
import 'package:universal_shop/presentation/pages/category/subcategory/select_subcategory.dart';
import 'package:universal_shop/presentation/pages/product/create_product/create_option.dart';
import 'package:universal_shop/presentation/styles/theme.dart';
import 'package:universal_shop/presentation/styles/theme_wrapper.dart';
import 'package:uuid/uuid.dart';

import '../../../../domain/core/hive_keys.dart';
import '../../../../infrastructure/models/component/component_model.dart';
import '../../../../infrastructure/models/market/market_model.dart';
import '../../../../main.dart';
import '../../../component/cupertino_tab_bar.dart';
import '../../../component/custom_text_field.dart';
import '../../markets/create_market/select_markets.dart';
import '../widgets/option_widget.dart';

class CreateProduct extends StatefulWidget {
  final ProductDetailModel? product;

  const CreateProduct({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
int tabBarIndex = 0;
  late TextEditingController _titleController;
  late TextEditingController _tagsController;

  List<CategoryOrInnerSubcategoryOrBadgeModel> _selectedSubCategories = [];
  List<String> _selectedFilter = [];
  List<Option> options = [];
  List<MarketModel> selectedMarket = [];
  int optionIndex = 0;
  bool emptyTitle = false;

  Future<void> _selectSubCategories(BuildContext context) async {
    final List<CategoryOrInnerSubcategoryOrBadgeModel>? results =
        await showDialog(
      context: context,
      builder: (BuildContext contextDialog) {
        return MultiSelectSubcategory(
          selectedItems: _selectedSubCategories,
        );
      },
    );
    if (results != null) {
      _selectedSubCategories = results;
      setState(() {});
    }
  }

  Future<void> _selectFilter(BuildContext context) async {
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext contextDialog) {
        return MultiSelectFilter(
          selectedItems: _selectedFilter,
        );
      },
    );
    if (results != null) {
      _selectedFilter = results;
      setState(() {});
    }
  }

  void createOption(Option? option, List<ComponentModel> components) {
    showDialog(
        context: context,
        builder: (_) => BlocProvider(
            create: (_) => ProductBloc(
                productRepo: ProductRepo(firebaseService: FirebaseService()),
                firebaseService: FirebaseService()),
            child: CreateOption(
              isService: tabBarIndex==1,
              option: option,
              components: components,
            ))).then((value) {
      if (value != null && value! is Option) {
        value as Option;
        int updateIndex = options
            .lastIndexWhere((element) => element.optionUid == value.optionUid);
        if (updateIndex == -1) {
          int i =
              options.lastIndexWhere((e) => e.optionName == value.optionName);
          p(i);
          if (i == -1) {
            setState(() {
              options.add(value);
            });
          } else {
            EasyLoading.showError(
                "${options[i].optionName}${"same_name_error".tr()}");
          }
        } else {
          setState(() {
            options.removeAt(updateIndex);
            options.insert(updateIndex, value);
          });
        }
      }
    });
  }

  Future<void> _selectMarkets(BuildContext context) async {
    final List<MarketModel>? results = await showDialog(
      context: context,
      builder: (BuildContext contextDialog) {
        return ValueListenableBuilder(
            valueListenable: Hive.box<MarketModel>(HiveKeys.myMarkets).listenable(),
            builder: (context, Box<MarketModel> box, _) {
             List<MarketModel> markets = box.values.toList();
            return MultiSelectMarket(
                selectedItems: selectedMarket, items: markets,);
          }
        );
      },
    );
    if (results != null) {
      selectedMarket = results;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _tagsController = TextEditingController();
    if (widget.product != null) {
      _titleController.text = widget.product!.title ?? "";
      String tags = '';
      for (String i in widget.product!.tags?.toList() ?? []) {
        tags = "$tags$i ";
      }
      _tagsController.text = tags;
      _selectedFilter = widget.product!.filter?.toList() ?? [];
      _selectedSubCategories = widget.product!.subcategory?.toList() ?? [];
      selectedMarket = widget.product!.markets?.toList() ??[];
      options = widget.product?.options?.toList()??[];
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _tagsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext context, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme controller) {
      return BlocConsumer<ProductBloc, ProductState>(listenWhen: (old, next) {
        return (old.success != next.success && next.success);
      }, listener: (context, state) {
        if (state.success) {
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              tabBarIndex==0 ?
              widget.product != null
                  ? "update_product".tr()
                  : "create_product".tr() : widget.product != null
                  ? "update_service".tr()
                  : "create_service".tr(),
              style: fonts.headline3,
            ),
            elevation: 0,
            backgroundColor: colors.transparent,
            leading: BackButton(
              color: colors.text,
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 80.h,
            child: Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                child: CustomButton(
                  onPressed: () {
                    User? user = FirebaseAuth.instance.currentUser;
                    if (user != null) {
                      if (_titleController.text.isEmpty) {
                        setState(() {
                          emptyTitle = true;
                        });
                        return;
                      }
                      if(selectedMarket.isEmpty){
                        EasyLoading.showError("select_market".tr());
                        return;
                      }
                      if (_selectedSubCategories.isEmpty) {
                        EasyLoading.showError("subcategory_required".tr());
                        return;
                      }
                      if (options.isEmpty) {
                        EasyLoading.showError("option_required".tr());
                        return;
                      }
                      Set<String> searchCase = _titleController.text
                          .trim()
                          .toLowerCase()
                          .getSearchParam(false)
                          .toSet()
                        ..addAll((_tagsController.text.trim().contains("#")
                                ? RegExp(r"\B(\#[a-zA-Z]+\b)")
                                    .allMatches(_tagsController.text.trim())
                                    .map((e) => e[0] != null
                                        ? e[0]!
                                            .substring(1, e[0]!.length)
                                            .toLowerCase()
                                        : "")
                                    .toList()
                                : [("product".tr().toLowerCase())])
                            .join("")
                            .getSearchParam(true)
                            .toSet());
                      p(searchCase);

                      Set<String> badgesIds = {};
                      for (var element in options) {
                        badgesIds.addAll(element.badgesIds?.toSet()??{});
                      }
                      ProductDetailModel productDetailModel =
                          widget.product ?? ProductDetailModel();
                      productDetailModel = productDetailModel.rebuild((p0) => p0
                      ..badgesIds = badgesIds.toBuiltList().toBuilder()
                        ..title = _titleController.text.trim()
                        ..tags = (_tagsController.text.trim().contains("#")
                                ? RegExp(r"\B(\#[a-zA-Z]+\b)")
                                    .allMatches(_tagsController.text.trim())
                                    .map((e) =>
                                        e[0] ??
                                        "#${"market".tr().toLowerCase()}")
                                    .toList()
                                : ["#${"market".tr().toLowerCase()}"])
                            .build()
                            .toBuilder()
                        ..filter = (_selectedFilter.isEmpty
                                ? ['not_dead']
                                : _selectedFilter)
                            .build()
                            .toBuilder()
                        ..index =
                            widget.product != null ? widget.product!.index : 0
                        ..marketsUid = selectedMarket
                            .map((e) => e.uid??"")
                            .toBuiltList()
                            .toBuilder()
                        ..caseSearch = searchCase.toBuiltList().toBuilder()
                        ..options = options.toBuiltList().toBuilder()
                        ..uid = (p0.uid ?? const Uuid().v4())
                        ..subcategoryIds = _selectedSubCategories
                            .map((e) => e.uid ?? "")
                            .toBuiltList()
                            .toBuilder()
                        ..createAt = (p0.createAt ??
                            DateTime.now().toUtc().toIso8601String())..isService = tabBarIndex==1);
                      context.read<ProductBloc>().add(
                          ProductEvent.createProduct(
                              product: productDetailModel));
                    } else {
                      EasyLoading.showError("have_an_account".tr());
                    }
                  },
                  title: tabBarIndex==0 ?
                  widget.product != null
                      ? "update_product".tr()
                      : "create_product".tr() : widget.product != null
                      ? "update_service".tr()
                      : "create_service".tr(),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 8.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      height: 42,
                      child: CupertinoTabBar(
                        colors.lightTextBody,
                        colors.backgroundColor,
                        [
                          Text(
                            "product".tr(),
                            style: tabBarIndex == 0
                                ? fonts.subtitle2
                                : fonts.bodyText2,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "service".tr(),
                            style: tabBarIndex == 1
                                ? fonts.subtitle2
                                : fonts.bodyText2,
                            textAlign: TextAlign.center,
                          ),
                        ],
                            () {
                          return tabBarIndex;
                        },
                            (int index) {
                          setState(() {
                            tabBarIndex =index;
                          });
                        },
                        borderRadius: BorderRadius.circular(14.r),
                        innerBorderRadius:
                        BorderRadius.circular(12.r),
                        allowExpand: true,
                        useSeparators: false,
                        allowScrollable: false,
                        fittedWhenScrollable: false,
                        animateWhenScrollable: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 8.h, left: 16.w, bottom: 3.h, right: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h),
                        StatefulBuilder(builder: (context, stateSet) {
                          return CustomTextField(
                            error: (_titleController.text.isEmpty && emptyTitle)
                                ? "title_required".tr()
                                : null,
                            onChanged: (String text) {
                              stateSet(() {});
                            },
                            controller: _titleController,
                            hintText: "product_title_hint".tr(),
                            title: "title".tr(),
                            maxLines: 2,
                            maxLength: 200,
                          );
                        }),
                        SizedBox(height: 8.h),
                       Column(
                         children: [
                           CustomTextField(
                             readOnly: true,
                             onPressed: () => _selectMarkets(context),
                             hintText: "select_market".tr(),
                             title: "markets".tr(),
                             maxLines: 1,
                             suffixIcon: SvgPicture.asset(icons.arrowRight),
                             // onSuffixIconPressed: () =>
                             //     _selectMarkets(context),
                           ),
                           SizedBox(
                             height: 4.h,
                           ),
                           Wrap(
                             children: selectedMarket
                                 .map((e) => Padding(
                               padding:
                               EdgeInsets.symmetric(horizontal: 4.w),
                               child: Chip(
                                 onDeleted: () {
                                   selectedMarket.remove(e);
                                   setState(() {});
                                 },
                                 label: Text(
                                   e.title ?? "",
                                   style: fonts.bodyText1
                                       .copyWith(color: colors.text),
                                 ),
                               ),
                             ))
                                 .toList(),
                           ),
                           SizedBox(height: 8.h),
                         ],
                       ),
                        StatefulBuilder(builder: (context, stateSet) {
                          return CustomTextField(
                            onChanged: (String text) {
                              stateSet(() {});
                            },
                            controller: _tagsController,
                            hintText: "tags_hint".tr(),
                            title: "tags".tr(),
                            maxLines: 10,
                            maxLength: 300,
                          );
                        }),
                        SizedBox(height: 8.h),
                        CustomTextField(
                          readOnly: true,
                          onPressed: () => _selectSubCategories(context),
                          hintText: "select_subcategory".tr(),
                          title: "subcategory".tr(),
                          maxLines: 1,
                          suffixIcon: SvgPicture.asset(icons.arrowRight),
                          onSuffixIconPressed: () =>
                              _selectSubCategories(context),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Wrap(
                          children: _selectedSubCategories
                              .map((e) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    child: Chip(
                                      onDeleted: () {
                                        _selectedSubCategories.remove(e);
                                        setState(() {});
                                      },
                                      label: Text(
                                        e.title ?? "",
                                        style: fonts.bodyText1
                                            .copyWith(color: colors.text),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        CustomTextField(
                          readOnly: true,
                          onPressed: () => _selectFilter(context),
                          hintText: "select_filter".tr(),
                          title: "filter".tr(),
                          maxLines: 1,
                          suffixIcon: SvgPicture.asset(icons.arrowRight),
                          onSuffixIconPressed: () => _selectFilter(context),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Wrap(
                          children: _selectedFilter
                              .map((e) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    child: Chip(
                                      onDeleted: () {
                                        _selectedFilter.remove(e);
                                        setState(() {});
                                      },
                                      label: Text(
                                        e.tr(),
                                        style: fonts.bodyText1
                                            .copyWith(color: colors.text),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  options.isEmpty
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: CustomTextField(
                            readOnly: true,
                            onPressed: () =>
                                createOption(null, state.components),
                            hintText: "create_options".tr(),
                            title: "options".tr(),
                            maxLines: 1,
                            suffixIcon: SvgPicture.asset(icons.arrowRight),
                            onSuffixIconPressed: () =>
                                createOption(null, state.components),
                          ),
                        )
                      : OptionWidget(
                    isCreate: true,
                          changeIndex: (index) {
                            setState(() {
                              optionIndex = index;
                            });
                          },
                          selectedIndex: optionIndex,
                          options: options,
                          onAdd: () => createOption(null, state.components),
                          onEdit: (Option option) =>
                              createOption(option, state.components),
                          onRemove: (Option option) {
                            setState(() {
                              options.remove(option);
                              optionIndex--;
                            });
                          },
                        ),
                  SizedBox(height: 30.h),
                ]),
          ),
        );
      });
    });
  }
}
