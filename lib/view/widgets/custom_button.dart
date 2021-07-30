import 'package:flutter/material.dart';
import 'package:getx_ecommerce_pesa/constants.dart';
import 'package:getx_ecommerce_pesa/types.dart';
import 'package:getx_ecommerce_pesa/view/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidFunction onPressed;

  CustomButton({this.text = '', required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: CustomText(
        text: text,
        alignment: Alignment.center,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        primary: primaryColor,
      ),
    );
    /*return TextButton(
      onPressed: onPressed,
      child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(18)),
        backgroundColor: MaterialStateProperty.all(primaryColor),
        alignment: Alignment.center,
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );*/
  }
}
