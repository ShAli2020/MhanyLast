import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahanylast/GUI/Pag/About.dart';
import 'package:mahanylast/GUI/Pag/codeforiraq.dart';

class MYdrwer extends StatefulWidget {
  @override
  _MYdrwerState createState() => _MYdrwerState();
}

class _MYdrwerState extends State<MYdrwer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: new Drawer(
                child: new Container(
                    padding: EdgeInsets.only(top: 40, right: 20),
                    child: new ListView(children: <Widget>[
//                          new Divider(
//                            endIndent: (10),
//                          ),
                      ListTile(
                        contentPadding: EdgeInsets.only(top: 1, bottom: 1),
                        title: Text(
                          "حول التطبيق",
                          style: TextStyle(
                              fontSize: 20.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E6B6B)),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return new About();
                            }),
                          );
                        },
                      ),

//                          ListTile(
//                            contentPadding:EdgeInsets.only(top: 1, bottom:1),
//                            title: Text(
//                              "فريق العمل",
//                              style: TextStyle(
//                                  fontSize: 20.0,
//                                  wordSpacing: 1.0,
//                                  fontWeight: FontWeight.bold,
//                                  color: Color(0xff3E6B6B)),                            ),
//
//                            // onTap: () { /* react to the tile being tapped */ }
//                          ),

                      ListTile(
                        contentPadding: EdgeInsets.only(top: 1, bottom: 1),
                        title: Text(
                          "حول المبادرة",
                          style: TextStyle(
                              fontSize: 20.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E6B6B)),
                        ),

                         onTap: () {  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) {
                                                      return new CodeForIQ();
                                                    }),
                                                  ); }
                      ),

                      ListTile(
                        contentPadding: EdgeInsets.only(top: 1, bottom: 1),
                        title: Text(
                          "قيم التطبيق",
                          style: TextStyle(
                              fontSize: 20.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E6B6B)),
                        ),

                        // onTap: () { /* react to the tile being tapped */ }
                      ),
                      // ListTile(
                      //   contentPadding: EdgeInsets.only(top: 1, bottom: 1),
                      //   title: Text(
                      //     "أتصل بنا",
                      //     style: TextStyle(
                      //         fontSize: 20.0,
                      //         wordSpacing: 1.0,
                      //         fontWeight: FontWeight.bold,
                      //         color: Color(0xff3E6B6B)),
                      //   ),
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) {
                      //         return new CallMe();
                      //       }),
                      //     );
                      //   },
                      // ),
                     
                    ])))));
  }
}
