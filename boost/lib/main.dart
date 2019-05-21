
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
                            // onChanged: (v)=>datamodel.addValuetoData(double.tryParse(v)),
                            onChanged: (v)=>datamodel.pat.setAge(double.tryParse(v)),
                            ),  
                      ),
                      ListTile(
                        leading: CircleAvatar(child: Text('CO2'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'CO2'),
                             onChanged: (v)=>datamodel.pat.setPh(double.tryParse(v)),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ),
                   
                      ListTile(
                        leading: CircleAvatar(child: Text('Bi'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'bi'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('na'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'na'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('cl'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'cl'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('alb'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'alb'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('pao'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'pao'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('spo'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'spo'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('sao'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'sao'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ), 
                      ListTile(
                        leading: CircleAvatar(child: Text('fio'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'fio'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
                            ),   
                      ),
                       ListTile(
                        leading: CircleAvatar(child: Text('age'),),
                        title:TextField(
                            decoration: new InputDecoration.collapsed(hintText: 'age'),
                            // onChanged: (v)=>datamodel.addValuetoData(int.tryParse(v)),
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
              var ab = getAbgFromData(datamodel.pat.getPh(),datamodel.pat.getAge());
              List valList = getAbnAbgListfrom(datamodel.pat.getPh());
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

getAbnAbgListfrom(ph){
  List<String> outlist =[];
  if(ph>=7.35 && ph<=7.55){
    outlist.add("$ph");
  }
  
  return outlist;
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
      body: Text(datamodel.pat.getAbgList().toString()),
      
    );
  }
}

