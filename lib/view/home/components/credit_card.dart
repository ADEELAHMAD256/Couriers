import 'package:couriers/import/common_imports.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181.h,
      padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 30.w),
      decoration: BoxDecoration(
        color: kRed,
        borderRadius: BorderRadius.circular(35.r),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/card_background.png"),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Current Blance",
                fontSize: 14.sp,
                color: Colors.white,
              ),
              SizedBox(
                width: 145.w,
                child: CustomText(
                  text: "JOD \n4,570,80",
                  fontSize: 28.sp,
                  color: Colors.white,
                ),
              ),
              CustomText(
                text: "**** **** **** 2468",
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(
                "assets/icons/master_card.svg",
                height: 36.h,
                width: 45.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
