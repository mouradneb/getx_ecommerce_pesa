import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce_pesa/core/view_model/auth_view_model.dart';
import 'package:getx_ecommerce_pesa/view/widgets/custom_button.dart';
import 'package:getx_ecommerce_pesa/view/widgets/custom_button_social.dart';
import 'package:getx_ecommerce_pesa/view/widgets/custom_text.dart';
import 'package:getx_ecommerce_pesa/view/widgets/custom_text_form_field.dart';

import '../../constants.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, right: 20.w, left: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Welcome,", fontSize: 30.sp),
                  CustomText(
                      text: "Sign Up", color: primaryColor, fontSize: 18.sp),
                ],
              ),
              SizedBox(height: 10.h),
              CustomText(
                  text: "Sign in to Continue",
                  color: Colors.grey,
                  fontSize: 14.sp),
              SizedBox(height: 30.h),
              CustomTextFormField(
                  text: "Email",
                  hint: "mourad.nebhi@gmail.com",
                  onSaved: (value) {},
                  validator: (value) {}),
              SizedBox(height: 40.h),
              CustomTextFormField(
                  text: "Password",
                  hint: "********************",
                  onSaved: (value) {},
                  validator: (value) {}),
              SizedBox(height: 20.h),
              CustomText(
                text: "Forgot password ?",
                fontSize: 14.sp,
                alignment: Alignment.topRight,
              ),
              SizedBox(height: 20.h),
              CustomButton(
                onPressed: () {},
                text: "SIGN IN",
              ),
              SizedBox(height: 40.h),
              CustomText(
                text: '-OR-',
                alignment: Alignment.center,
              ),
              SizedBox(height: 30.h),
              CustomButtonSocial(
                text: "Sign in with Facebook",
                imageName: "assets/images/facebook.png",
                onPressed: () {},
              ),
              CustomButtonSocial(
                text: "Sign in with Google",
                imageName: "assets/images/google.png",
                onPressed: () {
                  controller.googleSignInMethod();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
