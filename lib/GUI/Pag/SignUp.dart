import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DashBord.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  void _submit() {
    setState(() {
      if (_emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        title: new Text(
          "دليل التعليم المهني",
          textAlign: TextAlign.center,
          style: new TextStyle(
            color: Color(0xff3E6B6B),
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff3E6B6B)),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: <Widget>[
          ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 100, bottom: 50),
                child: Container(
                  height: 52,
                  width: 100,
                  child: new Text(
                    "أنشاء حساب",
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
                  height: 260,
                  width: 335,
                  child: Column(
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
                            child: TextField(
                              textInputAction:  TextInputAction.next,
                                          controller: _usernameController,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              decoration: new InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Color(0xffC9D3D6),
                                  ),
                                  contentPadding: EdgeInsets.only(
                                      top: 12, bottom: 12, left: 12),
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Icon(Icons.perm_identity,
                                        size: 20, color: Color(0xffC9D3D6)),
                                  ),
                                  hintText: 'اسم المستخدم',
                                  alignLabelWithHint: true,
                                  filled: true,
                                  fillColor: Color(0xff3E6B6B),
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(25),  )
                                  ),
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
                                                          textInputAction:  TextInputAction.next,
                            controller: _emailController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                            decoration: new InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    top: 12, bottom: 12, left: 12),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Icon(Icons.email,
                                      size: 20, color: Color(0xffC9D3D6)),
                                ),
                                hintStyle: TextStyle(
                                  color: Color(0xffC9D3D6),
                                ),
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
                            top: 10, right: 25, left: 25, bottom: 15),
                        child: Container(
                          height: 45,
                          width: 335,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            textAlign: TextAlign.center,
                           textInputAction:  TextInputAction.next,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: new InputDecoration(
                              contentPadding: EdgeInsets.only(
                                top: 12,
                                bottom: 12,
                                left: 12,
                              ),
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
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15, right: 110, left: 110),
                          child: Container(
                            width: 130,
                            height: 44,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffF2AD64),
                                  blurRadius: 10.0,
                                  offset: Offset(0.0, 3.0),
                                ),
                              ],
                              color: Color(0xffF2AD64),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: new InkWell(
                              child: Center(
                                  child: new Text(
                                "أنشاء",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return new DashBorad();
                                  }),
                                );
                              },
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
