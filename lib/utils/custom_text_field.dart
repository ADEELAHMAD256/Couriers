import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.textCapitalization,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: keyboardType ?? TextInputType.text,
      textCapitalization: textCapitalization ?? TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.zero),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

class TextFieldWithTitle extends StatelessWidget {
  final String hintText;
  final String title;
  final double? space;
  final TextInputType? keyboardType;

  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  const TextFieldWithTitle({
    super.key,
    required this.hintText,
    this.textCapitalization,
    this.controller,
    required this.title,
    this.space,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          fontSize: 16.sp,
        ),
        SizedBox(
          height: 30.h,
          child: CustomTextField(
            hintText: hintText,
            textCapitalization: textCapitalization,
            controller: controller,
            keyboardType: keyboardType,
          ),
        ),
        SizedBox(height: space ?? 10.h),
      ],
    );
  }
}
