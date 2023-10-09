import 'package:flutter/material.dart';
import 'package:rashifal_app/screens/common_page.dart';
import 'package:rashifal_app/screens/jonmodin_details.dart';
import 'package:rashifal_app/screens/rashifal_nirnoy_page.dart';
import 'package:rashifal_app/utils/const_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEC2E3B),
        title: const Text("রাশিফল",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.0),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 6.0),
        color: const Color(0xff303030),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 25.0, // spacing between rows
            crossAxisSpacing: 20.0,
            mainAxisExtent: 155// spacing between columns
          ),
          padding: const EdgeInsets.all(8.0), // padding around the grid
          itemCount:homePageItemList.length, // total number of items
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
               index==0? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RashifalNirnoyPage())):
               index==1? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: meshImg,
                 title: meshTitle,
                   fromId:"001"
               ))):
               index==2? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: breshImages,
                 title: breshTitle,
                   fromId:"002"
               ))):
               index==3? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: mithunImages,
                 title: mithunTitle,
                   fromId:"003"
               ))):
               index==4? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: crctImages,
                 title: crctTitle,
                   fromId:"004"
               ))):
               index==5? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: singhoImages,
                 title: singhoTitle,
                   fromId:"005"
               ))):
               index==6? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: konnaImages,
                 title: konnaTitle,
                   fromId:"006"
               ))):
               index==7? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: tulaImages,
                 title: tulaTitle,
                   fromId:"007"
               ))):
               index==8? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: brchikImages,
                 title: brchikTitle,
                   fromId:"008"
               ))):
               index==9? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: dnkImages,
                 title: dnkTitle,
                   fromId:"009"
               ))):
               index==10? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: mkrImages,
                 title: mkrTitle,
                   fromId:"0010"
               ))):
               index==11? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: kumboImages,
                 title: kumboTitle,
                   fromId:"0011"
               ))):
               index==12? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const CommonPage(
                 images: minImages,
                 title: minTitle,
                   fromId:"0012"
               ))):
               Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const JonmodinDetails()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff424242),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),// color of grid items
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0,),
                      Image.asset("${homePageItemList[index]["image"]}",height: 80.0,),
                      const SizedBox(height: 10.0,),
                      Text(
                       "${homePageItemList[index]["name"]}",
                        style:  TextStyle(fontSize: 16.0, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
