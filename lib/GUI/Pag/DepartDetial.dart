import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahanylast/GUI/compnents/Search.dart';

import 'DeptName.dart';

class DeptDetial extends StatefulWidget {
  @override
  _DeptDetialState createState() => _DeptDetialState();
}

class _DeptDetialState extends State<DeptDetial> {
  List date = [
    "assats/imag/3.png",
    "assats/imag/3.png",
    "assats/imag/3.png",
    "assats/imag/3.png"
  ];
  List title = [
    "اجهزة طبية ",
    "اجهزة طبية ",
    "اجهزة طبية ",
    "اجهزة طبية ",
  ];
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
          "الاقسام",
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
      body: Column(children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
          child: Container(height: 37, width: 200, child: SearchPag()),
        ),
        Expanded(
          child: ListView.builder(
                          physics: BouncingScrollPhysics(),
              itemCount: date.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DeptName(imgPath: date[i], title: title[i]);
                      }),
                    );
                  },
                  child: _buildListItem(
                    date[i],
                    title[i],
                  ),
                );
              }),
        ),
      ]),
    );
  }

  _buildListItem(String imgPath, String title) {
    return Padding(
      padding:
          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffC9D3D6),
                  blurRadius: 6.0,
//                    spreadRadius: 5.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        
             Positioned(
              bottom: 5,
              left: 10,right: 10,
             child: Container(
                  height: 40,
                  width: 160,
                  color:Colors.white.withOpacity(0.4),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          wordSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
           ),
        ],
      ),
    );
  }
}
