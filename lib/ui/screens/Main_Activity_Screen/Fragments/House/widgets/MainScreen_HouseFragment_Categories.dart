import 'package:flutter/material.dart';
import 'package:shanbwrog/Settings/MySettings.dart';
class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return  Container(
      width: devicesize.width,
      height: devicesize.height * .08,
      margin: EdgeInsets.only(right: 15),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: MySettings.maincolor,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'الكل',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/MainScreen_pizza.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'بيتزا',
                        style: TextStyle(color: MySettings.maincolor),
                      ),
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
