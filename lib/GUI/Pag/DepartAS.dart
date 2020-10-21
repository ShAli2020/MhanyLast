import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DepartDetial.dart';

class DepartAs extends StatefulWidget {
  final imgPath, title;
  DepartAs({this.imgPath, this.title});
  @override
  _DepartAsState createState() => _DepartAsState();
}

class _DepartAsState extends State<DepartAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            
            Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.fitWidth),
                )),
                 Padding(
              padding: const EdgeInsets.only(top: 30, left:20,right:5),
                    child: Container(
                                child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),                            onPressed: () {
                              Navigator.of(context).pop();
                                                    }),
                      ),
                    ),
           Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                    height: 50,
                    width: 150,
                    child: Text(
                      " الفرع" + widget.title,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ]),
          Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 8, right: 7, left: 7, bottom: 8),
                decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffC9D3D6),
                        blurRadius: 6.0,
//                    spreadRadius: 5.0,
                        offset: Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 100,
                          child: Text(
                              "وهي مبادرة إنسانية غير ربحية تهدف الى خدمة المجتمع عن طريق البرمجة (Programming)  . "
                              " تعتبر (Code For Iraq) مبادرة تعليمية حقيقية ترعى المهتمين "
                              " بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال ومواقع الانترنت وبرامج الحاسوب والشبكات "
                              "   و الاتصالات و نظم  تشغيل لحاسوب باستخدام التقنيات مفتوحة المصدر  (Open Source)   ،"
                              " كما توفرلهم جميع الدروس التعليمية  اللازمة بشكل مجاني تماما ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff3E6B6B),
                                fontSize: 15,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
          
           Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff3E6B6B),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: new InkWell(
                        child: Center(
                            child: new Text(
                          "الاقسام",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DeptDetial();
                            }),
                          );
                        },
                      ),
                    ),
                  ),
        ],
      ),
    );
  }
}
