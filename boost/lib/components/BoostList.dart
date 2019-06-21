import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BoostList extends StatelessWidget {

  final List dataAsList;

  BoostList({this.dataAsList});

  @override
  Widget build(BuildContext context) {
    
       
return ListView.builder(                
      itemCount: this.dataAsList.length,
      itemBuilder: (context,index){
      return Card(
          child: ListTile(
                          title: Text('${index+1}/${this.dataAsList.length}:: ${this.dataAsList[index]}'),
                        ),
                      );  
                    },
                  );
     
    

         
          
      
  }
  }
  