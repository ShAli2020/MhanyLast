import 'package:flutter/material.dart';
import 'package:mahanylast/GUI/Pag/CallMe.dart';

class Profile extends StatefulWidget {
//  static Route<dynamic> route() => MaterialPageRoute(
//    builder: (context) => Profile(),
//  );
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
//
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: 250,
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xff3E6B6B),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: new InkWell(
                  child: Center(
                      child: new Text(
                    "تغير كلمة السر",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffC9D3D6),
                    ),
                  )),
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: 250,
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xff3E6B6B),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: new InkWell(
                  child: Center(
                      child: new Text(
                    "أتصل بنا",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffC9D3D6),
                    ),
                  )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return new CallMe();
                      }),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: 250,
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xffCE1127),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: new InkWell(
                  child: Center(
                      child: new Text(
                    "تسجيل الخروج",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffC9D3D6),
                    ),
                  )),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
