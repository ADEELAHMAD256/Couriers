import 'package:couriers/utils/custom_text_field.dart';
import '../../import/common_imports.dart';
import '../../utils/custom_button.dart';

class Ca08PaymentDetailsScreen extends StatefulWidget {
  final Function goToNextPage;

  const Ca08PaymentDetailsScreen({super.key, required this.goToNextPage});

  @override
  State<Ca08PaymentDetailsScreen> createState() =>
      _Ca08PaymentDetailsScreenState();
}

class _Ca08PaymentDetailsScreenState extends State<Ca08PaymentDetailsScreen> {
  bool yes = false;
  bool fixedAmount = true;
  bool percentage = false;
  bool noDiscount = false;

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
                    SizedBox(height: 30.h),
                    CustomText(
                      text:
                          "Do you want your customer to pay any amount now? (e.g. down payment)",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      height: 40.h,
                      margin: EdgeInsets.symmetric(horizontal: 30.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => yes = false),
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: yes == false
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    bottomLeft: Radius.circular(100),
                                  ),
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "Yes",
                                    fontSize: 14.sp,
                                    color: yes == false
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => yes = true),
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color:
                                      yes == true ? Colors.black : Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ),
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "No",
                                    fontSize: 14.sp,
                                    color: yes == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "How much is the amount? (In JOD)",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 25.h),
                    SizedBox(
                      height: 45.h,
                      child: const CustomTextField(hintText: "0.0 JOD"),
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text:
                          "**Payments can only be accepted online now. Upon placing the shipment, a link will be sent to the recipient to confirm their address and complete this payment",
                      fontSize: 12.sp,
                    ),
                    SizedBox(height: 25.h),
                    Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                fixedAmount = true;
                                percentage = false;
                                noDiscount = false;
                              }),
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: fixedAmount == true
                                      ? Colors.black
                                      : Colors.white,
                                  border: Border(
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0.w,
                                    ),
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    bottomLeft: Radius.circular(100),
                                  ),
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "Fixed Amount",
                                    fontSize: 14.sp,
                                    color: fixedAmount == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                fixedAmount = false;
                                percentage = true;
                                noDiscount = false;
                              }),
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: percentage == true
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "Percentage",
                                    fontSize: 14.sp,
                                    color: percentage == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() {
                                fixedAmount = false;
                                percentage = false;
                                noDiscount = true;
                              }),
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: noDiscount == true
                                      ? Colors.black
                                      : Colors.white,
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0.w,
                                    ),
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ),
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "No Discount",
                                    fontSize: 14.sp,
                                    color: noDiscount == true
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "Discount Amount",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 25.h),
                    SizedBox(
                      height: 45.h,
                      child: const CustomTextField(hintText: "0.0 JOD"),
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "30% = JOD 15",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 18.h),
                    CustomText(
                      text: "The amount you’ll receive is JOD 35",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    const Spacer(),
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
              ),
            ),
          );
        }),
      ),
    );
  }
}
