import 'package:flutter/material.dart';

class BarshikRashiFalPage extends StatefulWidget {
  const BarshikRashiFalPage({super.key,
    required this.images,
    required this.topTitle,
    required this.title,
    required this.subtitle,
    required this.detailsY,
    required this.detailsP,
    required this.detailsC,
    required this.detailsE,
    required this.detailsM,
    required this.detailsF,
    required this.detailsMrg,
    required this.detailsMed,
    required this.detailsLodu,
  });
  final String images;
  final String topTitle;
  final String title;
  final String subtitle;
  final String detailsY;
  final String detailsP;
  final String detailsC;
  final String detailsE;
  final String detailsM;
  final String detailsF;
  final String detailsMrg;
  final String detailsMed;
  final String detailsLodu;

  @override
  State<BarshikRashiFalPage> createState() => _BarshikRashiFalPageState();
}

class _BarshikRashiFalPageState extends State<BarshikRashiFalPage> {
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
        title: Text(widget.topTitle,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.0),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        color: const Color(0xff121212),
        child: SingleChildScrollView(
          child: Column(
              children: [
                const SizedBox(height: 20.0,),
                Image.asset(widget.images,height: 90.0,),
                const SizedBox(height: 10.0,),
              Text(widget.title,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsY,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/love.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("প্রেম রাশিফল",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsP,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/career.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("ক্যারিয়ার রাশিফল",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsC,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/edu.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("শিক্ষা রাশিফল",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsE,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/money.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("আর্থিক রাশিফল",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsM,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/family.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("পারিবারিক রাশিফল",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsF,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/marriage.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("বিবাহ রাশিফল",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsMrg,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/mdcn.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("স্বাস্থ্য রাশিফল",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsMed,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),

                const SizedBox(height: 20.0,),
                Image.asset("images/years_img/lodu.png",height: 90.0,),
                const SizedBox(height: 20.0,),
                const Text("ভাগ্যশালী অংক",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
                const SizedBox(height: 20.0,),
                Text(widget.detailsLodu,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),),
              ]
          ),
        ),
      ),
    );
  }
}
