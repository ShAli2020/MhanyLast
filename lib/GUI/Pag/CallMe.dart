import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallMe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return CallMeState();
  }
}

class CallMeState extends State<CallMe> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _supjectController = new TextEditingController();
  TextEditingController _massagController = new TextEditingController();

  void _submit() {
    setState(() {
      if (_emailController.text.isNotEmpty &&
          _usernameController.text.isNotEmpty) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(children: [
        Container(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
                child: Container(
                  height: 50,
                  width: 200,
                  child: new Text(
                    "دليل التعليم المهني",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Color(0xff3E6B6B),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Container(
                  height: 50,
                  child: new Text(
                    "أتصل بنا",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: new TextStyle(
                        color: Color(0xff3E6B6B),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 25, left: 25, bottom: 8),
                  child: Container(
                    height: 45,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextFormField(
                      controller: _usernameController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      textInputAction:  TextInputAction.next,
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(
                            color: Color(0xffC9D3D6),
                          ),
                          contentPadding:
                              EdgeInsets.only(top: 12, bottom: 12, left: 12),
                          hintText: 'الاسم الكامل',
                          alignLabelWithHint: true,
                          filled: true,
                          fillColor: Color(0xff3E6B6B),
                          border:InputBorder.none
                          //  OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 25, left: 25, bottom: 8),
                  child: Container(
                    height: 45,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextFormField(
                      controller: _usernameController,
                      textAlign: TextAlign.center,
                      textInputAction:  TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(
                            color: Color(0xffC9D3D6),
                          ),
                          contentPadding:
                              EdgeInsets.only(top: 12, bottom: 12, left: 12),
                          hintText: 'البريد الالكتروني',
                          alignLabelWithHint: true,
                          filled: true,
                          fillColor: Color(0xff3E6B6B),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, right: 25, left: 25, bottom: 8),
                  child: Container(
                    height: 45,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextFormField(
                      controller: _supjectController,
                      textAlign: TextAlign.center,
                       textInputAction:  TextInputAction.next,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(
                            color: Color(0xffC9D3D6),
                          ),
                          contentPadding:
                              EdgeInsets.only(top: 12, bottom: 12, left: 12),
                          hintText: 'الموضوع',
                          alignLabelWithHint: true,
                          filled: true,
                          fillColor: Color(0xff3E6B6B),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, right: 25, left: 25, bottom: 5),
                        child: TextFormField(
                       textInputAction:  TextInputAction.done, 
                      //  maxLength: 4,
                                              maxLines:6,
                        controller: _massagController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: new InputDecoration(
                          contentPadding:
                              EdgeInsets.only(top: 12, bottom: 12, right: 12),
                          labelText: "الرسالة",
                          labelStyle: TextStyle(
                            fontSize: 20,
                            color: Color(0xffC9D3D6),
                          ),
                          alignLabelWithHint: true,
                          filled: true,
                          fillColor: Color(0xff3E6B6B),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, right: 110, left: 110),
                    child: Container(
                      width: 130,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xffF2AD64),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: new InkWell(
                          child: Center(
                              child: new Text(
                            "أرسال",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                          onTap: () {}),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
