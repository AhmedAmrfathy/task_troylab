import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shanbwrog/Settings/MySettings.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
        ));
  }
}
