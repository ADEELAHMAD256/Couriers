import 'package:couriers/import/common_imports.dart';
import 'package:intl/intl.dart';

import '../../utils/custom_button.dart';
import '../../utils/custom_text_field.dart';

class Ca04PickUpDetailsScreen extends StatefulWidget {
  final Function goToNextPage;
  Ca04PickUpDetailsScreen({super.key, required this.goToNextPage});

  @override
  State<Ca04PickUpDetailsScreen> createState() =>
      _Ca04PickUpDetailsScreenState();
}

class _Ca04PickUpDetailsScreenState extends State<Ca04PickUpDetailsScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // void updateProgress() {
  //   setState(() {
  //     widget.progress +=
  //         1.0 / 6.0; // Update based on the number of steps in your form
  //     print("object.......${widget.progress}");
  //   });
  // }

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
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 130.w,
                child: CustomText(
                  text: "Pick-Up Location:",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 11.w),
              Expanded(child: LocationDropdown())
            ],
          ),
          const TextFieldWithTitle(
            hintText: "District",
            title: "District:",
          ),
          const TextFieldWithTitle(
            hintText: "Street Name",
            title: "Street Name:",
          ),
          const TextFieldWithTitle(
            hintText: "Building Number",
            title: "Building Number:",
          ),
          const TextFieldWithTitle(
            hintText: "Closest Landmark",
            title: "Closest Landmark:",
          ),
          SizedBox(height: 20.w),
          Row(
            children: [
              SizedBox(
                width: 130.w,
                child: CustomText(
                  text: "Pick-Up Date:",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 11.w),
              Expanded(
                child: GestureDetector(
                  onTap: () => _presentDatePicker(context),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
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
                          text: selectedDate == null
                              ? 'Choose Date'
                              : DateFormat('dd/MM/yyyy').format(selectedDate!),
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
                  text: "Pick-Up Time:",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 11.w),
              Expanded(
                child: GestureDetector(
                  onTap: () => _presentTimePicker(context),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
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
                          text: selectedTime == null
                              ? 'Choose Time'
                              : selectedTime!.format(context),
                          color: k7F7F7F,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              SizedBox(
                width: 150.w,
                child: CustomText(
                  text: "Set Location on Map:",
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
          SizedBox(height: 20.h),
          CustomButtonFilled(
            title: "Next",
            height: 58.h,
            onTap: () {
              // widget.index++;
              widget.goToNextPage();
            },
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

class LocationDropdown extends StatelessWidget {
  final DropdownController controller = Get.put(DropdownController());

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

class DropdownController extends GetxController {
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
