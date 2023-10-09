import 'package:flutter/material.dart';
import 'package:rashifal_app/screens/rashifal_details_page.dart';
import 'package:rashifal_app/utils/const_model.dart';
import 'package:rashifal_app/utils/const_model.dart';

import '../utils/const_model.dart';

class RashifalNirnoyPage extends StatefulWidget {
  const RashifalNirnoyPage({super.key});

  @override
  State<RashifalNirnoyPage> createState() => _RashifalNirnoyPageState();
}

class _RashifalNirnoyPageState extends State<RashifalNirnoyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_sharp,color: Colors.white,)),
        backgroundColor: const Color(0xffEC2E3B),
        title: Text("রাশিফল নির্ণয়",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.0),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        color: Color(0xff303030),
        child: ListView.separated(
          itemCount: rashifalNirnoyList.length,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 16,),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                index==0? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                  images: meshImages,
                  title: meshTitle,
                  details: meshDetails,
                ))):
                index==1? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                  images: breshImages,
                  title:breshTitle,
                  details: breshDetails,
                ))): index==2? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                  images: mithunImages,
                  title:mithunTitle,
                  details: mithunDetails,
                ))): index==3? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                images: crctImages,
                title:crctTitle,
                details: crctDetails,
                ))): index==4? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                images: singhoImages,
                title:singhoTitle,
                details: singhoDetails,
                ))): index==5? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                  images: konnaImages,
                  title:konnaTitle,
                  details: konnaDetails,
                ))): index==6? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                  images: tulaImages,
                  title:tulaTitle,
                  details: tulaDetails,
                ))): index==7? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                  images: brchikImages,
                  title:brchikTitle,
                  details: brchikDetails,
                ))): index==8? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                  images: dnkImages,
                  title:dnkTitle,
                  details: dnkDetails,
                ))): index==9? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                images: mkrImages,
                title:mkrTitle,
                details: mkrDetails,
                ))):index==10? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                images: kumboImages,
                title:kumboTitle,
                details: kumboDetails,
                ))):Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const RashifalDetailsPage(
                images: minImages,
                title:minTitle,
                details: minDetails,
                )));
              },
              child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              child: Row(
                children: [
                  Image.asset("${rashifalNirnoyList[index]["image"]}",height: 75.0,),
                  SizedBox(width: 15.0,),
                  Text("${rashifalNirnoyList[index]["name"]}",
                      style: TextStyle(fontSize: 18.0, color: Colors.grey.shade400)),
                ],
              ),
              ),
            );
          },
        ),
      ),
    );
  }
}
