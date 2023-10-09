import 'package:flutter/material.dart';

class RashifalDetailsPage extends StatefulWidget {
  const RashifalDetailsPage({super.key,
    required this.images,
    required this.title,
    required this.details,});
  final String images;
  final String title;
  final String details;

  @override
  State<RashifalDetailsPage> createState() => _RashifalDetailsPageState();
}

class _RashifalDetailsPageState extends State<RashifalDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_sharp,color: Colors.white,)),
        backgroundColor: const Color(0xffEC2E3B),
        title: const Text("রাশিফল বিস্তারিত",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.0),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        color: const Color(0xff121212),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 20.0,),
            Image.asset(widget.images,height: 90.0,),
            const SizedBox(height: 20.0,),
            Text(widget.title,style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
            const SizedBox(height: 20.0,),
            Text(widget.details,textAlign: TextAlign.start,style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.w400,fontSize: 20.0),)
            ,const SizedBox(height: 20.0,),
          ]),
        ),
      ),
    );
  }
}
