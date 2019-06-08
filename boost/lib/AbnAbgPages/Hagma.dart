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
               Question: "Did the patient have recent Abdominal trauma?",
               handleQ: (val)=>datamodel.sethasAbdominalTrauma(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasAbdominalTrauma(),
             ),

              QuestionCard(
               Question: "Does the patient have an skin abcess,skin/wound infection,ischemic limb/digits?",
               handleQ: (val)=>datamodel.sethasSTI(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasSTI(),
             ),

               QuestionCard(
               Question: "Does the urine diptick show Nitrite positive and Luekocyte positive?",
               handleQ: (val)=>datamodel.sethasUTIonDipstick(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasUTIonDipstick(),
             ),

              QuestionCard(
               Question: "Does the patient have absent bowel sounds or abdominal pain?",
               handleQ: (val)=>datamodel.sethasSignsOfPeritonitis(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasSignsOfPeritonitis(),
               ),

              QuestionCard(
               Question: "Is there a iv cannula with two or more of the following redness,pain or discharge?",
               handleQ: (val)=>datamodel.sethasSignsOfCLABSI(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasSignsOfCLABSI(),
               ),
               //fever from earlier 

               QuestionCard(
               Question: "Is there any of the following: Neck Rigidity,post-Neuro-ENT surgery, with indewlling CNS cathetar or intruments, Seizure, Acute Altered Mental state?",             
               handleQ: (val)=>datamodel.sethasSignsOfCNSInfec(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasSignsOfCNSInfec(),
               ),

                QuestionCard(
               Question: "Is there  any of the following: H/o Infective endocarditis,IV drug abuse,Prosthetic Heart valves, Valvular Heart Ds,Congnital Heart Ds?",             
               handleQ: (val)=>datamodel.sethasRiskOfIe(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasRiskOfIe(),
               ),

                QuestionCard(
               Question: "Is the JVP raised?",             
               handleQ: (val)=>datamodel.setisJVPHi(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisJVPHi(),
               ),

              QuestionCard(
               Question: "Does the Patient have CHF or IHD?",             
               handleQ: (val)=>datamodel.sethasHistOfCHFIHD(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHistOfCHFIHD(),
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
               Question: "Has the patient has recent chest trauma or sharp object penetration into the chest?",             
               handleQ: (val)=>datamodel.sethasSharpOrBluntChestTrauma(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasSharpOrBluntChestTrauma(),
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