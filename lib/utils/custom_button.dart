import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/colors.dart';
import 'custom_text.dart';

class CustomButtonFilled extends StatelessWidget {
  final String? title;
  final double? height;
  final double? width;
  final Color? color;
  final Color? titleColor;
  final double? titleSize;
  final FontWeight? titleWight;
  final void Function()? onTap;
  final Widget? child;
  const CustomButtonFilled(
      {super.key,
      this.title,
      this.height,
      this.width,
      this.color,
      this.titleColor,
      this.titleSize,
      this.titleWight,
      this.onTap,
      this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 40.h,
        width: width,
        decoration: BoxDecoration(
          color: kRed,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: title != null
              ? CustomText(
                  text: title!,
                  color: titleColor ?? Colors.white,
                  fontSize: titleSize ?? 20.sp,
                  fontWeight: titleWight ?? FontWeight.w700,
                )
              : child,
        ),
      ),
    );
  }
}

class CustomButtonWithBorder extends StatelessWidget {
  final String? title;
  final double? height;
  final double? width;
  final Color? color;
  final Color? titleColor;
  final double? titleSize;
  final FontWeight? titleWight;
  final void Function()? onTap;
  final Widget? child;
  const CustomButtonWithBorder(
      {super.key,
      this.title,
      this.height,
      this.width,
      this.color,
      this.titleColor,
      this.titleSize,
      this.titleWight,
      this.onTap,
      this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 40.h,
        width: width,
        decoration: BoxDecoration(
          // color: kRed,
          border: Border.all(color: kRed),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: title != null
              ? CustomText(
                  text: title!,
                  color: titleColor ?? kRed,
                  fontSize: titleSize ?? 20.sp,
                  fontWeight: titleWight ?? FontWeight.w400,
                )
              : child,
        ),
      ),
    );
  }
}
