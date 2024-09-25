import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextDecoration? decoration;
  final Color? decorationColor; // New parameter for decoration color

  const CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.textDirection,
    this.decoration,
    this.decorationColor, // Add this to the constructor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      textDirection: textDirection,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        decorationColor:
            decorationColor, // Add this line to apply the decoration color
      ),
    );
  }
}

// Example usage:
// CustomText(
//   text: "All Shipments",
//   decoration: TextDecoration.underline,
//   decorationColor: Colors.red,  // Set underline color to red
//   fontSize: 12.sp,
//   fontWeight: FontWeight.w500,
//   color: kDF2429,
// )
