import 'package:couriers/import/common_imports.dart';
import '../../utils/custom_search_bar.dart';

class CA11ShipmentSummary extends StatelessWidget {
  const CA11ShipmentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            const HeaderWithArrowWithActions(
              title: "Ahmad Shehab",
              subTitle: "Shipment Summary",
              assetName: "assets/icons/arrow_box.svg",
              isNavigate: true,
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: ListView.separated(
                itemCount: 14,
                separatorBuilder: (context, index) => Divider(height: 0, color: kD7D7D7),
                itemBuilder: (context, index) => Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Ahmad",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "#26845612236 ",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: k9B9FA5,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "To: Irbid",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: k9B9FA5,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "Value: 90 JD",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: k9B9FA5,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            text: "Scheduled on: 2024/09/25",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: k9B9FA5,
                          ),
                          SizedBox(height: 5.h),
                        ],
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: "Details",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: kRed,
                          ),
                          SizedBox(width: 10.w),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: kRed,
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
