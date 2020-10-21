import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
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

