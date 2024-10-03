import 'package:couriers/utils/custom_button.dart';
import 'package:couriers/utils/navigator.dart';

import '../../import/common_imports.dart';
import '../ca15_add_review/ca15_add_review_screen.dart';

class CA14SeeReviewScreen extends StatelessWidget {
  const CA14SeeReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  const HeaderWithArrow(title: "Ahmad Shehab "),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CustomText(
                            text: "530",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: "Orders",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.w),
                        height: 50.h,
                        width: 1.w,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: "4.5",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: "Out of 5",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  CustomButtonFilled(
                    title: "Add Review",
                    titleSize: 14.sp,
                    titleWight: FontWeight.w400,
                    width: 164.w,
                    onTap: () => customNavigator(context, const CA15AddReviewScreen()),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 14,
                separatorBuilder: (context, index) => const SizedBox(height: 0),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Helene Moore",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: k444444,
                          ),
                          Row(
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star_rate_rounded,
                                size: 14.sp,
                                color: kF9BC2F,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          CustomText(
                            wordSpacing: 5.w,
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: k222222,
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 15.h)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
