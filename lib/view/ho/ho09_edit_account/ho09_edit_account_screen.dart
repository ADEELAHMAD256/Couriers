import 'package:couriers/import/common_imports.dart';
import '../../../utils/custom_button.dart';
import '../../../utils/custom_text_field.dart';

class HO08EditAccountScreen extends StatefulWidget {
  HO08EditAccountScreen({super.key});

  @override
  State<HO08EditAccountScreen> createState() => _HO08EditAccountScreenState();
}

class _HO08EditAccountScreenState extends State<HO08EditAccountScreen> {
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
                    const HeaderWithArrow(title: "Edit Account"),
                    SizedBox(height: 34.h),
                    CustomText(
                      text: "Account Type:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomDropdown(
                      hintText: "Account Type",
                      locations: [
                        'Account Type1',
                        'Account Type2',
                        'Account Type3',
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "Account Type:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomDropdown(
                      hintText: "Service Provider",
                      locations: [
                        'Service1',
                        'Service2',
                        'Service3',
                        'Service4',
                        'Service5',
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "E-Wallet Number:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      height: 45.h,
                      hintText: "E-Wallet Number",
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "Wallet Owner’s Full Name:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      height: 45.h,
                      hintText: "Wallet Owner’s Full Name",
                    ),
                    const Spacer(),
                    CustomButtonFilled(
                      title: "Save",
                      height: 58.h,
                      onTap: () {},
                    ),
                    SizedBox(height: 45.h),
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

class CustomDropdown extends StatelessWidget {
  final List<String> locations;
  final String hintText;
  CustomDropdown({super.key, required this.locations, required this.hintText});
  final DropdownController controller = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 45.h,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: k7F7F7F, width: 1.0),
        ),
        child: Row(
          children: [
            Icon(Icons.keyboard_arrow_down, size: 36.r, color: k7F7F7F),
            SizedBox(width: 10.w),
            Obx(
              () => DropdownButton<String>(
                value: controller.selectedLocation.value.isEmpty || !locations.contains(controller.selectedLocation.value)
                    ? null
                    : controller.selectedLocation.value, // Ensure value is valid
                icon: const Icon(Icons.abc, size: 0),
                elevation: 16,
                hint: CustomText(text: hintText),
                style: TextStyle(color: k7F7F7F),
                underline: Container(height: 0, color: Colors.transparent),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    controller.updateSelectedLocation(newValue);
                  }
                },
                items: locations.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownController extends GetxController {
  var selectedLocation = ''.obs;

  void updateSelectedLocation(String newValue) {
    selectedLocation.value = newValue;
  }
}
