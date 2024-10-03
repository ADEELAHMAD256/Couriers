import 'package:couriers/import/common_imports.dart';
import 'package:couriers/utils/custom_button.dart';
import 'package:couriers/utils/custom_check_box.dart';

import '../ho08_edit_account/ho08_edit_account_screen.dart';

class HO06WithdrawBalanceScreen extends StatelessWidget {
  const HO06WithdrawBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithArrow(title: "Withdraw Balance"),
            SizedBox(height: 34.h),
            CustomText(
              text: "Enter Amount",
              fontSize: 14.sp,
              color: k7F7F7F,
            ),
            SizedBox(height: 23.h),
            CustomText(
              text: "JOD 70.00",
              fontSize: 36.sp,
              color: kRed,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 9.h),
            Container(
              height: 1.h,
              width: 194.w,
              color: k7F7F7F,
            ),
            SizedBox(height: 30.h),
            CustomText(
              text: "580.00",
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 30.h),
            CustomText(
              text: "Available Balance",
              fontSize: 14.sp,
              color: k7F7F7F,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 15.h),
            const CustomCheckBox(value: false, label: "Withdraw Full Balance"),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Where To",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                GestureDetector(
                  onTap: () => Get.to(HO08EditAccountScreen()),
                  child: CustomText(
                    text: "Edit Account",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: kRed,
                    decoration: TextDecoration.underline,
                    decorationColor: kRed,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              children: [
                SvgPicture.asset("assets/icons/card_in_phone.svg"),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "E-Wallet",
                      fontSize: 16.sp,
                    ),
                    CustomText(
                      text: "Orange Money",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "*********1234",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: k7F7F7F,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            CustomButtonFilled(title: "Subimt", height: 58.h),
            SizedBox(height: 45.h)
          ],
        ).paddingSymmetric(horizontal: 30.w),
      ),
    );
  }
}
