import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:cashmatrix/views/home_screen.dart';
import 'package:cashmatrix/widgets/custom_button.dart';
import 'package:cashmatrix/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.scaffold,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 154.h),
                Center(
                  child: SizedBox(
                      width: 274.sp,
                      height: 61.sp,
                      child: Image.asset(
                        'assets/images/logo2.png',
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(height: 94.h),
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: 35.sp,
                      color: Pallete.darkBlue),
                ),
                SizedBox(height: 24.h),
                const CustomInput(
                    hint: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    obscure: false),
                SizedBox(
                  height: 30.h,
                ),
                CustomInput(
                  hint: 'Password',
                  // fillColor: Pallete.textformFill2,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  obscure: _obscureText,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Pallete.obscure,
                      )),
                ),
                SizedBox(height: 19.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Pallete.primary,
                        fontFamily: 'DM Sans',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.h),
                CustomButton(onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Homescreen()));
                }),
                SizedBox(height: 38.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? - ',
                      style: TextStyle(
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp),
                    ),
                    Text(
                      'Create Account',
                      style: TextStyle(
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                          color: Pallete.primary),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
