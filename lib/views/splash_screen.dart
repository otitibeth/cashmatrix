import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:cashmatrix/views/login_screen.dart';
import 'package:cashmatrix/widgets/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/splashscreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _selectedIndex = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onPageChanged(int currentIndex) {
    setState(() {
      _selectedIndex = currentIndex;
    });
  }

  void onButtonTapped(int page) {
    controller.jumpToPage(page);
    setState(() {
      _selectedIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: onPageChanged,
        children: [
          Splash(
            image: 'assets/images/splash1.png',
            controller: controller,
            color: Pallete.primary,
            titleTextColor: Pallete.darkBlue,
            buttonColor: Pallete.white,
            activeDotColor: Pallete.blue,
            onButtonTapped: () {
              onPageChanged(1);
            },
          ),
          Splash(
            image: 'assets/images/splash2.png',
            controller: controller,
            color: Pallete.darkBlue,
            titleTextColor: Pallete.primary,
            buttonColor: Pallete.primary,
            activeDotColor: Pallete.primary,
            onButtonTapped: () {
              onPageChanged(2);
            },
          ),
          Splash(
            image: 'assets/images/splash3.png',
            controller: controller,
            color: Pallete.primary,
            titleTextColor: Pallete.darkBlue,
            buttonColor: Pallete.white,
            activeDotColor: Pallete.blue,
            onButtonTapped: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          )
        ],
      ),
    );
  }
}
