import 'package:flutter/material.dart';

class SearchPag extends StatefulWidget {
  @override
  _SearchPagState createState() => _SearchPagState();
}

class _SearchPagState extends State<SearchPag> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 80,
                    decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffC9D3D6),
                              blurRadius: 6)
                        ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,),
                          child: TextFormField(textAlign: TextAlign.center,
                                                        textInputAction:  TextInputAction.search,
                            decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 12),
                               border: InputBorder.none,
                              hintText: "بحث",
                              alignLabelWithHint: true,
                              hintStyle: TextStyle(color:Colors.black.withOpacity(0.5))
                            ),
                          ),
                        ),
                  );
  }
}
