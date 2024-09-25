import 'package:couriers/import/common_imports.dart';

class FilterTextFields extends StatelessWidget {
  final String hintText;
  final String icon;
  const FilterTextFields({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 20.h),
        hintText: hintText,
        hintStyle: TextStyle(color: k7F7F7F),
        prefixIcon: Padding(
          padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
          child: SvgPicture.asset(icon),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.r),
          borderSide:
              BorderSide(color: k7F7F7F, width: 1.0), // Light gray border
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0.r),
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
