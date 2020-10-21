import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FirstClass.dart';


class Sebject extends StatefulWidget {
  @override
  _SebjectState createState() => _SebjectState();
}

class _SebjectState extends State<Sebject> {

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
          "المناهج",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FirstClass();
                }),
              );
            },
            child: _CardItem("assats/School/books.jpg", "المرحلة الاولى"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FirstClass();
                }),
              );
            },
            child: _CardItem("assats/School/books.jpg", "المرحلة الثانية"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FirstClass();
                }),
              );
            },
            child: _CardItem("assats/School/books.jpg", "المرحلة الثالثة"),
          ),
        ]),
      ),
    );
  }

  _CardItem(String imgPath, String title) {
    return Padding(
      padding:
          EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0, bottom: 15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 130,
            width: 364,
            decoration: BoxDecoration(
              color: Color(0xff3E6B6B),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffC9D3D6),
                  blurRadius: 6.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 80.0,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 30,
                      width: 130,
                      child: Center(
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
