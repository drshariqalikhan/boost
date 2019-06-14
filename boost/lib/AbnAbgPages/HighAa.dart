import 'package:boost/components/QuestionCard.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HighAa extends StatelessWidget {
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
              Question: "Does the SpO2 improve with supplemental oxygenation?",
              handleQ: (val)=>datamodel.sethasImpSpoWithO2(val),
              QuestionFontsize: 20.0,
              qValue: datamodel.pat.gethasImpSpoWithO2(),
            ),
             QuestionCard(
               Question: "Is the JVP raised?",             
               handleQ: (val)=>datamodel.setisJVPHi(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.getisJVPHi(),
               ),
            
              QuestionCard(
               Question: "Has >1L pleural fluid been drained?",             
               handleQ: (val)=>datamodel.sethasHadLargePleuralDrainage(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasHadLargePleuralDrainage(),
               ),

             QuestionCard(
               Question: "Has the patient had a lung collapse for >3days?",             
               handleQ: (val)=>datamodel.sethasLungCollapseFor3d(val),
               QuestionFontsize: 20.0,
               qValue: datamodel.pat.gethasLungCollapseFor3d(),
               ),

               
             
 




            ])
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