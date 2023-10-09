import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JonmodinDetails extends StatefulWidget {
  const JonmodinDetails({super.key});

  @override
  State<JonmodinDetails> createState() => _JonmodinDetailsState();
}

class _JonmodinDetailsState extends State<JonmodinDetails> {
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
        title: const Text("আজ আপনার জন্মদিন হলে",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.0),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        color: Color(0xff303030),
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("images/home_img/jmdin.png",height: 200.0),
            Padding(
              padding: const EdgeInsets.only(left: 110),
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
                      fontSize: 25, color: Colors.blue),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return null;
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 15.0,),
            const Text("আজ আপনার জন্মদিন হলে",
                style: TextStyle(fontSize: 22.0, color: Colors.blue,fontWeight: FontWeight.w600)),
            SizedBox(height: 30.0,),
            Text("আজকের দিন- সতর্ক না থাকলে কর্মক্ষেত্রে সম্মানহানির যোগ। কোনও মহৎ ব্যক্তি যেচে আপনার উপকার করতে পারেন। চাকরিতে বদলি হওয়ার যোগ। সারা দিন ব্যবসায় উদ্বেগ দেখা যাবে। ব্যয় বেশি হওয়ায় বাড়িতে কলহ বাধাতে পারে। বন্ধুর পাশে দাঁড়াতে না পারায় মনঃকষ্ট। অতিরিক্ত পরিশ্রমে রক্তচাপ বৃদ্ধি পেতে পারে। প্রতিবেশীদের সঙ্গে ঝামেলা বাধতে পারে। বাড়িতে হঠাৎ অতিথি সমাগম।\n\nএই বছর– শরীর নিয়ে দুর্ভোগ। বাড়তি কাজের মূল্য পাবেন না। কর্মস্থানে কিছু পরিবর্তন হতে পারে। ব্যবসায় লাভ বৃদ্ধি। বাড়িতে চুরি থেকে সাবধান থাকুন। প্রিয়জনের প্রতি ক্ষোভ বাড়তে পারে। বছরের মধ্যভাগে আর্থিক চাপ বাড়তে পারে। কাজের সাফল্য পেতে দেরি হতে পারে। ব্যবসার ব্যাপারে কোনও নতুন খবর পেতে পারেন। প্রতিযোগিতায় জয়লাভ হতে পারে।\n\nচরিত্র- জাতক উদ্যমশীল, আনন্দপ্রিয়।স্বভাব-চরিত্র সহজে বোঝা যায় না। ব্যবসায় উন্নতি করেন। স্বাধীন ভাবে ব্যবসা করার চেয়ে যৌথ ব্যবসায় উন্নতি বেশি। সকলের জন্য চিন্তা করেন, তবে নিজের স্বার্থ ভাল বোঝেন। মানসিক দ্বন্দ্বের জন্য প্রায়শই উন্নতি ব্যাহত হয়। ব্যবসা প্রচারকর্তা, উকিল, এজেন্ট, জ্যোতিষী প্রভৃতি বৃত্তি নিলে জীবনে অবশ্যই উন্নতি করেন। একা থাকতে ভালবাসেন না। বন্ধুপ্রীতি অপরিসীম। ",
                style: TextStyle(fontSize: 20.0, color: Colors.grey.shade400,fontWeight: FontWeight.w400))

          ]),
        ),
      ),
    );
  }
}
