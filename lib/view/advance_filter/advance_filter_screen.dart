import 'package:couriers/import/common_imports.dart';
import 'package:intl/intl.dart';
import '../captains/components/filter_text_fields.dart';
import 'components/upper_part.dart';

class AdvanceFilterScreen extends StatefulWidget {
  const AdvanceFilterScreen({super.key});

  @override
  State<AdvanceFilterScreen> createState() => _AdvanceFilterScreenState();
}

class _AdvanceFilterScreenState extends State<AdvanceFilterScreen> {
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
    return Scaffold(
      backgroundColor: kOffWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: Column(
            children: [
              const HeaderWithArrow(title: "Add Address"),
              const UpperPartFilter(),
              Row(
                children: [
                  CustomText(
                    text: "Pick-Up Date:",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _presentDatePicker(context),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 12.h),
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
                                  : DateFormat('dd/MM/yyyy')
                                      .format(selectedDate!),
                              color: k7F7F7F,
                            ),

                            SizedBox(width: 20), // Optional, for spacing
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
                  CustomText(
                    text: "Pick-Up Time:",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _presentTimePicker(context),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 12.h),
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
              SizedBox(height: 20.w),
              Row(
                children: [
                  CustomText(
                    text: "Rated More Than:",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            4,
                            (index) => Container(
                                  height: 35.h,
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      border: Border.all(color: kRed)),
                                  child: Center(
                                    child: CustomText(
                                      text: "0.5",
                                      fontSize: 14.sp,
                                      color: kRed,
                                    ),
                                  ),
                                )),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.w),
              Row(
                children: [
                  CustomText(
                    text: "Price Less Than",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 10.w),
                  const Expanded(
                    child: FilterTextFields(
                      hintText: "Set Price",
                      icon: "assets/icons/tag.svg",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.w),
              Row(
                children: [
                  CustomText(
                    text: "Shipped More Than",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 10.w),
                  const Expanded(
                    child: FilterTextFields(
                      hintText: "Number of Shipments",
                      icon: "assets/icons/tag.svg",
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomText(
                text: "Clear Filters",
                fontSize: 17.sp,
                fontWeight: FontWeight.w700,
                color: kRed,
              ),
              SizedBox(height: 25.h),
              Container(
                height: 58.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: kRed,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Center(
                  child: CustomText(
                    text: "Apply Filters",
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
