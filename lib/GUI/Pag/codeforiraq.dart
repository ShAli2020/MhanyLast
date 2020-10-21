import 'package:flutter/material.dart';

class CodeForIQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "  من نحن ؟",
          textAlign: TextAlign.center,
          style: new TextStyle(
            color: Color(0xff3E6B6B),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xffF6F6F6),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff3E6B6B)),
        elevation: 0,
      ),
      backgroundColor: Color(0xffF6F6F6),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.0,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff3E6B6B),
                    blurRadius: 2.0,
//                    spreadRadius: 5.0,
                    offset: Offset(0.0, 2.0),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assats/imag/codeforiraq.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xffF6F6F6),
                borderRadius: BorderRadius.circular(19.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff3E6B6B),
                    blurRadius: 2.0,
//                    spreadRadius: 5.0,
                    offset: Offset(0.0, 2.0),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 50,
                      child: new Text(
                        "Code For Iraq",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff3E6B6B),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 35,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(
                        "وهي مبادرة إنسانية غير ربحية تهدف الى خدمة المجتمع عن طريق البرمجة (Programming)  . "
                        " تعتبر (Code For Iraq) مبادرة تعليمية حقيقية ترعى المهتمين "
                        " بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال ومواقع الانترنت وبرامج الحاسوب والشبكات "
                        "   و الاتصالات و نظم  تشغيل لحاسوب باستخدام التقنيات مفتوحة المصدر  (Open Source)   ،"
                        " كما توفرلهم جميع الدروس التعليمية  اللازمة بشكل مجاني تماما ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff3E6B6B),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
