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
        elevation: 0,
      ),
      backgroundColor: Color(0xffF6F6F6),
      drawer: new Drawer(
        elevation: 30.0,
        child: MYdrwer(),
      ),
      body: pages[selectedPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xffC9D3D6),
                blurRadius: 8.0,
                offset: Offset(0.0, -3.0),
              ),
            ],
          ),
          child: BottomNavigationBar(
              selectedItemColor: Color(0xff3E6B6B),
              unselectedItemColor: Colors.grey,
              iconSize: 30,
              currentIndex: selectedPage,
              type: BottomNavigationBarType.fixed,
              onTap: (change) {
                setState(() {
                  selectedPage = change;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_back_ios), label: ('')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_on), label: ('')),
                BottomNavigationBarItem(icon: Icon(Icons.face), label: ('')),
              ]),
        ),
      ),
    );
  }
}
