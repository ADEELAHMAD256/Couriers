import 'package:couriers/view/advance_filter/advance_filter_screen.dart';

import '../../../import/common_imports.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
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
          Row(
            children: [
              SvgPicture.asset("assets/icons/f2.svg"),
              CustomText(
                text: "Clear Filters",
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: kRed,
                decoration: TextDecoration.underline,
                decorationColor: kRed,
              ),
              const Spacer(),
              SvgPicture.asset("assets/icons/f1.svg"),
              GestureDetector(
                onTap: () => Get.to(AdvanceFilterScreen()),
                child: CustomText(
                  text: "Advanced Filters",
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: kRed,
                  decoration: TextDecoration.underline,
                  decorationColor: kRed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
