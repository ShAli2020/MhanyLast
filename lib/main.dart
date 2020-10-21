import 'package:flutter/material.dart';

import 'GUI/Pag/DashBord.dart';
import 'GUI/Pag/Detail_Pag.dart';
import 'GUI/Pag/Home.dart';
import 'GUI/compnents/Profile.dart';

void main() => runApp(MaterialApp(
//  debugShowCheckedModeBanner: false,
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
//        theme: ThemeData(
//          textTheme: TextTheme(
//            title: TextStyle(color: Color(0xff3E6B6B), fontFamily: "Cairo"),
//            subtitle: TextStyle(color: Color(0xff3E6B6B), fontFamily: "Cairo"),
//          ),
//          primaryColor: Color(0xffF6F6F6),
//        ),
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child,
          );
        },
        routes: <String, WidgetBuilder>{
          '/Dash': (BuildContext context) => DashBorad(),
          '/Start': (BuildContext context) => Detail_Pag(),
          '/Profil': (BuildContext context) => Profile(),
        },
        home: Home());
  }
}
