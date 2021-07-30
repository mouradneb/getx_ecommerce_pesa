import 'package:flutter/material.dart';
import 'package:getx_ecommerce_pesa/types.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final VoidFunctionString onSaved;
  final StringFunctionString validator;

  CustomTextFormField(
      {this.text = '',
      this.hint = '',
      required this.onSaved,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(text: text, fontSize: 14, color: Colors.grey.shade900),
          TextFormField(
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey),
                fillColor: Colors.white),
          )
        ],
      ),
    );
  }
}
