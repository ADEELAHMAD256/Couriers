import 'package:couriers/utils/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../import/common_imports.dart';
import '../../utils/navigator.dart';
import '../ca16_address_details/ca16_address_details_screen.dart';

class CA15AddReviewScreen extends StatelessWidget {
  const CA15AddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 50.h),
                    CustomText(
                      text: "Rate:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 12.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star_rate_rounded,
                          size: 37.sp,
                          color: kF9BC2F,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.h),
                    CustomText(
                      text: "Review (optional):",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 5.h),
                    TextField(
                      maxLines: 8, // Allows multiline input
                      decoration: InputDecoration(
                        hintText: 'Write Your Review Here ...',
                        contentPadding: EdgeInsets.all(10.0.r),
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.grey[500],
                          fontSize: 12.sp,
                        ), // Hint text color
                        filled: true,
                        fillColor: Colors.white, // Background color of the field
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r), // Rounded edges
                          borderSide: BorderSide(width: 0.5.w, color: Colors.red), // No visible border
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomButtonFilled(
                      title: "Next",
                      height: 58.h,
                      onTap: () {
                        // customNavigator(context, const CA16AddressDetailsScreen());
                      },
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
