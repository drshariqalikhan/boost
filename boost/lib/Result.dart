import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class Results extends StatelessWidget {
  List<String> createSuspectedDsList(DataModel datamodel){
    List<String> outlist=[];
    
    return outlist;
  }
  @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);

    //TODO: implement function to create list of suspected Ds and save to Pat.SuspectedDsList
    //  datamodel.pat.setSuspectedDsList(createSuspectedDsList(datamodel));
  
  
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