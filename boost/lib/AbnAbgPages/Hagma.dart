import 'package:boost/components/QuestionCard.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Hagma extends StatelessWidget {
  
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
               Question: "Is the patient an alcoholic or has consumed alcohol?",
               handleQ: (val)=>datamodel.setHasAlcoholHistory(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getHasAlcoholHistory(),
             ),
             QuestionCard(
               Question: "Is the patient a Diabetic?",
               handleQ: (val)=>datamodel.setIsDiabetic(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getIsDiabetic(),
             ),
             QuestionCard(
               Question: "Is the patient on pressors or Inotropes",
               handleQ: (val)=>datamodel.sethasPressorSupport(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasPressorSupport(),
             ),
              QuestionCard(
               Question: "Has the patient had recent trauma or spinal injury?",
               handleQ: (val)=>datamodel.sethasSpinalInjury(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasSpinalInjury(),
             ),
              QuestionCard(
               Question: "Did the patient develope skin or mucosal hives, flushing or swelling suddenly (in hours/mins)?",
               handleQ: (val)=>datamodel.sethasPrimarySignsOfAllergicRxn(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasPrimarySignsOfAllergicRxn(),
             ),
              QuestionCard(
               Question: "Has the patient had acute burns injury?",
               handleQ: (val)=>datamodel.sethasAcuteBurns(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasAcuteBurns(),
             ),
              QuestionCard(
               Question: "Does the patient have abdominal pain or tenderness?",
               handleQ: (val)=>datamodel.sethasAbdominalPain(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasAbdominalPain(),
             ),
             QuestionCard(
               Question: "Is the patient on long term steroids?",
               handleQ: (val)=>datamodel.setisTakingSteroids(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisTakingSteroids(),
             ),
             QuestionCard(
               Question: "H/o of Pitutary Sx,Tumor,Radiation or any Pit pathology?",
               handleQ: (val)=>datamodel.sethasPitPathology(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasPitPathology(),
             ),
              QuestionCard(
               Question: "Patient has patches of Skin Hyper or HypoPigmentation?",
               handleQ: (val)=>datamodel.sethasSkinPigmentPatch(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasSkinPigmentPatch(),
             ),


              QuestionCard(
               Question: "Does the patient have h/o gallstones or Pancreatic Surg?",
               handleQ: (val)=>datamodel.sethasGallStoneOrPancSx(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasGallStoneOrPancSx(),
             ),
              QuestionCard(
               Question: "Does the patient have abdominal pain or tenderness?",
               handleQ: (val)=>datamodel.sethasAbdominalPain(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasAbdominalPain(),
             ),







             SizedBox(
               height: MediaQuery.of(context).size.height/10,
             )
           ],
         ),
       ),
     ),
     /*
      * 
      */
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(datamodel.pat.getNavAbglist().length>0){
            // print(datamodel.pat.getNavAbglist().toString());
            Navigator.pushNamed(context, '/${datamodel.pat.getNavAbglist()[0]}');
          }else{
            Navigator.pushNamed(context, '/res');
          }
        },
      ),
      
      
    );
  }
}