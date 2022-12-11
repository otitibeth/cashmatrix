import 'package:cashmatrix/helpers/app_colors.dart';
import 'package:cashmatrix/models/actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({
    super.key,
    required this.actions,
  });
  final QuickActions actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.sp),
      width: 108.w,
      height: 54.h,
      decoration: BoxDecoration(
          color: Pallete.actions, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            height: 32.h,
            width: 32.w,
            child: Image.asset(actions.image),
          ),
          SizedBox(width: 3.w),
          Container(
            alignment: Alignment.centerLeft,
            width: 58.w,
            height: 54.h,
            child: Text(
              actions.name,
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: Pallete.blue),
            ),
          )
        ],
      ),
    );
  }
}
