import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutState();
  }
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(
          "حول التطبيق",
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
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Padding(
            padding: EdgeInsets.only(
              top: 15,
            ),
            child: new Column(
              children: <Widget>[
                new Container(
                  alignment: Alignment.center,
                  width: 400,
                  height: 160,
                  child: new Card(
                    color: Color(0xff3E6B6B),
                    child: new ListView(
                      children: <Widget>[
                        const ListTile(
                          //leading: Icon(Icons.album),
                          title: Text(
                            'تطبيق دليل التعليم المهني',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xffC9D3D6)),
                          ),
                          subtitle: Text(
                            "هو تطبيق يستخدم كدليل لطلب الثالث المتوسط اذا اردو التقديم "
                            '   للدراسة المهنية  لمعرفة الأقسام المتوفرة والمناهج والمدارس'
                            '  والقوانين المتعلقة بالتعليم المهني  وبنفس الوقت  دليل لطلاب'
                            '  المدارس المهنية لمعرفة  الكليات التي ممكن  لخريجي  هذه المدارس'
                            ' التقديم  عليها',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xffC9D3D6)),
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff3E6B6B),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                new Expanded(
                  child: Container(
                    child: new ListView(children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 30),
                        child: new Container(
                          height: 220,
                          width: 412,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xffF6F6F6),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff3E6B6B),
                                blurRadius: 2.0,
//                    spreadRadius: 5.0,
                                offset: Offset(0.0, 2.0),
                              ),
                            ],
                          ),
                          child: new Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text("Developer",
                                    style: TextStyle(
                                      color: Color(0xff3E6B6B),
                                      fontSize: 18,
                                    )),
                              ),
                              const ListTile(
                                contentPadding: EdgeInsets.only(
                                    top: 5, right: 10, bottom: 5, left: 10),
                                title: Text(
                                  "Fahad Mahfodh",
                                  style: TextStyle(
                                    color: Color(0xff3E6B6B),
                                    fontSize: 18,
                                    //fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                                subtitle: Text('Designer-Ui-UX'),
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assats/imag/fahad.jpg'),
                                  radius: 30,
                                ),
                              ),
                              const ListTile(
                                contentPadding: EdgeInsets.only(
                                    top: 5, right: 10, bottom: 5, left: 10),
                                title: Text(
                                  "Shahla Ali",
                                  style: TextStyle(
                                    color: Color(0xff3E6B6B),
                                    fontSize: 18,
                                    //fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                                subtitle: Text('Designer-Ui-UX'),
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assats/imag/shahla.jpg'),
                                  radius: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
