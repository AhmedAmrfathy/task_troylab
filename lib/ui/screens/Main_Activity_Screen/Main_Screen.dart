import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shanbwrog/ui/screens/Main_Activity_Screen/Main_Screen_Settings.dart';
import 'dart:io' show Platform;

import '../../../Settings/MySettings.dart';

class MainActivity extends StatefulWidget {
  static const String ref = "MainActivity_ref";
  int? navigateIndex;

  MainActivity({this.navigateIndex});

  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  int currentindex = 0;

  @override
  void initState() {
    if (widget.navigateIndex != null) {
      currentindex = widget.navigateIndex!;
    }
    // TODO: implement
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return SafeArea(
      child: Platform.isAndroid
            ?
            Scaffold(
              backgroundColor: Color.fromRGBO(233, 235, 239, 1),
              body: MainScreenSettings.navbarPages(
                  devicesize, currentindex)[currentindex],
              bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  selectedFontSize: 16,
                  selectedItemColor: MySettings.maincolor,
                  unselectedItemColor: Colors.black,
                  iconSize: 30,
                  currentIndex: currentindex,
                  onTap: (int newindex) {
                    setState(() {
                      currentindex = newindex;
                    });
                  },
                  type: BottomNavigationBarType.fixed,
                  items: MainScreenSettings.navbarItems(currentindex)),
            )
          : CupertinoPageScaffold(
              child: CupertinoTabScaffold(
                  tabBar: CupertinoTabBar(
                    items: MainScreenSettings.navbarItems(currentindex),
                  ),
                  tabBuilder: (BuildContext context, index) {
                    return MainScreenSettings.navbarPages(
                        devicesize, currentindex)[index];
                  }),
            ),
    );
  }
}
