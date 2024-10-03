import '../import/common_imports.dart';

class HerderText extends StatelessWidget {
  final String text;
  const HerderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      textAlign: TextAlign.center,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
    );
  }
}
