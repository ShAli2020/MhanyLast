import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahanylast/GUI/compnents/Drawer.dart';
import 'package:mahanylast/GUI/compnents/Profile.dart';

import 'Detail_Pag.dart';

class DashBorad extends StatefulWidget {
  @override
  _DashBoradPageState createState() => _DashBoradPageState();
}

class _DashBoradPageState extends State<DashBorad> {
  List pages = [
    Detail_Pag(),
    Profile(),
  ];
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: new Text(
          "دليل التعليم المهني",
          textAlign: TextAlign.center,
          style: new TextStyle(
            color: Color(0xff3E6B6B),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xffF6F6F6),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff3E6B6B)),
        elevation: 4,
      ),
      backgroundColor: Color(0xffF6F6F6),
      drawer: new Drawer(
        elevation: 30.0,
        child: MYdrwer(),
      ),
      body: pages[selectedPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            boxShadow: [
              BoxShadow(
                color: Color(0xf000000),
                blurRadius: 50,
                offset: Offset(0.0, -5.0),
              ),
            ],
          ),
          child: Center(
            child: BottomNavigationBar(
                selectedItemColor: Color(0xff3E6B6B),
                unselectedItemColor: Color(0xffC9D3D6),
                iconSize: 30,
                currentIndex: selectedPage,
                type: BottomNavigationBarType.fixed,
                onTap: (change) {
                  setState(() {
                    selectedPage = change;
                  });
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ('')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline), label: ('')),
                ]),
          ),
        ),
      ),
    );
  }
}
