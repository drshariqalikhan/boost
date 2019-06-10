import 'package:boost/components/QuestionCard.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RespAcid extends StatelessWidget {
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
               Question: "Has the patient taken Narcotics or Any respiratory depressent drugs?",
               handleQ: (val)=>datamodel.sethasHistOfRespDepDrugsIntake(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHistOfRespDepDrugsIntake(),
             ),   
              QuestionCard(
               Question: "Has the patient had an Acute Brain Injury or Stroke?",
               handleQ: (val)=>datamodel.sethasAcuteBrainInjuryOrStroke(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasAcuteBrainInjuryOrStroke(),
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
               Question: "Is the Patient on Parentral or NG fed nutritional support?",
               handleQ: (val)=>datamodel.setisTakingTpn(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisTakingTpn(),
             ),

               QuestionCard(
               Question: "Has the Patient just had a seizure?",
               handleQ: (val)=>datamodel.sethasHistOfAcuteSeizure(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHistOfAcuteSeizure(),
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