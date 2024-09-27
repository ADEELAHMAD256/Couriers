import 'package:couriers/import/common_imports.dart';
import 'package:couriers/utils/custom_button.dart';
import 'package:couriers/utils/custom_text_field.dart';
import 'package:couriers/utils/navigator.dart';
import 'package:couriers/view/successful/link_send/link_sent_successfully.dart';
import '../../utils/header_with_arrow.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWithArrow(title: "Add Address"),
                  SizedBox(height: 30.h),
                  CustomText(
                    text:
                        "** Addresses can only be saved until being used once.",
                    fontSize: 12.sp,
                  ),
                  SizedBox(height: 20.h),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 130.w,
                                child: CustomText(
                                  text: "Drop-Off Location:",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 11.w),
                              Expanded(child: LocationDropdown())
                            ],
                          ),
                          const TextFieldWithTitle(
                            hintText: "First Name",
                            title: "Recipient’s First Name:",
                          ),
                          TextFieldWithTitle(
                            hintText: "Last Name",
                            title: "Recipient’s Last Name:",
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 130.w,
                                child: CustomText(
                                  text: "Recipient’s Mobile Number:",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 11.w),
                              const Expanded(
                                child: PhoneNumberTextField(
                                  icon: "assets/icons/flag.svg",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.w),
                          Row(
                            children: [
                              SizedBox(
                                width: 130.w,
                                child: CustomText(
                                  text: "Recipient’s WhatsApp Number:",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 11.w),
                              const Expanded(
                                child: PhoneNumberTextField(
                                  icon: "assets/icons/flag.svg",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.w),
                          Row(
                            children: [
                              SizedBox(
                                width: 130.w,
                                child: CustomText(
                                  text:
                                      "Ask recipients to fill in the address:",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              CustomButtonFilled(
                                onTap: () => customNavigator(
                                    context, const LinkSentSuccessfully()),
                                width: 190.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/icons/arrow.svg"),
                                    SizedBox(width: 4.w),
                                    CustomText(
                                      text: "Send to Recipient",
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1.h,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 28.w),
                              CustomText(
                                text: 'Or',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(width: 28.w),
                              Expanded(
                                child: Container(
                                  height: 1.h,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          TextFieldWithTitle(
                            hintText: "District:",
                            title: "District",
                          ),
                          TextFieldWithTitle(
                            hintText: "Street Name:",
                            title: "Street Name",
                          ),
                          TextFieldWithTitle(
                            hintText: "Building Number:",
                            title: "Building Number",
                          ),
                          TextFieldWithTitle(
                            hintText: "Floor Number:",
                            title: "Floor Number",
                          ),
                          TextFieldWithTitle(
                            hintText: "Apartment Number:",
                            title: "Apartment Number",
                          ),
                          TextFieldWithTitle(
                            hintText: "Closest Landmark:",
                            title: "Closest Landmark",
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 130.w,
                                child: CustomText(
                                  text:
                                      "Ask recipients to fill in the address:",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              CustomButtonFilled(
                                width: 153.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/icons/pin.svg"),
                                    SizedBox(width: 4.w),
                                    CustomText(
                                      text: "Set Location",
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 120.w),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 45.h,
                left: 48.w,
                right: 48.w,
                child: CustomButtonFilled(
                  height: 58.h,
                  title: "Add",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationDropdown extends StatelessWidget {
  final DropdownControllerAddAddress controller =
      Get.put(DropdownControllerAddAddress());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 55.h,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: k7F7F7F, width: 1.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.keyboard_arrow_down, size: 36.r, color: k7F7F7F),
            DropdownButton<String>(
              value: controller.selectedLocation.value.isEmpty
                  ? null
                  : controller.selectedLocation.value,
              icon: const Icon(Icons.abc, size: 0),
              elevation: 16,
              hint: const CustomText(text: "Choose Location"),
              style: TextStyle(color: k7F7F7F),
              underline: Container(height: 0, color: Colors.transparent),
              onChanged: (String? newValue) {
                controller.updateSelectedLocation(newValue!);
              },
              items: controller.locations
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Icon(Icons.keyboard_arrow_down,
                size: 30.r, color: Colors.transparent),
          ],
        ),
      ),
    );
  }
}

class DropdownControllerAddAddress extends GetxController {
  var selectedLocation = ''.obs;
  List<String> locations = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
  ];

  void updateSelectedLocation(String newValue) {
    selectedLocation.value = newValue;
  }
}
