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
      body: Center(child: Text(datamodel.pat.getAbgList().toString()),),
     
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