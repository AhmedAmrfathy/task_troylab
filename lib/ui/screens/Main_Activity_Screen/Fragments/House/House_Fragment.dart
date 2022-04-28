import 'package:flutter/material.dart';
import 'package:shanbwrog/Settings/MySettings.dart';
import 'package:shanbwrog/ui/screens/Main_Activity_Screen/Fragments/House/widgets/MainScreen_HouseFragment_Categories.dart';
import 'package:shanbwrog/ui/screens/Main_Activity_Screen/Fragments/House/widgets/MainScreen_HouseFragment_Header.dart';
import 'package:shanbwrog/ui/screens/Main_Activity_Screen/Fragments/House/widgets/MainScreen_HouseFragment_Products.dart';

class HouseFragmentScreen extends StatelessWidget {
  HouseFragmentScreen();

  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return Column(
      children: [
        HeaderWidget(),
        SizedBox(
          height: 25,
        ),
        CategoriesWidget(),
        SizedBox(
          height: 25,
        ),
        ProductsWidget()
      ],
    );
  }
}
