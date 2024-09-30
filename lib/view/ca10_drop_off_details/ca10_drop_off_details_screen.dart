import 'package:couriers/import/common_imports.dart';
import 'package:intl/intl.dart';

import '../../utils/custom_button.dart';
import '../../utils/custom_text_field.dart';
import '../../utils/navigator.dart';
import '../ca11_shipment_summary/ca11_shipment_summary_screen.dart';

class Ca10DropOffDetailsScreen extends StatefulWidget {
  Ca10DropOffDetailsScreen({super.key});

  @override
  State<Ca10DropOffDetailsScreen> createState() => _Ca10DropOffDetailsScreenState();
}

class _Ca10DropOffDetailsScreenState extends State<Ca10DropOffDetailsScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  void _presentTimePicker(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  void _presentDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 130.w,
                      child: CustomText(
                        text: "Governorate:",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 11.w),
                    Expanded(child: LocationDropdown())
                  ],
                ),
                SizedBox(height: 20.w),
                Row(
                  children: [
                    SizedBox(
                      width: 130.w,
                      child: CustomText(
                        text: "Drop-Off Date:",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 11.w),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _presentDatePicker(context),
                        child: Container(
                          height: 45.h,
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: k7F7F7F),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/Calendar.svg"),
                              SizedBox(width: 20.w),
                              CustomText(
                                text: selectedDate == null ? 'Choose Date' : DateFormat('dd/MM/yyyy').format(selectedDate!),
                                color: k7F7F7F,
                              ),

                              SizedBox(width: 20.w), // Optional, for spacing
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.w),
                Row(
                  children: [
                    SizedBox(
                      width: 130.w,
                      child: CustomText(
                        text: "Drop-Off Time:",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 11.w),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _presentTimePicker(context),
                        child: Container(
                          height: 45.h,
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: k7F7F7F),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/clock.svg"),
                              SizedBox(width: 20.w),
                              CustomText(
                                text: selectedTime == null ? 'Choose Time' : selectedTime!.format(context),
                                color: k7F7F7F,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                TextFieldWithTitle(
                  height: 45.h,
                  hintText: "First Name",
                  title: "Recipient’s First Name:",
                ),
                TextFieldWithTitle(
                  height: 45.h,
                  hintText: "Last Name",
                  title: "Recipient’s Last Name:",
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 45.h,
                  child: Row(
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
                ),
                SizedBox(height: 20.w),
                SizedBox(
                  height: 45.h,
                  child: Row(
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
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        color: kRed,
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: kRed),
                      ),
                      child: Icon(
                        Icons.check,
                        size: 15.r,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    CustomText(text: "Same as the mobile number", fontSize: 12.sp),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    SizedBox(
                      width: 156.w,
                      child: CustomText(
                        text: "Ask recipients to fill in the address:",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    CustomButtonFilled(
                      // onTap: () => customNavigator(
                      //     context, const LinkSentSuccessfully()),
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
                const Spacer(),
                CustomButtonFilled(
                  title: "Next",
                  height: 58.h,
                  onTap: () {
                    customNavigator(context, const CA11ShipmentSummary());
                  },
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class LocationDropdown extends StatelessWidget {
  final DropdownController1 controller = Get.put(DropdownController1());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 45.h,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15.r), border: Border.all(color: k7F7F7F, width: 1.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.keyboard_arrow_down, size: 36.r, color: k7F7F7F),
            DropdownButton<String>(
              value: controller.selectedLocation.value.isEmpty ? null : controller.selectedLocation.value,
              icon: const Icon(Icons.abc, size: 0),
              elevation: 16,
              hint: const CustomText(text: "Choose Location"),
              style: TextStyle(color: k7F7F7F),
              underline: Container(height: 0, color: Colors.transparent),
              onChanged: (String? newValue) {
                controller.updateSelectedLocation(newValue!);
              },
              items: controller.locations.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Icon(Icons.keyboard_arrow_down, size: 30.r, color: Colors.transparent),
          ],
        ),
      ),
    );
  }
}

class DropdownController1 extends GetxController {
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
