import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 63.h,
        decoration: BoxDecoration(
            color: Pallete.primary, borderRadius: BorderRadius.circular(15)),
        child: Text(
          'Sign in My Account',
          style: TextStyle(
            color: Pallete.white,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
