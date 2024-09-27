import '../../import/common_imports.dart';

class UpperPartCA03 extends StatelessWidget {
  const UpperPartCA03({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Ships From:",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 5.h),
            Expanded(
              child: Wrap(
                spacing: 5.w,
                runSpacing: 5.w,
                children: List.generate(
                    4,
                    (index) => IntrinsicWidth(
                          child: Container(
                            height: 35.h,
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
                          ),
                        )),
              ),
            )
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Ships To:",
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 5.h),
            Expanded(
              child: Wrap(
                spacing: 5.w,
                runSpacing: 5.w,
                children: List.generate(
                    7,
                    (index) => IntrinsicWidth(
                          child: Container(
                            height: 35.h,
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
                          ),
                        )),
              ),
            )
          ],
        ),
        SizedBox(height: 20.h),
        CustomText(
          text: "Working Days:",
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
