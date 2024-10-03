import 'package:couriers/view/ho/ho10_statement/ho10_statement_screen.dart';
import 'package:couriers/view/si/si01_signin/si01_signin_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      // designSize: Size(size.width, size.height),
      designSize: const Size(430, 932),
      // minTextAdapt: true,
      // splitScreenMode: false,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: GetMaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: kOffWhite,
            brightness: Brightness.light,
            // colorScheme: const ColorScheme.light(
            //   primary: Colors.white, // Primary color for your app
            // ),
          ),
          home: const StatementScreen(),
          // home: const SI01SignInScreen(),
        ),
      ),
    );
  }
}
