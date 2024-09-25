import 'package:couriers/import/common_imports.dart';

class ShipmentsText extends StatelessWidget {
  const ShipmentsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: "Latest Shipments",
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        CustomText(
          text: "All Shipments",
          decoration: TextDecoration.underline,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: kRed,
          decorationColor: kRed,
        )
      ],
    );
  }
}
