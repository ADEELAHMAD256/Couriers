import 'package:couriers/import/common_imports.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/custom_button.dart';

class CA13CheckOutSuccess extends StatelessWidget {
  const CA13CheckOutSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 37.h),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back_ios),
              ),
              SizedBox(height: 120.h),
              Center(child: SvgPicture.asset("assets/icons/success.svg")),
              SizedBox(height: 99.h),
              Center(
                child: CustomText(
                  text: "Your payment has been processed successfully!",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 15.h),
              Center(
                child: CustomText(
                  textAlign: TextAlign.center,
                  text: "We have sent a link to your customers to confirm their address and complete any required payments",
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 30.h),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.montserrat(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Shipments are not placed for captains until customers confirm their locations and complete any required payments. Once your customer confirms and completes payments, we will notify you, or you can check the status of this and all of your other shipments in the',
                      style: GoogleFonts.montserrat(color: Colors.black, fontSize: 12.sp),
                    ),
                    TextSpan(
                        text: ' shipments ',
                        style: GoogleFonts.montserrat(
                          color: kRed,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    TextSpan(
                      text: ' tap',
                      style: GoogleFonts.montserrat(color: Colors.black, fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomButtonFilled(
                height: 58.h,
                title: "Check Out",
              ),
              SizedBox(height: 45.h)
            ],
          ),
        ),
      ),
    );
  }
}
