import 'package:couriers/import/common_imports.dart';
import '../../../utils/custom_button.dart';

class LinkSentSuccessfully extends StatelessWidget {
  const LinkSentSuccessfully({super.key});

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
              SizedBox(height: 150.h),
              Center(child: SvgPicture.asset("assets/icons/success.svg")),
              SizedBox(height: 99.h),
              Center(
                child: CustomText(
                  text: "The link has been sent successfully!",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15.h),
              Center(
                child: CustomText(
                  textAlign: TextAlign.center,
                  text:
                      "We have sent a link to your customer to confirm their address.",
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 77.h),
              CustomText(
                text:
                    "Once your customer fills in their address details and sets their location on map, you will receive a notification.",
                fontSize: 12.sp,
              ),
              const Spacer(),
              CustomButtonFilled(
                height: 58.h,
                title: "Done",
              ),
              SizedBox(height: 45.h)
            ],
          ),
        ),
      ),
    );
  }
}
