import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mahanylast/GUI/compnents/Search.dart';
import 'package:path_provider/path_provider.dart';

import 'DeptName.dart';
class FirstClass extends StatefulWidget {
  @override
  _FirstClassState createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
    String pathPDF = "";
  
void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    final url = "http://africau.edu/images/default/sample.pdf";
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }

  List title = [
    "التربية الاسلامية ",
    "التربية الاسلامية ",
    "التربية الاسلامية ",
    "التربية الاسلامية "
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
          "المرحلة الاولى",
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
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: title.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {createFileOfPdfUrl().then((path) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FullPdfViewerScreen(pathPDF,title[i])),
          );
        });},
       
                                      
                  child: _buildListItem(title[i],),);
                
              }),
        ),
      ]),
    );
  }

  _buildListItem(String title) {
    return Padding(
      padding:
          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xff3E6B6B),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffC9D3D6),
                  blurRadius: 6.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 80.0,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage("assats/School/book.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        height: 30,
                        width: 160,
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              wordSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
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
    );
  }
}

 