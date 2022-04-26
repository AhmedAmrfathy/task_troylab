import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shanbwrog/ui/screens/Main_Activity_Screen/Fragments/House_Fragment.dart';

class MainScreenSettings {
  static List<Widget> navbarPages(Size devicesize, int currentindex) {
    return [
      Container(),
      Container(),
      Container(),
      Container(),
      HouseFragmentScreen(),
    ];
  }

  static List<BottomNavigationBarItem> navbarItems(int currentindex) {
    return [
      BottomNavigationBarItem(
          icon: currentindex == 0
              ? Image.asset('assets/icons/MainScreen_more_sel.png')
              : Image.asset('assets/icons/MainScreen_more.png'),
          label: 'المزيد'),
      BottomNavigationBarItem(
          icon: currentindex == 1
              ? Image.asset('assets/icons/MainScreen_cart-check_sel.png')
              : Image.asset('assets/icons/MainScreen_cart-check.png'),
          label: 'طلبات مسبقه'),
      BottomNavigationBarItem(
          icon: currentindex == 2
              ? Image.asset('assets/icons/MainScreen_sales_sel.png')
              : Image.asset('assets/icons/MainScreen_sales.png'),
          label: 'المبيعات'),
      BottomNavigationBarItem(
          icon: currentindex == 3
              ? Image.asset('assets/icons/MainScreen_wallet_sel.png')
              : Image.asset('assets/icons/MainScreen_wallet.png'),
          label: 'المحفظه'),
      BottomNavigationBarItem(
          icon: currentindex == 4
              ? Image.asset('assets/icons/MainScreen_house_sel.png')
              : Image.asset('assets/icons/MainScreen_house.png'),
          label: 'الرئيسيه')
    ];
  }
}
