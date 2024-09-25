import 'package:couriers/import/common_imports.dart';
import '../../utils/header_text.dart';
import 'components/upper_part_of_screen.dart';

class CaptainsScreen extends StatelessWidget {
  const CaptainsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: SafeArea(
        child: Column(
          children: [
            const HerderText(text: "Captains"),
            const UpperPart(),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView.separated(
                itemCount: 14,
                separatorBuilder: (context, index) => const Divider(height: 0),
                itemBuilder: (context, index) => Container(
                  color: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Ahmad Shehab (211 Orders)",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "From: Amman",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: k9B9FA5,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "To: Irbid, Jerash, Ajloun",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: k9B9FA5,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "Next Pick-Up: 18/09/2024",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: k9B9FA5,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "4.5 Out of 5",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            color: kGreen,
                          ),
                          SizedBox(height: 5.h),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 76.w,
                            child: CustomText(
                              text: "View Prices & More",
                              textAlign: TextAlign.center,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: kRed,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: kRed,
                            size: 20.r,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
