import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SchoolAs.dart';

class SchoolPag extends StatefulWidget {
//  SchoolPag();

  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => SchoolPag(),
      );
  @override
  _SchoolPagState createState() => _SchoolPagState();
}

class _SchoolPagState extends State<SchoolPag> {
  List date = [
    "assats/School/1.jpg",
    "assats/School/1.jpg",
    "assats/School/1.jpg",
    "assats/School/1.jpg"
  ];
  List title = [
    " الجزيرة المهنية ",
    " الجزيرة المهنية ",
    " الجزيرة المهنية ",
    " الجزيرة المهنية "
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: date.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SchoolDetailPag(imgPath: date[i], title: title[i]);
                }),
              );
            },
            child: _buildListItem(
              date[i],
              title[i],
            ),
          );
        });
  }

  _buildListItem(String imgPath, String title) {
    return Padding(
      padding: EdgeInsets.only(left: 7.0, right: 7.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 204.0,
            width: 199,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffC9D3D6),
                  blurRadius: 6.0,
                  offset: Offset(0.0, 3.0),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 30,
              width: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  color: Color(0xffF6F6F6)),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.0,
                      wordSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
