import 'package:boost/components/QuestionCard.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Nagma extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);
    datamodel.removeFromList(this.toString());

    return Scaffold(
      appBar: AppBar(title: Text(this.toString()),),
      // body: Center(child: Text(datamodel.pat.getAbgList().toString()),),
      body:Container(
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: <Widget>[ 
              QuestionCard(
               Question: "Has the patient been given >3L Normal Saline in 24hrs?",
               handleQ: (val)=>datamodel.sethasHistOfXsNacl(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHistOfXsNacl(),
             ),   
              QuestionCard(
               Question: "Has the patient had a urinary diversion op or is the patient having diarrhoea or taking laxatives?",
               handleQ: (val)=>datamodel.sethasHistOfLaxUrndivOrDiarr(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHistOfLaxUrndivOrDiarr(),
             ),


           ]),
           )
           ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(datamodel.pat.getNavAbglist().length>0){
            Navigator.pushNamed(context, '/${datamodel.pat.getNavAbglist()[0]}');
          }else{
            Navigator.pushNamed(context, '/res');
          }
        },
      ),
      
      
    );
  }
}