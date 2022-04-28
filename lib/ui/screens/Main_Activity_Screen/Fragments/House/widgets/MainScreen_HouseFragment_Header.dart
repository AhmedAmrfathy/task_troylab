import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shanbwrog/Settings/MySettings.dart';
import 'package:shanbwrog/ui/screens/Main_Activity_Screen/Fragments/House/widgets/MainScreen_HouseFragment_Products.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;

    return Container(
      width: devicesize.width,
      decoration: BoxDecoration(color: MySettings.secondarycolor),
      child: Column(
        children: [
          MainScreenAppbar(),
          Container(
            width: devicesize.width,
            height: 1,
            color: Colors.lightGreenAccent,
          ),
          SearchWidget(),
          SizedBox(
            height: 5,
          ),
          OrderWidget(),
        ],
      ),
    );
  }
}

class MainScreenAppbar extends StatelessWidget {
  const MainScreenAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.notifications_none_rounded,
            color: MySettings.secondarycolor,
            size: 35,
          ),
          Image.asset(
            'assets/images/MainScreen_moqsf.png',
            width: 120,
            height: 40,
          ),
          Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 5,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'اسم الطالب',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ],
                  ),
                ),
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
              flex: 1,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(83, 186, 255, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset('assets/icons/MainScreen_user.png')),
              )),
        ],
      ),
    );
  }
}

class OrderWidget extends StatelessWidget {
  const OrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;

    return Container(
      height: 150,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: MySettings.maincolor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: devicesize.width * .7,
                child: Row(
                  children: [
                    Text(
                      'رقم',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '12',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Text(
                'محمد احمد على',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    'الرصيد',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('30 ريال '),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'الحد اليومى',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('10 ريال '),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
