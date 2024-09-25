import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final Color? color;
  final Color? titleColor;
  final double? titleSize;
  final FontWeight? titleWight;
  final void Function()? onTap;
  const CustomButton(
      {super.key,
      required this.title,
      this.height,
      this.width,
      this.color,
      this.titleColor,
      this.titleSize,
      this.titleWight,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: CustomText(
            text: title,
            color: titleColor ?? Colors.white,
            fontSize: titleSize ?? 20.sp,
            fontWeight: titleWight ?? FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
