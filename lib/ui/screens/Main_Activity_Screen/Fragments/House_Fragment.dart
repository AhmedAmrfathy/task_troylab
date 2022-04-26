import 'package:flutter/material.dart';
import 'package:shanbwrog/Settings/MySettings.dart';

class HouseFragmentScreen extends StatelessWidget {
  HouseFragmentScreen();

  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: devicesize.width,
          decoration: BoxDecoration(color: MySettings.secondarycolor),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    Image.asset('assets/images/MainScreen_moqsf.png'),
                    Icon(
                      Icons.notifications_none_rounded,
                      color: MySettings.secondarycolor,
                      size: 35,
                    )
                  ],
                ),
              ),
              Container(
                width: devicesize.width,
                height: 1,
                color: Colors.lightGreenAccent,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(83, 186, 255, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                  'assets/icons/MainScreen_user.png')),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 200, 90, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 45,
                          ))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                                Spacer(),
                                Text(
                                  'اسم الطالب',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 150,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: MySettings.maincolor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          '12',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'رقم',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),

                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(.2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Image.network(
                          'https://www.pngmart.com/files/4/Child-PNG-File.png',
                          width: 55,
                          height: 55,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
