import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:cashmatrix/views/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Splash extends StatelessWidget {
  const Splash(
      {super.key,
      required this.image,
      required this.controller,
      required this.color,
      required this.titleTextColor,
      required this.buttonColor,
      required this.activeDotColor,
      required this.onButtonTapped});
  final String image;
  final PageController controller;
  final Color color;
  final Color titleTextColor;
  final Color buttonColor;
  final Color activeDotColor;
  final VoidCallback onButtonTapped;

  @override
  Widget build(BuildContext context) {
//     void onAddButtonTapped(int index) {

//   // use this to animate to the page
//   controller.animateToPage(index);

//   // or this to jump to it without animating
//   pageController.jumpToPage(index);
// }
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 104.sp,
          left: 10.sp,
          child: SizedBox(
              width: 211.sp,
              height: 47.sp,
              child: Image.asset(
                'assets/images/logo2.png',
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.only(top: 11.sp, left: 48.sp),
            width: 333.w,
            height: 220.h,
            decoration: BoxDecoration(
                color: color,
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(70))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                      dotHeight: ScreenUtil().setHeight(8),
                      dotWidth: ScreenUtil().setWidth(16),
                      dotColor: Pallete.lightYellow,
                      activeDotColor: activeDotColor,
                      expansionFactor: 2,
                      spacing: ScreenUtil().setWidth(5)),
                  onDotClicked: (index) {},
                ),
                SizedBox(height: 20.h),
                Text(
                  'Transfer That Is Safe',
                  style: TextStyle(
                      color: titleTextColor,
                      fontSize: 18.sp,
                      fontFamily: 'Object Sans',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 241.w,
                  child: Text(
                    'You have nothing to be scared about, we got you covered',
                    style: TextStyle(
                        color: Pallete.white,
                        fontSize: 16.sp,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Container(
                      width: 145.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            'Start banking',
                            style: TextStyle(
                                color: Pallete.darkBlue,
                                fontSize: 16.sp,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          // onButtonTapped();
                        },
                        child:
                            SvgPicture.asset('assets/svgs/arrow_forward.svg')),
                    SizedBox(
                      width: 10.w,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
