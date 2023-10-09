import 'package:flutter/material.dart';
import 'package:rashifal_app/screens/all_rashi_details_page.dart';
import 'package:rashifal_app/screens/barshik_rashifal_page.dart';
import 'package:rashifal_app/utils/const_model.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({super.key,
    required this.images,
    required this.title,
    required this.fromId,
  });
  final String images;
  final String title;
  final String fromId;

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
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
        title: Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.0),),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        color: Color(0xff303030),
        child: ListView.separated(
          itemCount: meshItemList.length,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 16,),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                index==0? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AllRashiDetailsPage(
                  images:widget.fromId=="001"?meshImg:
                  widget.fromId=="002"?breshDImg:
                  widget.fromId=="003"?mithunDImg:
                  widget.fromId=="004"?crctDImg:
                  widget.fromId=="005"?singhoDImg:
                  widget.fromId=="006"?konnaDImg:
                  widget.fromId=="007"?tulaDImg:
                  widget.fromId=="008"?brchikDImg:
                  widget.fromId=="009"?dnkDImg:
                  widget.fromId=="0010"?mkrDImg:
                  widget.fromId=="0011"?kumboDImg:
                  widget.fromId=="0012"?minDImg:
                  "",
                  topTitle:widget.fromId=="001"? meshToptitle:
                  widget.fromId=="002"?breshDToptitle:
                  widget.fromId=="003"?mithunDToptitle:
                  widget.fromId=="004"?crctDToptitle:
                  widget.fromId=="005"?singhoDToptitle:
                  widget.fromId=="006"?konnaDToptitle:
                  widget.fromId=="007"?tulaDToptitle:
                  widget.fromId=="008"?brchikDToptitle:
                  widget.fromId=="009"?dnkDToptitle:
                  widget.fromId=="0010"?mkrDToptitle:
                  widget.fromId=="0011"?kumboDToptitle:
                  widget.fromId=="0012"?minDToptitle:
                  "",
                  title: meshtitle,
                  subtitle: widget.fromId=="001"? meshSubTitle:
                  widget.fromId=="002"?breshDSubTitle:
                  widget.fromId=="003"?mithunDSubTitle:
                  widget.fromId=="004"?crctDSubTitle:
                  widget.fromId=="005"?singhoDSubTitle:
                  widget.fromId=="006"?konnaDSubTitle:
                  widget.fromId=="007"?tulaDSubTitle:
                  widget.fromId=="008"?brchikDSubTitle:
                  widget.fromId=="009"?dnkDSubTitle:
                  widget.fromId=="0010"?mkrDSubTitle:
                  widget.fromId=="0011"?kumboDSubTitle:
                  widget.fromId=="0012"?minDSubTitle:
                  "",
                  details:widget.fromId=="001"? meshDetail:
                  widget.fromId=="002"?breshDDetail:
                  widget.fromId=="003"?mithunDDetail:
                  widget.fromId=="004"?crctDDetail:
                  widget.fromId=="005"?singhoDDetail:
                  widget.fromId=="006"?konnaDDetail:
                  widget.fromId=="007"?tulaDDetail:
                  widget.fromId=="008"?brchikDDetail:
                  widget.fromId=="009"?dnkDDetail:
                  widget.fromId=="0010"?mkrDDetail:
                  widget.fromId=="0011"?kumboDDetail:
                  widget.fromId=="0012"?minDDetail:
                  "",
                ))):
                index==1? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AllRashiDetailsPage(
                  images: widget.fromId=="001"?meshImg:
                  widget.fromId=="002"?breshDImg:
                  widget.fromId=="003"?mithunDImg:
                  widget.fromId=="004"?crctDImg:
                  widget.fromId=="005"?singhoDImg:
                  widget.fromId=="006"?konnaDImg:
                  widget.fromId=="007"?tulaDImg:
                  widget.fromId=="008"?brchikDImg:
                  widget.fromId=="009"?dnkDImg:
                  widget.fromId=="0010"?mkrDImg:
                  widget.fromId=="0011"?kumboDImg:
                  widget.fromId=="0012"?minDImg:
                  "",
                  topTitle: widget.fromId=="001"? meshToptitle:
                  widget.fromId=="002"?breshDToptitle:
                  widget.fromId=="003"?mithunDToptitle:
                  widget.fromId=="004"?crctDToptitle:
                  widget.fromId=="005"?singhoDToptitle:
                  widget.fromId=="006"?konnaDToptitle:
                  widget.fromId=="007"?tulaDToptitle:
                  widget.fromId=="008"?brchikDToptitle:
                  widget.fromId=="009"?dnkDToptitle:
                  widget.fromId=="0010"?mkrDToptitle:
                  widget.fromId=="0011"?kumboDToptitle:
                  widget.fromId=="0012"?minDToptitle:
                  "",
                  title: meshStitle,
                  subtitle: "",
                  details:widget.fromId=="001"? meshSDetail:
                  widget.fromId=="002"?breshSDetail:
                  widget.fromId=="003"?mithunSDetail:
                  widget.fromId=="004"?crctSDetail:
                  widget.fromId=="005"?singhoSDetail:
                  widget.fromId=="006"?konnaSDetail:
                  widget.fromId=="007"?tulaSDetail:
                  widget.fromId=="008"?brchikSDetail:
                  widget.fromId=="009"?dnkSDetail:
                  widget.fromId=="0010"?mkrSDetail:
                  widget.fromId=="0011"?kumboSDetail:
                  widget.fromId=="0012"?minSDetail:
                  "",
                ))): index==2? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AllRashiDetailsPage(
                  images: widget.fromId=="001"?meshImg:
                  widget.fromId=="002"?breshDImg:
                  widget.fromId=="003"?mithunDImg:
                  widget.fromId=="004"?crctDImg:
                  widget.fromId=="005"?singhoDImg:
                  widget.fromId=="006"?konnaDImg:
                  widget.fromId=="007"?tulaDImg:
                  widget.fromId=="008"?brchikDImg:
                  widget.fromId=="009"?dnkDImg:
                  widget.fromId=="0010"?mkrDImg:
                  widget.fromId=="0011"?kumboDImg:
                  widget.fromId=="0012"?minDImg:
                  "",
                  topTitle: widget.fromId=="001"? meshToptitle:
                  widget.fromId=="002"?breshDToptitle:
                  widget.fromId=="003"?mithunDToptitle:
                  widget.fromId=="004"?crctDToptitle:
                  widget.fromId=="005"?singhoDToptitle:
                  widget.fromId=="006"?konnaDToptitle:
                  widget.fromId=="007"?tulaDToptitle:
                  widget.fromId=="008"?brchikDToptitle:
                  widget.fromId=="009"?dnkDToptitle:
                  widget.fromId=="0010"?mkrDToptitle:
                  widget.fromId=="0011"?kumboDToptitle:
                  widget.fromId=="0012"?minDToptitle:
                  "",
                  title: meshSPtitle,
                  subtitle: "",
                  details: widget.fromId=="001"? meshSPDetail:
                  widget.fromId=="002"?breshSPDetail:
                  widget.fromId=="003"?mithunSPDetail:
                  widget.fromId=="004"?crctSPDetail:
                  widget.fromId=="005"?singhoSPDetail:
                  widget.fromId=="006"?konnaSPDetail:
                  widget.fromId=="007"?tulaSPDetail:
                  widget.fromId=="008"?brchikSPDetail:
                  widget.fromId=="009"?dnkSPDetail:
                  widget.fromId=="0010"?mkrSPDetail:
                  widget.fromId=="0011"?kumboSPDetail:
                  widget.fromId=="0012"?minSPDetail:
                  "",
                ))): index==3? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AllRashiDetailsPage(
                  images: widget.fromId=="001"?meshImg:
                  widget.fromId=="002"?breshDImg:
                  widget.fromId=="003"?mithunDImg:
                  widget.fromId=="004"?crctDImg:
                  widget.fromId=="005"?singhoDImg:
                  widget.fromId=="006"?konnaDImg:
                  widget.fromId=="007"?tulaDImg:
                  widget.fromId=="008"?brchikDImg:
                  widget.fromId=="009"?dnkDImg:
                  widget.fromId=="0010"?mkrDImg:
                  widget.fromId=="0011"?kumboDImg:
                  widget.fromId=="0012"?minDImg:
                  "",
                  topTitle: widget.fromId=="001"? meshToptitle:
                  widget.fromId=="002"?breshDToptitle:
                  widget.fromId=="003"?mithunDToptitle:
                  widget.fromId=="004"?crctDToptitle:
                  widget.fromId=="005"?singhoDToptitle:
                  widget.fromId=="006"?konnaDToptitle:
                  widget.fromId=="007"?tulaDToptitle:
                  widget.fromId=="008"?brchikDToptitle:
                  widget.fromId=="009"?dnkDToptitle:
                  widget.fromId=="0010"?mkrDToptitle:
                  widget.fromId=="0011"?kumboDToptitle:
                  widget.fromId=="0012"?minDToptitle:
                  "",
                  title: meshYtitle,
                  subtitle: "",
                  details:widget.fromId=="001"? meshYDetail:
                  widget.fromId=="002"?breshYDetail:
                  widget.fromId=="003"?mithunYDetail:
                  widget.fromId=="004"?crctYDetail:
                  widget.fromId=="005"?singhoYDetail:
                  widget.fromId=="006"?konnaYDetail:
                  widget.fromId=="007"?tulaYDetail:
                  widget.fromId=="008"?brchikYDetail:
                  widget.fromId=="009"?dnkYDetail:
                  widget.fromId=="0010"?mkrYDetail:
                  widget.fromId=="0011"?kumboYDetail:
                  widget.fromId=="0012"?minYDetail:
                  "",
                ))): index==4? Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AllRashiDetailsPage(
                  images: widget.fromId=="001"?meshImg:
                  widget.fromId=="002"?breshDImg:
                  widget.fromId=="003"?mithunDImg:
                  widget.fromId=="004"?crctDImg:
                  widget.fromId=="005"?singhoDImg:
                  widget.fromId=="006"?konnaDImg:
                  widget.fromId=="007"?tulaDImg:
                  widget.fromId=="008"?brchikDImg:
                  widget.fromId=="009"?dnkDImg:
                  widget.fromId=="0010"?mkrDImg:
                  widget.fromId=="0011"?kumboDImg:
                  widget.fromId=="0012"?minDImg:
                  "",
                  topTitle:widget.fromId=="001"? meshToptitle:
                  widget.fromId=="002"?breshDToptitle:
                  widget.fromId=="003"?mithunDToptitle:
                  widget.fromId=="004"?crctDToptitle:
                  widget.fromId=="005"?singhoDToptitle:
                  widget.fromId=="006"?konnaDToptitle:
                  widget.fromId=="007"?tulaDToptitle:
                  widget.fromId=="008"?brchikDToptitle:
                  widget.fromId=="009"?dnkDToptitle:
                  widget.fromId=="0010"?mkrDToptitle:
                  widget.fromId=="0011"?kumboDToptitle:
                  widget.fromId=="0012"?minDToptitle:
                  "",
                  title: meshMtitle,
                  subtitle: "",
                  details: widget.fromId=="001"? meshMDetail:
                  widget.fromId=="002"?breshMDetail:
                  widget.fromId=="003"?mithunMDetail:
                  widget.fromId=="004"?crctMDetail:
                  widget.fromId=="005"?singhoMDetail:
                  widget.fromId=="006"?konnaMDetail:
                  widget.fromId=="007"?tulaMDetail:
                  widget.fromId=="008"?brchikMDetail:
                  widget.fromId=="009"?dnkMDetail:
                  widget.fromId=="0010"?mkrMDetail:
                  widget.fromId=="0011"?kumboMDetail:
                  widget.fromId=="0012"?minMDetail:
                  "",
                ))):Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BarshikRashiFalPage(
                    images: widget.fromId=="001"?meshImg:
                    widget.fromId=="002"?breshDImg:
                    widget.fromId=="003"?mithunDImg:
                    widget.fromId=="004"?crctDImg:
                    widget.fromId=="005"?singhoDImg:
                    widget.fromId=="006"?konnaDImg:
                    widget.fromId=="007"?tulaDImg:
                    widget.fromId=="008"?brchikDImg:
                    widget.fromId=="009"?dnkDImg:
                    widget.fromId=="0010"?mkrDImg:
                    widget.fromId=="0011"?kumboDImg:
                    widget.fromId=="0012"?minDImg:
                    "",
                  topTitle: widget.fromId=="001"? meshToptitle:
                  widget.fromId=="002"?breshDToptitle:
                  widget.fromId=="003"?mithunDToptitle:
                  widget.fromId=="004"?crctDToptitle:
                  widget.fromId=="005"?singhoDToptitle:
                  widget.fromId=="006"?konnaDToptitle:
                  widget.fromId=="007"?tulaDToptitle:
                  widget.fromId=="008"?brchikDToptitle:
                  widget.fromId=="009"?dnkDToptitle:
                  widget.fromId=="0010"?mkrDToptitle:
                  widget.fromId=="0011"?kumboDToptitle:
                  widget.fromId=="0012"?minDToptitle:
                  "",
                  title: meshYearstitle,
                  subtitle: "",
                  detailsY: widget.fromId=="001"? meshYearsDetail:
                  widget.fromId=="002"?breshYearsDetail:
                  widget.fromId=="003"?mithunYearsDetail:
                  widget.fromId=="004"?crctYearsDetail:
                  widget.fromId=="005"?singhoYearsDetail:
                  widget.fromId=="006"?konnaYearsDetail:
                  widget.fromId=="007"?tulaYearsDetail:
                  widget.fromId=="008"?brchikYearsDetail:
                  widget.fromId=="009"?dnkYearsDetail:
                  widget.fromId=="0010"?mkrYearsDetail:
                  widget.fromId=="0011"?kumboYearsDetail:
                  widget.fromId=="0012"?minYearsDetail:
                  "",
                  detailsP: widget.fromId=="001"? meshYearsDetailP:
                  widget.fromId=="002"?breshYearsDetailP:
                  widget.fromId=="003"?mithunYearsDetailP:
                  widget.fromId=="004"?crctYearsDetailP:
                  widget.fromId=="005"?singhoYearsDetailP:
                  widget.fromId=="006"?konnaYearsDetailP:
                  widget.fromId=="007"?tulaYearsDetailP:
                  widget.fromId=="008"?brchikYearsDetailP:
                  widget.fromId=="009"?dnkYearsDetailP:
                  widget.fromId=="0010"?mkrYearsDetailP:
                  widget.fromId=="0011"?kumboYearsDetailP:
                  widget.fromId=="0012"?minYearsDetailP:
                  "",
                  detailsC:widget.fromId=="001"? meshYearsDetailC:
                  widget.fromId=="002"?breshYearsDetailC:
                  widget.fromId=="003"?mithunYearsDetailC:
                  widget.fromId=="004"?crctYearsDetailC:
                  widget.fromId=="005"?singhoYearsDetailC:
                  widget.fromId=="006"?konnaYearsDetailC:
                  widget.fromId=="007"?tulaYearsDetailC:
                  widget.fromId=="008"?brchikYearsDetailC:
                  widget.fromId=="009"?dnkYearsDetailC:
                  widget.fromId=="0010"?mkrYearsDetailC:
                  widget.fromId=="0011"?kumboYearsDetailC:
                  widget.fromId=="0012"?minYearsDetailC:
                  "",
                  detailsE:widget.fromId=="001"? meshYearsDetailE:
                  widget.fromId=="002"?breshYearsDetailE:
                  widget.fromId=="003"?mithunYearsDetailE:
                  widget.fromId=="004"?crctYearsDetailE:
                  widget.fromId=="005"?singhoYearsDetailE:
                  widget.fromId=="006"?konnaYearsDetailE:
                  widget.fromId=="007"?tulaYearsDetailE:
                  widget.fromId=="008"?brchikYearsDetailE:
                  widget.fromId=="009"?dnkYearsDetailE:
                  widget.fromId=="0010"?mkrYearsDetailE:
                  widget.fromId=="0011"?kumboYearsDetailE:
                  widget.fromId=="0012"?minYearsDetailE:
                  "",
                  detailsM:widget.fromId=="001"? meshYearsDetailM:
                  widget.fromId=="002"?breshYearsDetailM:
                  widget.fromId=="003"?mithunYearsDetailM:
                  widget.fromId=="004"?crctYearsDetailM:
                  widget.fromId=="005"?singhoYearsDetailM:
                  widget.fromId=="006"?konnaYearsDetailM:
                  widget.fromId=="007"?tulaYearsDetailM:
                  widget.fromId=="008"?brchikYearsDetailM:
                  widget.fromId=="009"?dnkYearsDetailM:
                  widget.fromId=="0010"?mkrYearsDetailM:
                  widget.fromId=="0011"?kumboYearsDetailM:
                  widget.fromId=="0012"?minYearsDetailM:
                  "",
                  detailsF:widget.fromId=="001"? meshYearsDetailF:
                  widget.fromId=="002"?breshYearsDetailF:
                  widget.fromId=="003"?mithunYearsDetailF:
                  widget.fromId=="004"?crctYearsDetailF:
                  widget.fromId=="005"?singhoYearsDetailF:
                  widget.fromId=="006"?konnaYearsDetailF:
                  widget.fromId=="007"?tulaYearsDetailF:
                  widget.fromId=="008"?brchikYearsDetailF:
                  widget.fromId=="009"?dnkYearsDetailF:
                  widget.fromId=="0010"?mkrYearsDetailF:
                  widget.fromId=="0011"?kumboYearsDetailF:
                  widget.fromId=="0012"?minYearsDetailF:
                  "",
                  detailsMrg:widget.fromId=="001"? meshYearsDetailMrg:
                  widget.fromId=="002"?breshYearsDetailMrg:
                  widget.fromId=="003"?mithunYearsDetailMrg:
                  widget.fromId=="004"?crctYearsDetailMrg:
                  widget.fromId=="005"?singhoYearsDetailMrg:
                  widget.fromId=="006"?konnaYearsDetailMrg:
                  widget.fromId=="007"?tulaYearsDetailMrg:
                  widget.fromId=="008"?brchikYearsDetailMrg:
                  widget.fromId=="009"?dnkYearsDetailMrg:
                  widget.fromId=="0010"?mkrYearsDetailMrg:
                  widget.fromId=="0011"?kumboYearsDetailMrg:
                  widget.fromId=="0012"?minYearsDetailMrg:
                  "",
                  detailsMed:widget.fromId=="001"? meshYearsDetailMed:
                  widget.fromId=="002"?breshYearsDetailMed:
                  widget.fromId=="003"?mithunYearsDetailMed:
                  widget.fromId=="004"?crctYearsDetailMed:
                  widget.fromId=="005"?singhoYearsDetailMed:
                  widget.fromId=="006"?konnaYearsDetailMed:
                  widget.fromId=="007"?tulaYearsDetailMed:
                  widget.fromId=="008"?brchikYearsDetailMed:
                  widget.fromId=="009"?dnkYearsDetailMed:
                  widget.fromId=="0010"?mkrYearsDetailMed:
                  widget.fromId=="0011"?kumboYearsDetailMed:
                  widget.fromId=="0012"?minYearsDetailMed:
                  "",
                  detailsLodu:widget.fromId=="001"? meshYearsDetailLodu:
                  widget.fromId=="002"?breshYearsDetailLodu:
                  widget.fromId=="003"?mithunYearsDetailLodu:
                  widget.fromId=="004"?crctYearsDetailLodu:
                  widget.fromId=="005"?singhoYearsDetailLodu:
                  widget.fromId=="006"?konnaYearsDetailLodu:
                  widget.fromId=="007"?tulaYearsDetailLodu:
                  widget.fromId=="008"?brchikYearsDetailLodu:
                  widget.fromId=="009"?dnkYearsDetailLodu:
                  widget.fromId=="0010"?mkrYearsDetailLodu:
                  widget.fromId=="0011"?kumboYearsDetailLodu:
                  widget.fromId=="0012"?minYearsDetailLodu:
                  "",
                )));
              },
              child: Container(
                padding: EdgeInsets.only(left: 10.0,top: 5.0,bottom: 5.0),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
                    Image.asset(widget.images,height: 70.0,),
                    SizedBox(width: 15.0,),
                    Text("${meshItemList[index]["name"]}",
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
