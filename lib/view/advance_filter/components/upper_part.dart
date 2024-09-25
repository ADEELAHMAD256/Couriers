import 'package:couriers/import/common_imports.dart';

class UpperPartFilter extends StatelessWidget {
  const UpperPartFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Row(
          children: [
            CustomText(
              text: "From:",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 5.h),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      4,
                      (index) => Container(
                            height: 35.h,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                border: Border.all(color: kRed)),
                            child: Center(
                              child: CustomText(
                                text: "Ajloun",
                                fontSize: 14.sp,
                                color: kRed,
                              ),
                            ),
                          )),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            CustomText(
              text: "To:",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 5.h),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      4,
                      (index) => Container(
                            height: 35.h,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                border: Border.all(color: kRed)),
                            child: Center(
                              child: CustomText(
                                text: "Ajloun",
                                fontSize: 14.sp,
                                color: kRed,
                              ),
                            ),
                          )),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 17.h),
      ],
    );
  }
}
