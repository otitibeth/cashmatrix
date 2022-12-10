import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      this.fillColor,
      required this.hint,
      this.keyboardType,
      this.obscure,
      this.textInputAction,
      this.suffixIcon});
  final String hint;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final bool? obscure;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 63.h,
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Pallete.primary,
              ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8.sp, right: 1.sp),
          child: TextFormField(
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            obscureText: obscure!,
            style: TextStyle(fontFamily: 'DM Sans', fontSize: 16.sp),
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              contentPadding: REdgeInsets.only(left: 22.sp, top: 14.sp),
              hintText: hint,
              hintStyle: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 16.sp,
                  color: Pallete.darkBlue),
              filled: true,
              fillColor: fillColor ?? Pallete.textformFill,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(ScreenUtil().radius(15)),
                  borderSide:
                      const BorderSide(color: Pallete.textformFill, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(ScreenUtil().radius(15)),
                  borderSide: BorderSide(
                      color: fillColor ?? Pallete.texformtBorder, width: 1)),
            ),
          ),
        ),
      ),
    );
  }
}
