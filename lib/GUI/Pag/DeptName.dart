import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

import 'Sebjects.dart';

class DeptName extends StatefulWidget {
  final imgPath, title;
  DeptName({this.imgPath, this.title});
  @override
  _DeptNameState createState() => _DeptNameState();
}

class _DeptNameState extends State<DeptName> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.fitWidth),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Container(
//                alignment: Alignment.topLeft,
//      padding: EdgeInsets.only(left: 20),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                    height: 50,
                    width: 150,
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ]),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 4, right: 7, left: 7, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffC9D3D6),
                      blurRadius: 6.0,
                      offset: Offset(0.0, 2.0),
                    ),
                  ],
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Container(
                        height: 50,
                        width: 100,
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff3E6B6B),
                          ),
                        )),
                    Container(
                      child: Text(
                        "وهي مبادرة إنسانية غير ربحية تهدف الى خدمة المجتمع عن طريق البرمجة (Programming)  . "
                        " تعتبر (Code For Iraq) مبادرة تعليمية حقيقية ترعى المهتمين "
                        " بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال ومواقع الانترنت وبرامج الحاسوب والشبكات "
                        "   و الاتصالات و نظم  تشغيل لحاسوب باستخدام التقنيات مفتوحة المصدر  (Open Source)   ،"
                        " كما توفرلهم جميع الدروس التعليمية  اللازمة بشكل مجاني تماما ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff3E6B6B)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff3E6B6B),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: new InkWell(
                        child: Center(
                            child: new Text(
                          "المعلومات",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffC9D3D6),
                          ),
                        )),
                        onTap: () {createFileOfPdfUrl().then((path) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FullPdfViewerScreen(pathPDF, "المعلومات")),
          );
        });},
                                                        ),
                                                      
                                                    ),
                                                  ),
                                                                                              Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: 100,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff3E6B6B),
                                                      borderRadius: BorderRadius.circular(25.0),
                                                    ),
                                                    child: new InkWell(
                                                      child: Center(
                                                          child: new Text(
                                                        "المناهج",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Color(0xffC9D3D6),
                                                        ),
                                                      )),
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (context) {
                                                            return Sebject();
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: 100,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff3E6B6B),
                                                      borderRadius: BorderRadius.circular(25.0),
                                                    ),
                                                    child: new InkWell(
                                                      child: Center(
                                                          child: new Text(
                                                        "الكليات",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Color(0xffC9D3D6),
                                                        ),
                                                      )),
                                                       onTap: () {createFileOfPdfUrl().then((path) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FullPdfViewerScreen(pathPDF, "الكليات")),
          );
        });},
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
                              
                              class FullPdfViewerScreen extends StatelessWidget {
  final String pdfPath;
final String title;
    FullPdfViewerScreen( this.pdfPath,this.title );

  @override
  Widget build(BuildContext context) {
    return  PDFViewerScaffold(
       appBar:AppBar(
         
          title: new Text(
   title ,   
 textAlign: TextAlign.center,
            style: new TextStyle(
              color: Color(0xffF6F6F6),
              fontSize: 20,
            ),
          ),
          backgroundColor: Color(0xff3E6B6B),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xffF6F6F6)),
          elevation: 4,
        ),
               path: pdfPath
     
    );
  }
}

