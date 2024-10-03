import 'dart:async';

import 'package:couriers/utils/custom_button.dart';
import 'package:couriers/utils/custom_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../import/common_imports.dart';
import '../si04_personal_information/si04_personal_information.dart';

class SI03OTPScreen extends StatelessWidget {
  SI03OTPScreen({super.key});
  final GetOtpController getOtpController = Get.put(GetOtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    HeaderWithArrow(title: "OTP"),
                    SizedBox(height: 19.h),
                    Center(
                      child: SvgPicture.asset(
                        "assets/icons/phone.svg",
                        height: 73.h,
                      ),
                    ),
                    SizedBox(height: 85.h),
                    // Center(
                    //   child: GetBuilder<GetOtpController>(builder: (controller) {
                    //     return CustomText(
                    //         text: "00:${controller.remainingTime < 10 ? "0" : ""}${controller.remainingTime.toString()}",
                    //         fontSize: 34.sp,
                    //         fontWeight: FontWeight.w500);
                    //   }),
                    // ),
                    CustomText(
                      text: "00:42",
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: 25.h),
                    CustomText(
                      text: "Almost There! Check Your Phone!",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "An OTP has been sent to your mobile number via WhatsApp to sign in to your account.",
                      textAlign: TextAlign.center,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 27.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) => _buildVerificationBox(context, index)),
                    ).paddingSymmetric(horizontal: 30.w),
                    SizedBox(height: 15.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomText(
                        text: "Send again?",
                        fontSize: 12.sp,
                      ),
                    ),
                    const Spacer(),
                    CustomButtonFilled(
                      height: 58.h,
                      title: "Next",
                      onTap: () => Get.to(const SI04PersonalInformation()),
                    ),
                    SizedBox(height: 130.h),

                    // SizedBox(height: 0.h)
                  ],
                ).paddingSymmetric(horizontal: 30.w),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildVerificationBox(BuildContext context, int index) {
    return GetBuilder<GetOtpController>(builder: (controller) {
      return Container(
        width: 67.w,
        height: 70.h,
        decoration: BoxDecoration(
          color: controller.isFilled[index] ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: controller.isFilled[index]
              ? []
              : [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: Offset(0, 4.h),
                  ),
                ],
        ),
        child: Center(
          child: KeyboardListener(
            focusNode: FocusNode(),
            onKeyEvent: (value) {
              if (value.logicalKey.keyLabel == "Backspace") {
                if (index > 0 && controller.otpControllers[index].text.isEmpty) {
                  FocusScope.of(context).requestFocus(controller.focusNodes[index - 1]);
                }
              }
            },
            child: SizedBox(
              width: 67.w,
              child: Center(
                child: TextField(
                  controller: controller.otpControllers[index],
                  focusNode: controller.focusNodes[index],
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  //   cursorHeight: 5,
                  cursorColor: Colors.black,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: controller.isFilled[index] ? Colors.white : Colors.black,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                      contentPadding: EdgeInsets.only(bottom: 3.h, left: 2.w, top: 0)),

                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      controller.isFilled[index] = true;
                      controller.update();
                      if (index < controller.otpControllers.length - 1) {
                        FocusScope.of(context).requestFocus(controller.focusNodes[index + 1]);
                      } else {
                        controller.focusNodes[index].unfocus();
                      }
                    } else {
                      controller.isFilled[index] = false;
                      controller.update();
                    }
                  },
                  onSubmitted: (_) {
                    if (controller.otpControllers[index].text.isEmpty && index > 0) {
                      FocusScope.of(context).requestFocus(controller.focusNodes[index - 1]);
                    }
                  },
                  onEditingComplete: () {
                    if (controller.otpControllers[index].text.isEmpty && index > 0) {
                      FocusScope.of(context).requestFocus(controller.focusNodes[index - 1]);
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class GetOtpController extends GetxController {
  late final String? phoneError;
  bool tcLoading = false;
  bool loading = false;
  String _verificationId = '';
  bool _isCodeSent = false;
  int remainingTime = 30;
  Timer? timer;
  final List<TextEditingController> otpControllers = List.generate(6, (index) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
  final List<bool> isFilled = List.generate(6, (index) => false);

  void _startCountdown() {
    remainingTime = 30;
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        remainingTime--;
        update();
      } else {
        timer.cancel();
      }
    });
  }
}
