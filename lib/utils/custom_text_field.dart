import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../const/colors.dart';
import 'custom_text.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? icon;
  final Color? borderColor;
  final TextInputType? keyboardType;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.borderColor,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 20.h, left: 15.w),
          hintText: hintText,
          hintStyle: TextStyle(color: k7F7F7F),
          prefixIcon: icon != null
              ? Padding(
                  padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                  child: SvgPicture.asset(icon!),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0.r),
            borderSide: BorderSide(color: borderColor ?? k7F7F7F, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0.r),
            borderSide: BorderSide(color: borderColor ?? k7F7F7F, width: 1),
          ),
          filled: true,
          fillColor: Colors.white, // White fill color
        ),
      ),
    );
  }
}

class PhoneNumberTextField extends StatelessWidget {
  final String? hintText;
  final String? icon;
  final Color? borderColor;
  final double? height;
  const PhoneNumberTextField({
    super.key,
    this.hintText,
    this.icon,
    this.borderColor,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 55.h,
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 20.h, left: 15.w),
          hintText: hintText ?? "",
          hintStyle: TextStyle(color: k7F7F7F),
          prefixIcon: icon != null
              ? Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 15.w),
                      SvgPicture.asset(icon!),
                      SizedBox(width: 5.w),
                      CustomText(
                        text: "+962",
                        color: Colors.black.withOpacity(0.55),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        height: double.maxFinite,
                        width: 1.w,
                        color: Colors.black.withOpacity(0.45),
                      ),
                      SizedBox(width: 10.w)
                    ],
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0.r),
            borderSide: BorderSide(color: borderColor ?? k7F7F7F, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0.r),
            borderSide: BorderSide(color: borderColor ?? k7F7F7F, width: 1),
          ),
          filled: true,
          fillColor: Colors.white,
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
        SizedBox(height: 20.w),
        Row(
          children: [
            SizedBox(
              width: 130.w,
              child: CustomText(
                text: title,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 11.w),
            Expanded(
              child: CustomTextField(
                hintText: hintText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
