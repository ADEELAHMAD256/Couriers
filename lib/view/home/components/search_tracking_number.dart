import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class SearchTrackingNumber extends StatelessWidget {
  const SearchTrackingNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Tracking Number Or Recipient’s Name',
        hintStyle: TextStyle(color: k7F7F7F),
        prefixIcon: Icon(
          Icons.search,
          color: k7F7F7F,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(
              color: Colors.grey[300]!, width: 1.0), // Light gray border
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(
              color: Colors.grey[300]!,
              width: 1), // Light gray border when focused
        ),
        filled: true,
        fillColor: Colors.white, // White fill color
      ),
    );
  }
}
