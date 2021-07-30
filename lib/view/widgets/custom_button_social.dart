import 'package:flutter/material.dart';
import 'package:getx_ecommerce_pesa/types.dart';
import 'package:getx_ecommerce_pesa/view/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final VoidFunction onPressed;

  CustomButtonSocial(
      {required this.text, required this.imageName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset(imageName, height: 24.h),
            SizedBox(width: 70.w),
            CustomText(text: text) //"Sign in with Google"
          ],
        ),
        /*style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
          side: MaterialStateProperty.all(BorderSide(color: Colors.black)),
        ),*/
      ),
    );
  }
}
