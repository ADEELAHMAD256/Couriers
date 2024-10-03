import '../../import/common_imports.dart';

class CA16AddressDetailsScreen extends StatelessWidget {
  const CA16AddressDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWithArrowWithSubTitle(
              title: "Ahmad Shehab ",
              subTitle: "#5276423898",
            ),
            SizedBox(height: 30.h),
            CustomText(
              text: "Address Details",
              fontSize: 14.sp,
            ).paddingSymmetric(horizontal: 30.w),
            SizedBox(height: 40.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExpansionPanels(),
                    CustomText(
                      text: "Payment Summary",
                    ),
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

class ExpansionPanels extends StatefulWidget {
  const ExpansionPanels({super.key});

  @override
  _ExpansionPanelsState createState() => _ExpansionPanelsState();
}

class _ExpansionPanelsState extends State<ExpansionPanels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemData.length,
        separatorBuilder: (context, index) => Divider(color: kD7D7D7),
        itemBuilder: (BuildContext context, int index) {
          return Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              dense: true,
              backgroundColor: Colors.white,
              iconColor: kRed,
              collapsedIconColor: kRed,
              visualDensity: VisualDensity(
                horizontal: 0,
                vertical: -3.h,
              ), // Reduce padding
              title: CustomText(
                text: itemData[index].headerItem!,
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w500,
              ),
              children: List<Widget>.generate(
                1,
                (index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  color: Colors.white, // Ensures the body background is white
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Pick-Up Location",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Pick-Up Time",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: kRed, height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Irbid",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "5:00 AM - 7:00 AM",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Ajloun",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "5:00 AM - 7:00 AM",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Jerash",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "5:00 AM - 7:00 AM",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Shipping Destination",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Drop-Off Time",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: kRed, height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Irbid",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "5:00 AM - 7:00 AM",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Ajloun",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "5:00 AM - 7:00 AM",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "Jerash",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 135.w,
                            child: Center(
                              child: CustomText(
                                text: "5:00 AM - 7:00 AM",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: kRed,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
                      SizedBox(height: 15.h)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(headerItem: 'Pick-Up Details'),
    ItemModel(headerItem: 'Shipment Details'),
    ItemModel(headerItem: 'First Payment Details'),
    ItemModel(headerItem: 'Second Payment Details'),
    ItemModel(headerItem: 'Drop-Off Details'),
  ];
}

class ItemModel {
  bool? expanded;
  String? headerItem;
  String? discription;
  String? img;

  ItemModel({this.expanded = false, this.headerItem, this.discription, this.img});
}
