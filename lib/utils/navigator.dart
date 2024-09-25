import 'package:flutter/cupertino.dart';

void customNavigator(BuildContext context, Widget child) {
  Navigator.of(context).push(CupertinoPageRoute(
    builder: (context) => child,
  ));
}
