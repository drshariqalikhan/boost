
import 'package:boost/AbnAbgPages/Hagma.dart';
import 'package:boost/AbnAbgPages/HighAa.dart';
import 'package:boost/AbnAbgPages/Nagma.dart';
import 'package:boost/AbnAbgPages/NormalAa.dart';
import 'package:boost/AbnAbgPages/RespAcid.dart';
import 'package:boost/AbnAbgPages/RespAlk.dart';
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
         
          primarySwatch: Colors.blue,
        ),
        home:  Home(),
          
        routes: {
            '/sec':(context)=>SecondScreen(),
            '/Hagma':(context)=>Hagma(),
            '/Nagma':(context)=>Nagma(),
            '/RespAlk':(context)=>RespAlk(),
            '/RespAcid':(context)=>RespAcid(),
            '/HighAa':(context)=>HighAa(),
            '/NormalAa':(context)=>NormalAa(),
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
                   
                  ],
                ),
            ),
          ),
        
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
              // var nv = datamodel.pat.getAbgList()[3].toString();  
                print('next');
                    Navigator.pushNamed(context, '/sec');
                    // Navigator.pushNamed(context, '/$nv');

              }
            },
          ),
        
      ),
            
         
        
      );
  }
}



 getAbgFromData(ph,age){
    return ph+age;
}

getAbnAbgListfrom({age,ph,co2,bi,na,cl,alb,pao,spo,sao,fio}){
  List<String> outlist =[];
  List<String> abg1 = [];

  //Calc anion gap
  var cag = na - (cl+bi) + 2.5*(4-alb);
  print("cag:$cag");
  var v1 = cag - 12;
  var v2 = 24 - bi;
  var delta = v1/v2;
  print("Del:$delta");

// if (cag>11){
//   if(delta > 2){
//     abg1.add("HAGMA");
//     abg1.add("MetabAlk");
//   }else if (delta >= 0.8 && delta <=2){
//     abg1.add("HAGMA");
//   }else if (delta >= 0.4 && delta <0.8){
//     abg1.add("HAGMA");
//     abg1.add("NAGMA");
//   }else if (delta<0){
//     abg1.add("HAGMA");
//     abg1.add("MetabAlk");
//   }else{
//     abg1.add("NAGMA");
//   }
// }  

if(cag>11){
  if(delta <0.4){
    if(!abg1.contains("NAGMA")){abg1.add("NAGMA");}
  }
  else if(delta >= 0.4 && delta<=0.79){
    if(!abg1.contains("NAGMA")){abg1.add("NAGMA");}
    if(!abg1.contains("HAGMA") ){abg1.add("HAGMA");}
  }else if (delta>=0.8 && delta<2.0){
    if(!abg1.contains("HAGMA") ){abg1.add("HAGMA");}
  }else{
    if(!abg1.contains("HAGMA") ){abg1.add("HAGMA");}
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
       if(!abg1.contains("NAGMA")|| !abg1.contains("HAGMA") ){abg1.add("NAGMA");}
     }else if (co2<35){
       if(!abg1.contains("RespAlk")){abg1.add("RespAlk");}
       if(!abg1.contains("NAGMA")|| !abg1.contains("HAGMA") ){abg1.add("NAGMA");}

     }else{
        if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
       if(!abg1.contains("NAGMA")|| !abg1.contains("HAGMA") ){abg1.add("NAGMA");}

     }
   }

   //MetabAlk
   else if (ph>7.45 && bi>26){
      if(co2>=35 && co2<=45){
        if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}
      }else if (co2>45){
        if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}
        if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
      }else{
        
      }
   }

  //RespAcid
  else if (ph>=7.35 && co2>45){
   if(bi>26){
      if(!abg1.contains("RespAcid")){abg1.add("RespAcid");}
      // if(!abg1.contains("MetabAlk")){abg1.add("MetabAlk");}//part Compenst
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
      if(!abg1.contains("RespAlk")){abg1.add("RespAlk");}
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
  else{

  }
 


  return abg1;
}


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final datamodel = Provider.of<DataModel>(context);
     List a = datamodel.pat.getAbgList();
    return Scaffold(
      appBar: AppBar(title: TextField(onChanged: (v){datamodel.pat.setAge(double.tryParse(v));},),),
      // body: Text('${a.length}'),
      // body:Text(datamodel.pat.getAge().toString()),
      body: Center(child: Text(datamodel.pat.getAbgList().toString())),
      
    );
  }
}

