import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shanbwrog/Settings/MySettings.dart';
import 'dart:io' show Platform;
import 'package:flutter/services.dart';

import 'ui/screens/Main_Activity_Screen/Main_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('ar')],
        path: 'assets/languages',
        startLocale: Locale('ar'),
        // <-- change the path of the translation files
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? MaterialApp(
            initialRoute: MainActivity.ref,
            routes: MySettings.routes,
            theme: MySettings.theme,
            debugShowCheckedModeBanner: false,
            builder: MySettings.responsiveBuilder,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          )
        : CupertinoApp(
            initialRoute: MainActivity.ref,
            routes: MySettings.routes,
            debugShowCheckedModeBanner: false,
            builder: MySettings.responsiveBuilder,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
  }
}
