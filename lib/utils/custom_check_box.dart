import '../import/common_imports.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final String label;
  const CustomCheckBox({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20.h,
          width: 20.w,
          decoration: BoxDecoration(
            color: value ? kRed : Colors.transparent,
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: kRed),
          ),
          child: Icon(
            Icons.check,
            size: 15.r,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 15.w),
        CustomText(text: label, fontSize: 12.sp),
      ],
    );
  }
}
