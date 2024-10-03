import 'package:couriers/import/common_imports.dart';
import 'package:flutter/cupertino.dart';

import '../../../../utils/navigator.dart';
import '../../../add_address/add_address_screen.dart';
import '../../../address_book/address_book_screen.dart';
import '../../../ho/ho06_withdraw_balance/ho06_withdraw_balance_screen.dart';
import 'button_data_model.dart';

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          3,
          (index) => GestureDetector(
            onTap: () {
              if (index == 0) {
                Get.to(const AddAddressScreen());
              } else if (index == 1) {
                Get.to(const AddressBookScreen());
              } else {
                Get.to(const HO06WithdrawBalanceScreen());
              }
            },
            child: Container(
              height: 131.h,
              width: 113.h,
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(buttonModel[index].icon),
                  CustomText(
                    textAlign: TextAlign.center,
                    text: buttonModel[index].title,
                    color: kRed,
                    fontSize: 14.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
