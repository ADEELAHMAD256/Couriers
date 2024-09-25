import 'package:couriers/import/common_imports.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/location.svg",
            height: 18.h,
            width: 18.h,
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Your Location",
                fontSize: 16.sp,
              ),
              CustomText(
                text: "Amman, Jordan",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: kRed,
              )
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/bird.svg",
            height: 25.h,
            width: 35.h,
          ),
        ],
      ),
    );
  }
}
