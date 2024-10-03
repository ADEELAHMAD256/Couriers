import 'package:couriers/utils/custom_button.dart';
import 'package:couriers/utils/custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../import/common_imports.dart';
import '../si03_otp/si03_otp_screen.dart';

class SI01SignInScreen extends StatelessWidget {
  const SI01SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 160.h),
                    Center(
                      child: SvgPicture.asset(
                        "assets/icons/bird.svg",
                        height: 73.h,
                      ),
                    ),
                    SizedBox(height: 85.h),
                    CustomText(
                      text: "Sign In Now",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: 30.h),
                    CustomText(
                      text: "Phone Number",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    PhoneNumberTextField(
                      height: 45.h,
                      icon: "assets/icons/flag.svg",
                      hintText: "79*******",
                    ),
                    const Spacer(),
                    CustomButtonFilled(
                      height: 58.h,
                      title: "Sign In",
                      onTap: () => Get.to(SI03OTPScreen()),
                    ),
                    SizedBox(height: 37.h),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account? ',
                              style: GoogleFonts.montserrat(fontSize: 14.sp),
                            ),
                            TextSpan(
                              text: 'Create New',
                              style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: kRed, fontSize: 14.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 70.h)
                  ],
                ).paddingSymmetric(horizontal: 30.w),
              ),
            ),
          );
        }),
      ),
    );
  }
}
