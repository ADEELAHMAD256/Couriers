import '../../import/common_imports.dart';
import '../../utils/custom_button.dart';
import '../../utils/custom_text_field.dart';

class Ca06ShipmentDetailsScreen extends StatefulWidget {
  const Ca06ShipmentDetailsScreen({super.key});

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
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
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
                            color:
                                isBulk == false ? Colors.black : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                            ),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Ship by Piece",
                              fontSize: 14.sp,
                              color:
                                  isBulk == false ? Colors.white : Colors.black,
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
                            color: isBulk == true ? Colors.black : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Bulk Shipments",
                              fontSize: 14.sp,
                              color:
                                  isBulk == true ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const TextFieldWithTitle(
                hintText: "Number of Parcels",
                title: "Number of Parcels:",
              ),
              const TextFieldWithTitle(
                hintText: "Total Weights (Kg)",
                title: "Total Weights (Kg):",
              ),
              const TextFieldWithTitle(
                hintText: "Length (Cm)",
                title: "Average Length per Parcel (Cm):",
              ),
              const TextFieldWithTitle(
                hintText: "Average Height per Parcel (Cm):",
                title: "Height (Cm):",
              ),
              const TextFieldWithTitle(
                hintText: "Width (Cm)",
                title: "Average Width per Parcel (Cm):",
              ),
              const TextFieldWithTitle(
                hintText: "Number of Parcels",
                title: "How many parcels need cooling?:",
              ),
              const TextFieldWithTitle(
                hintText: "Number of Parcels",
                title: "How many fragile parcels?:",
              ),
              SizedBox(height: 20.h),
              CustomButtonFilled(
                title: "Next",
                height: 58.h,
                onTap: () {
                  // widget.index++;
                  // widget.goToNextPage();
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
