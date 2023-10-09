import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AllRashiDetailsPage extends StatefulWidget {
  const AllRashiDetailsPage({super.key,
  required this.images,
    required this.topTitle,
    required this.title,
    required this.subtitle,
    required this.details,
  });
  final String images;
  final String topTitle;
  final String title;
  final String subtitle;
  final String details;

  @override
  State<AllRashiDetailsPage> createState() => _AllRashiDetailsPageState();
}

class _AllRashiDetailsPageState extends State<AllRashiDetailsPage> {
  String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());

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
        padding: EdgeInsets.all(20.0),
        color: const Color(0xff121212),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 20.0,),
            Image.asset(widget.images,height: 90.0,),
            const SizedBox(height: 20.0,),
            Text(widget.title,style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
            const SizedBox(height: 10.0,),
            Text(widget.subtitle,style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20.0),),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: TextFormField(
                onTap: (){
                 // currentDate;
                },
                enabled: false,
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.only(top: 0, left: 5),
                  filled: true,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none),
                  hintText: currentDate,
                  hintStyle: const TextStyle(
                      fontSize: 20, color: Colors.blue),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return null;
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20.0,),
            Text(widget.details,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 20.0),)
          ]),
        ),
      ),
    );
  }
}
