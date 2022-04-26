import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:shanbwrog/ui/screens/Main_Activity_Screen/Main_Screen.dart';


class MySettings {
  static const Color maincolor = Color.fromRGBO(15, 165, 154, 1);
  static const Color secondarycolor = Color.fromRGBO(36, 85, 80, 1);
  static ThemeData  theme=ThemeData(fontFamily: 'Cairo');

  static Map<String, WidgetBuilder> routes = {
    MainActivity.ref: (ctx) => MainActivity(),
  };
  static List<ResponsiveBreakpoint> appBreakPoints = [
    ResponsiveBreakpoint.resize(480, name: MOBILE),
    ResponsiveBreakpoint.autoScale(800, name: TABLET),
    ResponsiveBreakpoint.resize(1000, name: DESKTOP)
  ];

  static TransitionBuilder responsiveBuilder = (context, widget) {
    return ResponsiveWrapper.builder(
      widget,
      maxWidth: 1200,
      minWidth: 480,
      defaultScale: true,
      breakpoints: appBreakPoints,
      background: Container(color: Color(0xFFF5F5F5)),
    );
  };

  static Future<bool> netWorkWorking() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }
}
