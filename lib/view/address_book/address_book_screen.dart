import 'package:couriers/import/common_imports.dart';
import 'package:couriers/utils/header_with_arrow.dart';
import 'package:couriers/utils/navigator.dart';

import '../../utils/custom_search_bar.dart';
import '../address_details/address_details_screen.dart';

class AddressBookScreen extends StatelessWidget {
  const AddressBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Column(
                children: [
                  const HeaderWithArrow(title: "Address Book"),
                  SizedBox(height: 49.h),
                  const CustomSearchBar(
                    hintText:
                        'Enter Governorate, Phone Number, or Recipient’s Name',
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      CustomText(
                        text: "Governorate:",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 5.h),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                4,
                                (index) => Container(
                                      height: 35.h,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1000),
                                          border: Border.all(color: kRed)),
                                      child: Center(
                                        child: CustomText(
                                          text: "Ajloun",
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
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView.separated(
                itemCount: 14,
                separatorBuilder: (context, index) => const Divider(height: 0),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () =>
                      customNavigator(context, const AddressDetailsScreen()),
                  child: Container(
                    color: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Adeel Ahmad",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: 5.h),
                            CustomText(
                              text: index == 0
                                  ? "Pending Confirmation"
                                  : "Scheduled",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                              color: index == 0 ? k7F7F7F : kGreen,
                            ),
                            SizedBox(height: 5.h),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: kRed,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
