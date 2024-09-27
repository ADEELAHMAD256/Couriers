import 'package:couriers/utils/custom_button.dart';
import '../../import/common_imports.dart';
import '../../utils/header_with_arrow.dart';

class AddressDetailsScreen extends StatelessWidget {
  const AddressDetailsScreen({super.key});

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
              const HeaderWithArrow(title: "Ahmad Shehab"),
              SizedBox(height: 30.h),
              CustomText(
                text: "Address Details",
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: k3E4653,
              ),
              SizedBox(height: 15.h),
              Details(
                text: "Governorate:",
                value: "Amman",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "WhatsApp Number:",
                value: "+9627987524029 PM",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "Phone Number:",
                value: "+962798752402",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "District:",
                value: "Dabouq",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "Street Name:",
                value: "Saeed Bataineh st.",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "Building No.",
                value: "3",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "Floor:",
                value: "3",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "Apartment No.",
                value: "3",
              ),
              SizedBox(height: 15.h),
              Details(
                text: "Apartment No.",
                value: "3",
              ),
              SizedBox(height: 30.h),
              Center(
                child: CustomButtonWithBorder(
                  height: 40.h,
                  width: 220.w,
                  title: "Delete",
                  titleSize: 14.sp,
                ),
              ),
              SizedBox(height: 15.h),
              Center(
                child: CustomButtonFilled(
                  height: 40.h,
                  width: 220.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/pin.svg"),
                      SizedBox(width: 4.w),
                      CustomText(
                        text: "View Location on Map",
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Center(
                child: CustomButtonFilled(
                  height: 40.h,
                  width: 220.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/call.svg"),
                      SizedBox(width: 4.w),
                      CustomText(
                        text: "Call Customer",
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String text;
  final String value;
  const Details({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.40,
          child: CustomText(
            text: text,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: k3E4653.withOpacity(0.7),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.40,
          child: CustomText(
            text: value,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: k3E4653,
          ),
        ),
      ],
    );
  }
}
