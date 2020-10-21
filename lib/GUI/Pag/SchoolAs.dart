//=======صفحة التفاصيل=======


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahanylast/GUI/compnents/Plac-map.dart';

import 'DashBord.dart';

class SchoolDetailPag extends StatefulWidget {
  final imgPath, title;
  SchoolDetailPag({this.imgPath, this.title});
  @override
  _SchoolDetailPagState createState() => _SchoolDetailPagState();
}

class _SchoolDetailPagState extends State<SchoolDetailPag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xffF6F6F6),
body: Column(children: [ Stack(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.imgPath),
                          fit: BoxFit.fitWidth),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Container(
                  child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(left: 30,right: 10),
                     child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DashBorad();
                        })); },
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                        color: Colors.white,
                      ),
                  ),
                   ),
             
               
                   Padding(
                     padding: const EdgeInsets.only(right:200),
                     child: new InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return LocationPlacePage();
                        }));
                      },
                      child: Icon(
                        Icons.location_on,
                        size: 25,
                        color: Color(0xffC9D3D6),
                      ),
                  ),
                   ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: InkWell(
                    onTap: () {
  //                  Navigator.push(context, MaterialPageRoute(builder: (context) {
  //                    return DashBorad();
  //                  }));
  
                    },
                    child: Icon(Icons.face,size: 25,
                      color: Colors.white),
                  ),
                                ),]),),
              ),
  
],),
              
  
  Expanded( child: Container(
    margin:EdgeInsets.only(top:4,left: 8,right: 8,bottom: 7), 
   decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffC9D3D6),
                      blurRadius: 6.0,
//                    spreadRadius: 5.0,
                      offset: Offset(0.0, 2.0),
                    ),
                  ],),
                    child: ListView(
  
                      physics: BouncingScrollPhysics(),
  
                      children: <Widget>[
  
                       ListTile(
                         title: Text( widget.title, 
                              textAlign: TextAlign.center,  
                              style: TextStyle(fontSize: 18,color: Color(0xff3E6B6B),),),
                          
                          subtitle: Text(
  
                            "اسست سنة 1970  الموقع القديم والكائن في صناعة وادي عكاب اما الموقع الحالي  تقع"
  
                            'لجانب الأيمن حي الصناعة القديمة  اقرب نقطة دالة جامع أبو زعيان  والذي تعرض للتدمير الكامل  جراء عمليات التحرير'
  
                            'ادناس داعش الإرهابي تاسست سنة 1980 '
  
                            "الفرع التجاري : ويحتوي على قسم التجارة فقط",
  
                            textAlign: TextAlign.right,
  
                            style:
  
                                TextStyle(color: Color(0xff3E6B6B), fontSize: 18),
  
                          ),
  
                        )
  
                      ],
  
                    ),
  
                  ),   
  
              ),          
  
 ] ),
);
  }
}
