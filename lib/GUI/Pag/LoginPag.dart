import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  void _submit() {
    setState(() {
      if (_usernameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: new Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
            child: Container(
              height: 250,
              width: 300,
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
          ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 150, bottom: 50),
                child: Container(
                  width: 100,
                  height: 52,
                  child: new Text(
                    "تسجيل الدخول",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: new TextStyle(
                        color: Color(0xff3E6B6B),
                        fontSize: 28,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 335,
                  height: 240,
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
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
                              obscureText: true,
                              decoration: new InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 12, bottom: 12, left: 12),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Icon(Icons.perm_identity,
                                        size: 20, color: Color(0xffC9D3D6)),
                                  ),
                                  hintText: 'اسم المستخدم',
                                  hintStyle: TextStyle(
                                    color: Color(0xffC9D3D6),
                                  ),
                                  alignLabelWithHint: true,
                                  filled: true,
                                  fillColor: Color(0xff3E6B6B),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
//                          borderSide: BorderSide(color: Color(0xff3E6B6B) ),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 25, left: 25, bottom: 8),
                          child: Container(
                            height: 45,
                            width: 335,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextFormField(
                              controller: _passwordController,
                              textInputAction:  TextInputAction.next,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: false,
                              decoration: new InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    top: 12, bottom: 12, left: 12),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 20,
                                    color: Color(0xffC9D3D6),
                                  ),
                                ),
                                hintStyle: TextStyle(
                                  color: Color(0xffC9D3D6),
                                ),
                                hintText: 'كلمة السر',
                                filled: true,
                                fillColor: Color(0xff3E6B6B),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 28, left: 28, bottom: 10),
                          child: new Container(
                            height: 50, width: 300,
//
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: _submit,
                                    child: Container(
//                              color: Color(0xffF2AD64),
                                      width: 130, height: 44,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffF2AD64),
                                            blurRadius: 10.0,
                                            offset: Offset(0.0, 3.0),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xffF2AD64),
                                      ),
                                      child: Center(
                                        child: new Text(
                                          "تسجيل ",
                                          textAlign: TextAlign.center,
                                          style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
//                                Expanded(
//                                  flex: 1,
//                                  child:
                                SizedBox(
                                  width: 50,
                                ),
//                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          return new SignUp();
                                        }),
                                      );
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                            color: Color(0xff3E6B6B)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: new Text(
                                          "أنشاء ",
                                          textAlign: TextAlign.center,
                                          style: new TextStyle(
                                            color: Color(0xff3E6B6B),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: new Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  child: new Text(
                                    'Facebook',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff3E6B6B),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    print("Clicked");
                                  },
                                ),
                                new Text(
                                  "or connect with",
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.ltr,
                                  style: new TextStyle(
                                    color: Color(0xff3E6B6B),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
