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
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
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
                              child: Image.asset(
                                  'assets/icons/MainScreen_user.png')),
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
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '12',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
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
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
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
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: LayoutBuilder(
            builder: (ctx, contraint) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 3 / 4.9),
                  itemBuilder: (ctx, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: MySettings.maincolor,
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(232, 248, 247, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: [
                                    Text(
                                      '200 kh',
                                      style: TextStyle(
                                          color: MySettings.maincolor),
                                    ),
                                    Icon(
                                      Icons.directions_run,
                                      color: MySettings.maincolor,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            'assets/images/MainScreen_product.png',
                            width: contraint.maxWidth * .8,
                            height: contraint.maxHeight * .4,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'شيبسى ليز جامبو',
                            style: TextStyle(fontSize: 17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'الكميه',
                                style: TextStyle(
                                    fontSize: 17, color: MySettings.maincolor),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 17, color: MySettings.maincolor),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.add_circle_rounded,
                                color: MySettings.maincolor,
                                size: 35,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '7.50',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: MySettings.maincolor),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'ريال ',
                                style: TextStyle(
                                    fontSize: 15, color: MySettings.maincolor),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  });
            },
          ),
        ))
      ],
    );
  }
}
