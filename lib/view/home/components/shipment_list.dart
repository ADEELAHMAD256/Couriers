import 'package:couriers/import/common_imports.dart';

class ShipmentList extends StatelessWidget {
  const ShipmentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 14,
        separatorBuilder: (context, index) =>
            Divider(height: 0, color: kD7D7D7),
        itemBuilder: (context, index) => Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Ahmad",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    text: "#26845612236 ",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: k9B9FA5,
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    text: "Amman | To Be Paid | Placed On 25/12/2022 ",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: k9B9FA5,
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    text: "Scheduled",
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: kGreen,
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
    );
  }
}
