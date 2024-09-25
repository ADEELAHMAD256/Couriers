import 'package:couriers/import/common_imports.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  const CustomSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: k7F7F7F, fontSize: 12.sp),
        prefixIcon: Icon(
          Icons.search,
          color: k7F7F7F,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(
              color: Colors.grey[100]!, width: 1.0), // Light gray border
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(
              color: Colors.grey[100]!,
              width: 1), // Light gray border when focused
        ),
        filled: true,
        fillColor: Colors.white, // White fill color
      ),
    );
  }
}
