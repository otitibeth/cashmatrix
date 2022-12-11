import 'dart:async';

import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:cashmatrix/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, SplashScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 355.h),
          Center(
            child: SizedBox(
              height: 185.h,
              width: 263.w,
              child: Image.asset('assets/images/logo1.png'),
            ),
          ),
          const Spacer(),
          Text(
            'Powered by Assetmatrix MFB',
            style: TextStyle(
                fontFamily: 'Object Sans',
                color: Pallete.primary,
                fontSize: 18.sp,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 59.h)
        ],
      ),
    );
  }
}
