import 'package:boost/components/QuestionCard.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class NormalAa extends StatelessWidget {
    // var sg = getSatGapFrom(spo, sao); 
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
              Question: "Does the patient have shallow breathing?",
              handleQ: (val)=>datamodel.sethasLowTidalVol(val),
              QuestionFontsize: 20.0,
              qValue: datamodel.pat.gethasLowTidalVol(),
            ),
            ]
            )
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



getSatGapFrom(spo,sao){
  var diff = spo-sao;
  return diff;
}


