import 'package:couriers/utils/custom_button.dart';

import '../../import/common_imports.dart';
import 'ca03_upper_part.dart';

class Ca03BookShipmentScreen extends StatelessWidget {
  const Ca03BookShipmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  const HeaderWithArrow(title: "Ahmad Shehab "),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          CustomText(
                            text: "530",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: "Orders",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.w),
                        height: 50.h,
                        width: 1.w,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          CustomText(
                            text: "4.5",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomText(
                            text: "Out of 5",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButtonFilled(
                        title: "Book A Shipment",
                        titleSize: 14.sp,
                        titleWight: FontWeight.w400,
                        width: 164.w,
                      ),
                      CustomButtonFilled(
                        title: "View Reviews",
                        titleSize: 14.sp,
                        titleWight: FontWeight.w400,
                        width: 164.w,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  const UpperPartCA03(),
                ],
              ),
            ),
            Expanded(
              child: ExpansionPanelDemo(),
            )
          ],
        ),
      ),
    );
  }
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
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
              // trailing: Icon(
              //   Icons.expand_more,
              //   size: 35.r, // Set the custom size for the icon
              // ),
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
          // return ExpansionPanelList(
          //   animationDuration: const Duration(milliseconds: 300),
          //   dividerColor: Colors.red, // Divider color between panels
          //   elevation: 1,
          //   children: [
          //     ExpansionPanel(
          //       body: Container(
          //         padding: EdgeInsets.symmetric(horizontal: 25.w),
          //         color: Colors.white, // Ensures the body background is white
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: <Widget>[
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Pick-Up Location",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Pick-Up Time",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: kRed, height: 28.h),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Irbid",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "5:00 AM - 7:00 AM",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Ajloun",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "5:00 AM - 7:00 AM",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Jerash",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "5:00 AM - 7:00 AM",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
          //             SizedBox(height: 30.h),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Shipping Destination",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Drop-Off Time",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: kRed, height: 28.h),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Irbid",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "5:00 AM - 7:00 AM",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Ajloun",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "5:00 AM - 7:00 AM",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "Jerash",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 135.w,
          //                   child: Center(
          //                     child: CustomText(
          //                       text: "5:00 AM - 7:00 AM",
          //                       fontSize: 12.sp,
          //                       fontWeight: FontWeight.w500,
          //                       color: kRed,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Divider(color: k7F7F7F.withOpacity(0.5), height: 28.h),
          //             SizedBox(height: 15.h)
          //           ],
          //         ),
          //       ),
          //       headerBuilder: (BuildContext context, bool isExpanded) {
          //         return Container(
          //           padding: EdgeInsets.symmetric(horizontal: 25.w),
          //           height:
          //               60.h, // Make sure 'h' is defined or use a fixed height
          //           width: double.infinity,
          //           color: Colors.white, // Ensures the header background is white
          //           alignment: Alignment.centerLeft,
          //           child: Text(
          //             itemData[index].headerItem!,
          //             style: TextStyle(
          //               fontSize: 18
          //                   .sp, // Make sure 'sp' is defined or use a fixed font size
          //             ),
          //           ),
          //         );
          //       },
          //       isExpanded: itemData[index].expanded!,
          //     )
          //   ],
          //   expansionCallback: (int item, bool status) {
          //     setState(() {
          //       itemData[index].expanded = !itemData[index].expanded!;
          //     });
          //   },
          // );
        },
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(headerItem: 'Saturday'),
    ItemModel(headerItem: 'Sunday'),
    ItemModel(headerItem: 'Monday'),
    ItemModel(headerItem: 'Tuesday'),
    ItemModel(headerItem: 'Wednesday'),
    ItemModel(headerItem: 'Thursday'),
    ItemModel(headerItem: 'Friday'),
  ];
}

class ItemModel {
  bool? expanded;
  String? headerItem;
  String? discription;
  String? img;

  ItemModel(
      {this.expanded = false, this.headerItem, this.discription, this.img});
}
