import 'package:boost/components/QuestionCard.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MetabAlk extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);
    datamodel.removeFromList(this.toString());

    return Scaffold(
      appBar: AppBar(title: Text(this.toString()),),
      // body: Center(child: Text(datamodel.pat.getAbgList().toString()),),
      body: Container(
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: <Widget>[ 
              QuestionCard(
               Question: "Is the JVP low or is the fluid balance negative?",
               handleQ: (val)=>datamodel.sethasLowJvpOrNegBal(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasLowJvpOrNegBal(),
             ),

              QuestionCard(
               Question: "Does the patient having vomitting or large Ng aspirates?",
               handleQ: (val)=>datamodel.sethasXsVomitNgLoss(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasXsVomitNgLoss(),
             ),

               QuestionCard(
               Question: "Is the Patient taking Diuretics?",
               handleQ: (val)=>datamodel.setisTakingDiuretics(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisTakingDiuretics(),
             ),

              QuestionCard(
               Question: "Is the Patient taking Licorice or 甘草 'gancao' TCM?",
               handleQ: (val)=>datamodel.setisTakingLicorice(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisTakingLicorice(),
             ),

              QuestionCard(
               Question: "Is the Patient taking Calcium containing supplements or Antacids?",
               handleQ: (val)=>datamodel.setisTakingCaSuppl(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisTakingCaSuppl(),
             ),





              

           ]),
           )
           ),
      ,
      
      
      
      
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