import 'package:flutter/material.dart';
import 'package:mahanylast/GUI/compnents/Search.dart';

import 'Department.dart';




class Detail_Pag extends StatefulWidget {
 
  @override
  _Detail_PagState createState() => _Detail_PagState();
}

class _Detail_PagState extends State<Detail_Pag> {
  @override
  Widget build(BuildContext context) {
      return Column(children: <Widget>[
      Container(
        height: 110,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 10),
              child: Container(height: 37, width: 200, child: SearchPag()),
            ),
//                SizedBox(height: 30),
            Padding(
              padding:
                  const EdgeInsets.only(top: 65, bottom: 10, left: 4, right: 4),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          alignment: Alignment.centerRight,
                          width: 169,
                          height: 39,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffC9D3D6),
                                blurRadius: 6.0,
                                offset: Offset(0.0, 2.0),
                              ),
                            ],
                            color: Color(0xff3E6B6B),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: InkWell(
                              child: Center(
                                  child: new Text(
                                "فروع التعليم المهني",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffC9D3D6),
                                ),
                              )),
                              onTap: () { 
                                // if (depaetment.canLend(PagType.dept) == true) {
                                //   DepartmentPag(); 
                                // }
                              }),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: 169,
                          height: 39,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffC9D3D6),
                                blurRadius: 6.0,
                                offset: Offset(0.0, 2.0),
                              ),
                            ],
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: new InkWell(
                              child: Center(
                                  child: new Text(
                                "مدارس التعليم المهني",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff707070),
                                ),
                              )),
                              onTap: () {
                                // if (schools.canLend(PagType.school) == false) {
                                //   SchoolPag();
                                // }
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(child: DepartmentPag(),)
    ]);
  }
}
