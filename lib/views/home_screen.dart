import 'package:cashmatrix/helpers/actions_list.dart';
import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:cashmatrix/widgets/quick_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final controller = PageController(initialPage: 0, viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 86.sp, left: 23.sp, right: 33.sp),
            child: Row(
              children: [
                SvgPicture.asset('assets/svgs/person.svg'),
                const Spacer(),
                SvgPicture.asset('assets/svgs/notif.svg'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.sp, left: 40.sp),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 175.h,
                child: Row(
                  children: [
                    Image.asset('assets/images/card.png'),
                    SizedBox(width: 9.w),
                    Image.asset('assets/images/card.png'),
                    SizedBox(width: 23.w),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.sp,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 2,
            effect: ExpandingDotsEffect(
                dotHeight: 4.sp,
                dotWidth: 16.sp,
                dotColor: Pallete.blue,
                activeDotColor: Pallete.yellow,
                expansionFactor: 3,
                spacing: ScreenUtil().setWidth(5.14)),
            onDotClicked: (index) {},
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.sp, left: 23.sp, bottom: 26.sp),
            child: Row(
              children: [
                Text(
                  'Quick Actions',
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w700,
                      color: Pallete.primary),
                ),
              ],
            ),
          ),
          // QuickActionsWidget(actions: actionsList[1]),
          Padding(
            padding: EdgeInsets.only(left: 23.sp, right: 33.sp),
            child: SizedBox(
              height: 193.h,
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: actionsList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3 / 2,
                      crossAxisCount: 3,
                      mainAxisSpacing: 40.h,
                      crossAxisSpacing: 17.w),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: QuickActionsWidget(actions: actionsList[index]));
                  }),
            ),
          ),
          SizedBox(height: 123.h),
          Container(
            alignment: Alignment.center,
            width: 354.w,
            height: 108.h,
            color: Pallete.adPoster,
            child: Text(
              'Ads Poster',
              style: TextStyle(
                  fontSize: 31.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'DM Sans',
                  color: Pallete.primary),
            ),
          ),
          SizedBox(height: 17.h),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Pallete.darkBlue,
          selectedItemColor: Pallete.darkBlue,
          selectedLabelStyle: TextStyle(
              color: Pallete.darkBlue,
              fontSize: 14.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400),
          unselectedFontSize: 14.sp,
          unselectedLabelStyle: TextStyle(
              color: Pallete.darkBlue,
              fontSize: 14.sp,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/home.svg'), label: 'Home'),
            BottomNavigationBarItem(
                icon: SizedBox(
                    height: 50.h,
                    width: 50.w,
                    child: Image.asset('assets/images/transaction.png')),
                label: 'Transaction'),
            BottomNavigationBarItem(
                icon: SizedBox(
                    height: 50.h,
                    width: 50.w,
                    child: Image.asset('assets/images/profile.png')),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/contact.svg'),
                label: 'Contact'),
          ]),
    );
  }
}
