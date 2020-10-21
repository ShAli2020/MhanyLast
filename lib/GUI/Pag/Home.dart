import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPag.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
        elevation: 0,
        centerTitle: true,
        title: new Text(
          "دليل التعليم المهني",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
//                      wordSpacing: 1.0,
              fontWeight: FontWeight.w900,
//                      fontFamily:Cairo,
              color: Color(0xff3E6B6B)),
        ),
      ),
      backgroundColor: Color(0xffF6F6F6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
                height: 163,
                width: 167,
                child: Image.asset(
                  "assats/imag/logo.png",
                  width: 155,
                  height: 163,
                )),
          ),
          Container(
            height: 320,
            width: 404,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 50,
                    child: new Text(
                      "التعليم المهني في العراق",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff3E6B6B)),
                    ),
                  ),
                ),
                Container(
                  height: 240,     
                  width: 390,
                  child: Padding(
                    padding: const EdgeInsets.only(right:5.0,left: 5.0),
                    child: new Text(
                      "يحظى التعليم المهني في العراق باهتمامٍ كبير، وذلك لكونه واحداً من المجالات المتاحة لكسب المعرفة والخبرة العلميّة والعمليّة في ميادين مختلفة، "
                      "ومدخلاً يتيح للمتدرب "
                      "الاحتكاك بشكلٍ مباشرٍ ببيئة العمل وفقاً لتخصصه، وذلك من خلال تنظيم الزيارات"
                      " إلى المؤسسات والدوائر الحكومية والأهلية المتعلقة بمجال الدراسة، وتطبيق الخبرات فيها ضمن ورشات عمليّة، مما يعزز المفاهيم ويرسّخها وينعش الخبرات لدى المتدربين،"
                      " وأبرز ما يميّزه أنه يشتمل على العديد من الأقسام والمجالات، وذلك ليتماشى مع الاهتمامات المختلفة للطلاب المنتسبين إليه. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff3E6B6B)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 2, right: 110, left: 110),
              child: Container(
                width: 130,
                height: 44,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffF2AD64),
                      blurRadius: 20.0,
                      offset: Offset(0.0, 3.0),
                    ),
                  ],
                  color: Color(0xffF2AD64),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: new InkWell(
                  child: Center(
                      child: new Text(
                    "الدخول",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
//                      fontFamily: ,
                      color: Colors.white,
                    ),
                  )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return new Login();
                      }),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
