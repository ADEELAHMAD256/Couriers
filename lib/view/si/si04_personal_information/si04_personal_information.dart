import '../../../import/common_imports.dart';
import '../../../utils/custom_button.dart';
import '../../../utils/custom_text_field.dart';
import '../../bottom_navbar/bottom_navbar_screen.dart';

class SI04PersonalInformation extends StatelessWidget {
  const SI04PersonalInformation({super.key});

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
                    HeaderWithArrow(
                      titleWeight: 187.w,
                      title: "Personal Information",
                    ),
                    SizedBox(height: 67.h),
                    CustomText(
                      text: "First Name:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      height: 45.h,
                      hintText: "First Name",
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "Last Name:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      height: 45.h,
                      hintText: "Last Name",
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "Business Name:",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextField(
                      height: 45.h,
                      hintText: "Business Name",
                    ),
                    const Spacer(),
                    CustomButtonFilled(
                      height: 58.h,
                      title: "Next",
                      onTap: () => Get.to(const BottomNavbarScreen()),
                    ),
                    SizedBox(height: 130.h),
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
