import 'package:couriers/import/common_imports.dart';

import '../../../add_address/add_address_screen.dart';
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
