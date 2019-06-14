
import 'package:boost/AbnAbgPages/Hagma.dart';
import 'package:boost/AbnAbgPages/HighAa.dart';
import 'package:boost/AbnAbgPages/MetabAlk.dart';
import 'package:boost/AbnAbgPages/Nagma.dart';
import 'package:boost/AbnAbgPages/NormalAa.dart';
import 'package:boost/AbnAbgPages/RespAcid.dart';
import 'package:boost/AbnAbgPages/RespAlk.dart';
import 'package:boost/Result.dart';
import 'package:boost/components/QuestionCard.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataModel>(
      builder: (_)=>DataModel(),
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         floatingActionButtonTheme: FloatingActionButtonThemeData(
           
           backgroundColor: Colors.amber,
          //  shape: BeveledRectangleBorder(),
           ),
          primarySwatch: Colors.blue,
        ),
        // home: Home(),
        home: Nagma(),
        debugShowCheckedModeBanner: false,
      
          
        routes: {
            '/res':(context)=>Results(),
            '/Hagma':(context)=>Hagma(),
            '/Nagma':(context)=>Nagma(),
            '/MetabAlk':(context)=>MetabAlk(),
            '/RespAlk':(context)=>RespAlk(),
            '/RespAcid':(context)=>RespAcid(),
            '/HighAa':(context)=>HighAa(),
            '/NormalAa':(context)=>NormalAa(),
            '/home':(context)=>Home(),
          }
          ),
          );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);
    return  Container(

      child: Scaffold(
        appBar: AppBar(),
        body:Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(child: Text('ph'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'Arterial Ph'),
                            onChanged: (v)=>datamodel.pat.setPh(double.tryParse(v)),
                            ),  
                      ),
                      ListTile(
                        leading: CircleAvatar(child: Text('CO2'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'CO2'),
                             onChanged: (v)=>datamodel.pat.setCo2(double.tryParse(v)),
                            ),   
                      ),
                   
                      ListTile(
                        leading: CircleAvatar(child: Text('Bi'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'bi'),
                            onChanged: (v)=>datamodel.pat.setBi(double.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('k'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'k'),
                            onChanged: (v)=>datamodel.pat.setK(double.tryParse(v)),
                              ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('na'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'na'),
                            onChanged: (v)=>datamodel.pat.setNa(double.tryParse(v)),
                              ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('cl'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'cl'),
                            onChanged: (v)=>datamodel.pat.setCl(double.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('alb'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'alb'),
                            onChanged: (v)=>datamodel.pat.setAlb(double.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('pao'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'pao'),
                            onChanged: (v)=>datamodel.pat.setPao(double.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('spo'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'spo'),
                            onChanged: (v)=>datamodel.pat.setSpo(double.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('sao'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'sao'),
                            onChanged: (v)=>datamodel.pat.setSao(double.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('fio'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'fio'),
                            onChanged: (v)=>datamodel.pat.setFio(double.tryParse(v)),
                            ),   
                      ),
                       ListTile(
                        leading: CircleAvatar(child: Text('age'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'age'),
                            onChanged: (v)=>datamodel.pat.setAge(double.tryParse(v)),
                            ),   
                      ),  
                       ListTile(
                        leading: CircleAvatar(child: Text('Wt'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'Wt'),
                            onChanged: (v)=>datamodel.pat.setWt(double.tryParse(v)),
                            ),   
                      ),  
                       ListTile(
                        leading: CircleAvatar(child: Text('Ht'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'Ht'),
                            onChanged: (v)=>datamodel.pat.setHt(double.tryParse(v)),
                            ),   
                      ),
                       ListTile(
                        leading: CircleAvatar(child: Text('SBP'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'SBP'),
                            onChanged: (v)=>datamodel.pat.setSbp(double.tryParse(v)),
                            ),   
                      ),    
                       ListTile(
                        leading: CircleAvatar(child: Text('DBP'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'DBP'),
                            onChanged: (v)=>datamodel.pat.setDbp(double.tryParse(v)),
                            ),   
                      ),  
                       ListTile(
                        leading: CircleAvatar(child: Text('HR'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'HR'),
                            onChanged: (v)=>datamodel.pat.setHr(double.tryParse(v)),
                            ),   
                      ),  
                       ListTile(
                        leading: CircleAvatar(child: Text('RR'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'RR'),
                            onChanged: (v)=>datamodel.pat.setRr(double.tryParse(v)),
                            ),   
                      ),
                       ListTile(
                        leading: CircleAvatar(child: Text('T'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'Temp'),
                            onChanged: (v)=>datamodel.pat.setTemp(double.tryParse(v)),
                            ),   
                      ),  
                      ListTile(
                        leading: CircleAvatar(child: Text('glu'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'Glucose'),
                            onChanged: (v)=>datamodel.pat.setGlu(double.tryParse(v)),
                            ),   
                      ),
                        ListTile(
                        leading: CircleAvatar(child: Text('Wcc'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'Wcc'),
                            onChanged: (v)=>datamodel.pat.setWcc(double.tryParse(v)),
                            ),   
                      ),
                       ListTile(
                        leading: CircleAvatar(child: Text('Cr'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'Cr'),
                            onChanged: (v)=>datamodel.pat.setCr(double.tryParse(v)),
                            ),   
                      ),

                       QuestionCard(
                        Question: "Is the patient a Black?",
                        handleQ: (val)=>datamodel.setisBlack(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.getisBlack(),
                      ),
                       QuestionCard(
                        Question: "Is the patient a Male?",
                        handleQ: (val)=>datamodel.setisMale(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.getisMale(),
                      ),
                       QuestionCard(
                        Question: "Does the patient have a cough?",
                        handleQ: (val)=>datamodel.sethasCough(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasCough(),
                      ),
                       QuestionCard(
                        Question: "Does the patient have a Hemoptysis?",
                        handleQ: (val)=>datamodel.sethasHemoptysis(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasHemoptysis(),
                      ),


                       QuestionCard(
                        Question: "Does the patient have Shortness of breath?",
                        handleQ: (val)=>datamodel.sethasDyspnoea(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasDyspnoea(),
                      ),
                          QuestionCard(
                        Question: "Are there equal Breath-Sounds on both sides of chest?",
                        handleQ: (val)=>datamodel.sethasBLBreathSounds(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasBLBreathSounds(),
                      ),
                          QuestionCard(
                        Question: "is there any wheeze/rhonchi?",
                        handleQ: (val)=>datamodel.sethasRhonchi(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasRhonchi(),
                      ),
                          QuestionCard(
                        Question: "are there BL crepts in chest?",
                        handleQ: (val)=>datamodel.sethasBLCrepts(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasBLCrepts(),
                      ),
                         QuestionCard(
                        Question: "are there UL crepts in chest?",
                        handleQ: (val)=>datamodel.sethasULCrepts(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasULCrepts(),
                      ),
                       QuestionCard(
                        Question: "Does the patient have any chest pain?",
                        handleQ: (val)=>datamodel.sethasChestPain(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasChestPain(),
                      ),

                        QuestionCard(
                        Question: "Does the patient have any malignancy?",
                        handleQ: (val)=>datamodel.sethasMalig(val),
                        QuestionFontsize: 20.0,
                        qValue: datamodel.pat.gethasMalig(),
                      ),
                      
                      QuestionCard(
                      Question: "Does the Patient have CHF or IHD?",             
                      handleQ: (val)=>datamodel.sethasHistOfCHFIHD(val),
                      QuestionFontsize: 20.0,
                      qValue: datamodel.pat.gethasHistOfCHFIHD(),
                      ),


                      
                      QuestionCard(
                      Question: "Has the patient had an acute Gi Fluid loss like diarrhoea or vomitting?",             
                      handleQ: (val)=>datamodel.sethasAcuteGiFluidLoss(val),
                      QuestionFontsize: 20.0,
                      qValue: datamodel.pat.gethasAcuteGiFluidLoss(),
                      ),

                      QuestionCard(
                      Question: "Does the patient have COPD?",
                      handleQ: (val)=>datamodel.sethasCopd(val),
                      QuestionFontsize: 20.0,
                      qValue: datamodel.pat.gethasCopd(),
                    ),

                        QuestionCard(
                      Question: "Does the Patient have Asthma?",
                      handleQ: (val)=>datamodel.sethasAsthma(val),
                      QuestionFontsize: 20.0,
                      qValue: datamodel.pat.gethasAsthma(),
                    ),

                   
              QuestionCard(
               Question: "Does the Patient have H/o DVT or PE?",             
               handleQ: (val)=>datamodel.sethasHistOfDVTPE(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHistOfDVTPE(),
               ),

              QuestionCard(
               Question: "Has the patient has any recent (<1mo) surgery or lower limb fracture?",             
               handleQ: (val)=>datamodel.sethasHistOfRecentSxOrFrac(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHistOfRecentSxOrFrac(),
               ),

              QuestionCard(
               Question: "Does the patient have U/L lower limb pain?",             
               handleQ: (val)=>datamodel.sethasUlLLPain(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasUlLLPain(),
               ), 

               QuestionCard(
               Question: "Does the patient have pain on pressing the calves?",             
               handleQ: (val)=>datamodel.sethasCalfTenderness(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasCalfTenderness(),
               ),

                
             QuestionCard(
               Question: "Is the patient Intubated?",             
               handleQ: (val)=>datamodel.setisIntubated(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisIntubated(),
               ),

                  ],
                ),
            ),
          ),
        // floatingActionButton:  FloatingActionButton(
        //   onPressed: (){
        //     // print('age:${datamodel.pat.getAge()}\n ismale:${datamodel.pat.getisMale()} \n isblack:${datamodel.pat.getisBlack()} \n cr: ${datamodel.pat.getCr()}');
        //     // print(datamodel.pat.getGfr().toString());
        //     print(datamodel.pat.getAnionGap().toString());
        //   },
        // ),
          floatingActionButton: FloatingActionButton(

            child: Icon(Icons.arrow_forward),
            onPressed: (){
              print('ph:${datamodel.pat.getPh().toString()} age:${datamodel.pat.getAge().toString()}');
              
              
              if(datamodel.pat.getPh()!=null){
              // var ab = getAbgFromData(datamodel.pat.getPh(),datamodel.pat.getAge());
              // List valList = getAbnAbgListfrom(datamodel.pat.getPh());
              List valList = getAbnAbgListfrom(
                age: datamodel.pat.getAge(),
                alb: datamodel.pat.getAlb(),
                bi: datamodel.pat.getBi(),
                cl: datamodel.pat.getCl(),
                co2: datamodel.pat.getCo2(),
                fio: datamodel.pat.getFio(),
                na: datamodel.pat.getNa(),
                pao: datamodel.pat.getPao(),
                ph: datamodel.pat.getPh(),
                sao: datamodel.pat.getSao(),
                spo: datamodel.pat.getSpo()

              );
              // datamodel.pat.setAbgList(valList);
              datamodel.pat.setAbgList(valList);
              datamodel.pat.setNavAbglist(valList);
              datamodel.pat.getGfr();
              // var nv = datamodel.pat.getAbgList()[3].toString();  
                print('${datamodel.pat.getNavAbglist()}');
                print('${datamodel.pat.getAbgList()}');
                    // Navigator.pushNamed(context, '/sec');
                    Navigator.pushNamed(context, '/${datamodel.pat.getNavAbglist()[0]}');

              }
            },
          ),
        
      ),
            
        
        
      );
  }
}






 getCorrectedAaGradFrom(pao,co2,fio,age){

   var a= fio*713;
   var b = co2/0.8;
   var pa = a-b;
   var actAaGrad = pa-pao;
   var expAaGrad = (age/4)+4+50*(fio-0.21);

   var diff = expAaGrad-actAaGrad; 
   return diff.abs();
    
}


getAbnAbgListfrom({age,ph,co2,bi,na,cl,alb,pao,spo,sao,fio}){
  List<String> outlist =[];
  List<String> abg1 = [];

  //AAgrad
  var aagrad = getCorrectedAaGradFrom(pao, co2, fio, age);


  

  //Calc anion gap
  var cag = na - (cl+bi) + 2.5*(4-alb);
  print("cag:$cag");
  var v1 = cag - 12;
  var v2 = 24 - bi;
  var delta = v1/v2;
  delta = delta.abs();
  print("Del:$delta");



if(cag>11){
    if(delta<=0.79){
    if(!abg1.contains("Nagma")){abg1.add("Nagma");}
    if(!abg1.contains("Hagma") ){abg1.add("Hagma");}
  }else if (delta>=0.8 && delta<2.0){
    if(!abg1.contains("Hagma") ){abg1.add("Hagma");}
  }else{
    if(!abg1.contains("Hagma") ){abg1.add("Hagma");}
    if(!abg1.contains("MetabAlk") ){abg1.add("MetabAlk");}

  }
}

  //if ph is between 7.35-7.45 and co2 is between 35-45 and bi 22-26 
  // Normal 
  if (ph>=7.35 && ph <=7.45 && co2>=35 && co2<=45 && bi>=22 && bi<=26){
    if (abg1.length == 0){
      abg1.add("Normal");
    }
  }
  
 
  
   //NAGMA
   else if (ph<7.35 && bi<22){
     if(co2>=35 && co2<=45){
       if(!abg1.contains("Nagma")|| !abg1.contains("Hagma") ){abg1.add("Nagma");}
     }else if (co2<35){
       var expco2 = 1.5*bi + 8;
       var co_diff = expco2-co2;
       if(!abg1.contains("RespAlk") && co_diff.abs()>2 ){abg1.add("RespAlk");}
      //  if(!abg1.contains("Nagma")|| !abg1.contains("Hagma") ){abg1.add("Nagma");}
      if(!abg1.contains("Hagma") && !abg1.contains('Nagma') ){abg1.add("Nagma");}

     }else{
        if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
       if(!abg1.contains("Nagma") && !abg1.contains("Hagma") ){abg1.add("Nagma");}

     }
   }

   //MetabAlk
   else if (ph>7.45 && bi>26){
      if(co2>=35 && co2<=45){
        if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}
      }else if (co2>45){
        var expco2 = 0.7*bi +20;
        double co_diff = co2-expco2;
        if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}
        if(!abg1.contains("RespAcid") && co_diff.abs()>5){abg1.add("RespAcid");}
      }else{
        
      }
   }

  //RespAcid
  else if (ph<=7.35 && co2>45){
   if(bi>26){
      var expbi = 24+((co2-40)/10);
      print("ex:$expbi, ac:$bi");
      if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
      if(!abg1.contains("MetabAlk") && bi !=expbi){abg1.add("MetabAlk");}//part Compenst
   }else if (bi>=22 && bi<=26){
     if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
   }else{
     if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
    //  if(!abg1.contains("MetabAcid")){abg1.add("MetabAcid");}//Combined acid
   }
  }

  //RespAlk
  else if(ph>7.45 && co2<35){
    if(bi>=22 && bi<=26){
       if(!abg1.contains("RespAlk")){abg1.add("RespAlk");}
    }else if (bi<22){
      var expbi = 24-2*((40-co2)/10);
      if(!abg1.contains("RespAlk") ){abg1.add("RespAlk");}
     
      if(!abg1.contains("Nagma") && bi!=expbi){abg1.add("Nagma");}
    }else{
      if(!abg1.contains("RespAlk")){abg1.add("RespAlk");}
      if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}
    }
  }

  //Compensated Abg
  //MetabAcid
  else if(ph>=7.35 && ph<=7.39 && bi<22 && co2<35){
    if(!abg1.contains("RespAlk")){abg1.add("RespAlk");}
    //?NAGMA
  }
  else if(ph>=7.35 && ph<=7.39 && bi>22 && co2>45){
    
     if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
      if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}
  }
  else if(ph>=7.40 && ph<=7.45 && bi>26 && co2>35){
    
     if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
      if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}
  }
  else if(ph>=7.40 && ph<=7.45 && bi>22 && co2<35){
    
     if(!abg1.contains("RespAlk")){abg1.add("RespAlk");}
     
  }
  if(aagrad>10){
    if(!abg1.contains("HighAa")){abg1.add("HighAa");}
  }else{
    if(!abg1.contains("NormalAa")){abg1.add("NormalAa");}
  }
 


  return abg1;
}


// class Results extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//      final datamodel = Provider.of<DataModel>(context);
//      List a = datamodel.pat.getAbgList();
//     return Scaffold(
//       appBar: AppBar(title:Text(this.toString())),
//       // body: Text('${a.length}'),
//       // body:Text(datamodel.pat.getAge().toString()),
//       body: Center(child: Text(datamodel.pat.getAbgList().toString())),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           datamodel.initList();
//           Navigator.pushNamed(context, '/home');
//         },
//       ),
      
//     );
//   }
// }

