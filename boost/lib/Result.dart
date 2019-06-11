import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class Results extends StatelessWidget {
  List<String> createSuspectedDsList(DataModel datamodel){
    var pt = datamodel.pat;
    List<String> outlist=[];
    List abgList = datamodel.pat.getAbgList();
    if(abgList.contains('Hagma')){
        // AlcoholicKetoacidosis
        if(pt.getGlu()<250 && pt.getHasAlcoholHistory()==true ){
          outlist.add('AlcoholicKetoacidosis');
        }
        // DiabeticKetoAcidosis
        if(pt.getGlu()>250 && pt.getIsDiabetic()==true){
          outlist.add('DiabeticKetoAcidosis');
        }

        // Neu-shoc
        // Ana-shoc
        // Burn-shoc
        // Adr-shoc
        // Panc-shoc
        // Sept-shoc
        // Card-shoc
        // PneuShoc
        // PeriTamSk
        // PE
        // Hrrg-shock
        // Hypv-shoc




        // RF hagma
        // Txn Alc
        // JJ Byp
        // Chr Parac

      
    }
      if(abgList.contains('Nagma')){
        // Nacl Nagma
        // RF nagma
        // HypK nagma
        // RTA 4
        // Gi nagma
        // RTA nagma

    }
      if(abgList.contains('RespAlk')){

        // Hypoxemia
        // PE -RespAlk
        // Neuo-RespAlk

      
    }
      if(abgList.contains('MetabAlk')){
        // Vom/NgAsp MetabAlk
        // Diuertic Use MetabAlk
        // Barter Giltmen 
        // Pri Aldosteronism
        // Sec Aldosteronism
        // Cushing Synd
        // Liddle Synd
        // Exogenous Licorice
        // Hypokalemia
        // Milk alkali synd

      
    }
      if(abgList.contains('RespAcid')){
        // Drug-respAcid
        // Neur-respAcid
        // Severe-LRTI
        // Mod -LRTI
        // ALI
        // COPD
        // OHS
        // Asthma attack
        // Hyperalimentation
        // Seizures

      
    }
      if(abgList.contains('HighAa')){

        // Cardiac shunt
        // PE
        // Asthma
        // COPD
        // LRTI
        // Atelectasis
        // Pulm infarct
        // Mucus Plug
        // Severe LRTI
        // Effusion
        // Re-exp Pulm ed
        // U/L Intubation
        // Pulm Edmea
        // ALI
        // LRTI

      
    }
    if(abgList.contains('NormalAa')){
      // COPD excaberation 
      // Hypovent
      // MethHb
      // CarboxyHb

      
    }else{

    }
    
    return outlist;
  }
  @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);

    //TODO: implement function to create list of suspected Ds and save to Pat.SuspectedDsList
    datamodel.setsuspectedDsList(createSuspectedDsList(datamodel));  
  
  // List a = datamodel.pat.getAbgList();
    return Scaffold(
      appBar: AppBar(title:Text(this.toString())),
      // body: Text('${a.length}'),
      // body:Text(datamodel.pat.getAge().toString()),
      body: Center(child: Text(datamodel.pat.getAbgList().toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          datamodel.initList();
          Navigator.pushNamed(context, '/home');
        },
      ),
      
    );
  }

  
}