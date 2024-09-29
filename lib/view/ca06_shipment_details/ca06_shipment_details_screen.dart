import 'package:dotted_border/dotted_border.dart';

import '../../import/common_imports.dart';
import '../../utils/custom_button.dart';
import '../../utils/custom_text_field.dart';

class Ca06ShipmentDetailsScreen extends StatefulWidget {
  final Function goToNextPage;

  const Ca06ShipmentDetailsScreen({super.key, required this.goToNextPage});

  @override
  State<Ca06ShipmentDetailsScreen> createState() =>
      _Ca06ShipmentDetailsScreenState();
}

class _Ca06ShipmentDetailsScreenState extends State<Ca06ShipmentDetailsScreen> {
  bool isBulk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    // SizedBox(height: 10.h),
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
                              onTap: () => setState(() => isBulk = false),
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: isBulk == false
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(100),
                                    bottomLeft: Radius.circular(100),
                                  ),
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "Ship by Piece",
                                    fontSize: 14.sp,
                                    color: isBulk == false
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => isBulk = true),
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: isBulk == true
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(100),
                                    bottomRight: Radius.circular(100),
                                  ),
                                ),
                                child: Center(
                                  child: CustomText(
                                    text: "Bulk Shipments",
                                    fontSize: 14.sp,
                                    color: isBulk == true
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
                    Expanded(
                      child:
                          isBulk ? const BulkShipment() : const ShipByPiece(),
                    ),
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

class BulkShipment extends StatelessWidget {
  const BulkShipment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25.h),
        CustomText(
          text:
              "This template allows you to enter your recipients' details in an Excel sheet, which you can then upload to simplify the process of scheduling bulk orders.",
          fontSize: 14.sp,
          color: Colors.black,
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            SizedBox(
              width: 150.w,
              child: CustomText(
                text: "Ask recipients to fill in the address:",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            CustomButtonFilled(
              width: 207.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/download.svg"),
                  SizedBox(width: 4.w),
                  SizedBox(
                    child: CustomText(
                      text: "Download Template",
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              wordSpacing: 3,
              text: "In the template, please:",
              fontSize: 14.sp,
              color: Colors.black,
            ),
            SizedBox(height: 5.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "1. ",
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 340.w,
                  child: CustomText(
                    wordSpacing: 3,
                    text:
                        "Fill in the shipment and drop-off details for all parcels, each in a separate row.",
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "2. ",
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 340.w,
                  child: CustomText(
                    wordSpacing: 3,
                    text: "Rows that has (*) next to the heading are required.",
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "3. ",
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 340.w,
                  child: CustomText(
                    wordSpacing: 3,
                    text:
                        "Upload the sheet so that we can save you time and effort.",
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.h),
        DottedBorder(
          color: Colors.black, // Color of the border
          strokeWidth: 1, // Width of the border
          dashPattern: const [
            3,
            3
          ], // Dotted pattern: [dash length, gap length]
          borderType:
              BorderType.RRect, // Border type, you can use Rect, RRect, Circle
          radius: Radius.circular(25.r), // Rounded corners if using RRect
          child: Container(
            height: 100.h,
            width: 330.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/upload.svg"),
                CustomText(
                  text: 'Upload Your File Here',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 5.h),
                CustomText(
                  text: 'Maximum 50mb Size',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ShipByPiece extends StatelessWidget {
  const ShipByPiece({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWithTitle(
          height: 45.h,
          hintText: "Number of Parcels",
          title: "Number of Parcels:",
        ),
        TextFieldWithTitle(
          height: 45.h,
          hintText: "Total Weights (Kg)",
          title: "Total Weights (Kg):",
        ),
        TextFieldWithTitle(
          height: 45.h,
          hintText: "Length (Cm)",
          title: "Average Length per Parcel (Cm):",
        ),
        TextFieldWithTitle(
          height: 45.h,
          hintText: "Average Height per Parcel (Cm):",
          title: "Height (Cm):",
        ),
        TextFieldWithTitle(
          height: 45.h,
          hintText: "Width (Cm)",
          title: "Average Width per Parcel (Cm):",
        ),
        TextFieldWithTitle(
          height: 45.h,
          hintText: "Number of Parcels",
          title: "How many parcels need cooling?:",
        ),
        TextFieldWithTitle(
          height: 45.h,
          hintText: "Number of Parcels",
          title: "How many fragile parcels?:",
        ),
        const Spacer(),
      ],
    );
  }
}
