import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_servis/presentation/component/custom_button.dart';
import 'package:i_servis/presentation/pages/auth/onboarding/onboarding_type.dart';
import 'package:i_servis/presentation/styles/theme_wrapper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../styles/theme.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;

  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme controller) {
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(height: kToolbarHeight / 1.5),

              /// Button
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: SizedBox(
                    width: 100.w,
                    child: CustomButton(
                      onPressed: () {},
                      verticalPadding: 8.h,
                      borderRadius: 100,
                      title: 'next'.tr(),
                      backgroundColor: colors.lightGreen,
                      titleColor: colors.text,
                    ),
                  ),
                ),
              ),

              /// Image
              SizedBox(
                height: 1.sh * 0.55,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _selectedPage = index;
                      _pageController.animateToPage(_selectedPage,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    });
                  },
                  children: List.generate(
                    3,
                    (index) => Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                          OnBoardingType.onBoarding[index]['image']!),
                    ),
                  ),
                ),
              ),

              /// Indicator
              Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: WormEffect(
                    dotColor: colors.secondary,
                    activeDotColor: colors.primary,
                    dotHeight: 8.r,
                    dotWidth: 8.r,
                  ),
                ),
              ),
              SizedBox(height: 28.h),

              /// title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Text(
                  OnBoardingType.onBoarding[_selectedPage]['title']!,
                  textAlign: TextAlign.center,
                  style: fonts.headline3
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 30.sp),
                ),
              ),
              SizedBox(height: 10.h),

              /// Subtitle
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  OnBoardingType.onBoarding[_selectedPage]['subtitle']!,
                  textAlign: TextAlign.center,
                  style: fonts.subtitle1,
                ),
              ),

              SizedBox(height: 24.h),

              /// Next Button
              _selectedPage == 2
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 102.w),
                      child: CustomButton(
                        onPressed: () {},
                        title: "enter".tr(),
                        backgroundColor: colors.primary,
                        titleColor: colors.white,
                        borderRadius: 8.r,
                        verticalPadding: 12.h,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        if (_selectedPage != 2) {
                          setState(() {
                            _selectedPage += 1;
                            _pageController.animateToPage(_selectedPage,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease);
                          });
                        }
                      },
                      child: Container(
                        width: 48.r,
                        height: 48.r,
                        decoration: BoxDecoration(
                          color: colors.primary,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Icon(Icons.keyboard_arrow_right,
                            color: colors.white, size: 24.r),
                      ),
                    )
            ],
          ),
        );
      },
    );
  }
}
