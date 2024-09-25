import 'package:couriers/view/bottom_navbar/bottom_navbar_screen.dart';
import 'package:couriers/view/captains/captains_screen.dart';
import 'package:couriers/view/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const ScreenUtilInit(
      // designSize: Size(size.width, size.height),
      designSize: Size(430, 932),
      // minTextAdapt: true,
      // splitScreenMode: false,
      child: GetMaterialApp(
        home: BottomNavBarScreen(),
      ),
    );
  }
}
