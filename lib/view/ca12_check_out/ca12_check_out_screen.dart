import 'package:couriers/utils/navigator.dart';

import '../../import/common_imports.dart';
import '../../utils/custom_button.dart';
import '../successful/link_send/ca13_check_out_success.dart';

class CA12CheckOutScreen extends StatefulWidget {
  const CA12CheckOutScreen({super.key});

  @override
  State<CA12CheckOutScreen> createState() => _CA12CheckOutScreenState();
}

class _CA12CheckOutScreenState extends State<CA12CheckOutScreen> {
  bool applePay = false;
  bool addVisa = false;
  bool cashOnDelivery = false;
  bool wallet = false;
  bool card1 = false;
  bool card2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWithArrowWithActions(
              title: "Ahmad Shehab",
              subTitle: "Check-Out",
              assetName: "assets/icons/arrow_box.svg",
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        addVisa = true;
                        cashOnDelivery = false;
                        wallet = false;
                        applePay = false;
                        card1 = false;
                        card2 = false;
                      }),
                      child: SelectPaymentMethodCard(
                        applePay: addVisa,
                        iconPath: "assets/icons/Card3.svg",
                        title: "Add Visa/Credit Card",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        addVisa = false;
                        cashOnDelivery = true;
                        wallet = false;
                        applePay = false;
                        card1 = false;
                        card2 = false;
                      }),
                      child: SelectPaymentMethodCard(
                        applePay: cashOnDelivery,
                        iconPath: "assets/icons/cash_on_delivery.svg",
                        title: "Cash on Delivery",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        addVisa = false;
                        cashOnDelivery = false;
                        wallet = true;
                        applePay = false;
                        card1 = false;
                        card2 = false;
                      }),
                      child: SelectPaymentMethodCard(
                        applePay: wallet,
                        iconPath: "assets/icons/wallet1.svg",
                        title: "Wallet",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        addVisa = false;
                        cashOnDelivery = false;
                        wallet = false;
                        applePay = true;
                        card1 = false;
                        card2 = false;
                      }),
                      child: SelectPaymentMethodCard(
                        applePay: applePay,
                        iconPath: "assets/icons/apple_pay.svg",
                        title: "Apple pay",
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1.h,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 28.w),
                        CustomText(
                          text: "Or",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(width: 28.w),
                        Expanded(
                          child: Container(
                            height: 1.h,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () => setState(() {
                        addVisa = false;
                        cashOnDelivery = false;
                        wallet = false;
                        applePay = false;
                        card1 = true;
                        card2 = false;
                      }),
                      child: SelectPaymentMethodCard(
                        applePay: card1,
                        iconPath: "assets/icons/Card.svg",
                        title: "**** **** **** 5689",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        addVisa = false;
                        cashOnDelivery = false;
                        wallet = false;
                        applePay = false;
                        card1 = false;
                        card2 = true;
                      }),
                      child: SelectPaymentMethodCard(
                        applePay: card2,
                        isOtherPay: true,
                        iconPath: "assets/icons/Card 2.svg",
                        title: "**** **** **** 5689",
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      height: 1.h,
                      color: kE1E1E1,
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Total",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: k444444,
                        ),
                        CustomText(
                          text: "JOD 40.00",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: k444444,
                        ),
                      ],
                    ),
                    Spacer(),
                    CustomButtonFilled(
                      title: "Check Out",
                      height: 58.h,
                      onTap: () {
                        customNavigator(context, const CA13CheckOutSuccess());
                      },
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectPaymentMethodCard extends StatelessWidget {
  final bool applePay;
  final bool? isOtherPay;
  final String title;
  final String iconPath;

  const SelectPaymentMethodCard({
    super.key,
    required this.applePay,
    required this.title,
    required this.iconPath,
    this.isOtherPay = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(1.5.r),
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: applePay == true ? kRed : Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          SvgPicture.asset(
            iconPath,
            height: isOtherPay! ? 40.h : 20.h,
            width: isOtherPay! ? 40.w : 20.w,
          ),
          SizedBox(width: 10.w),
          CustomText(
            text: title,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
