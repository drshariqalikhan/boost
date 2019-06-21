import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Header extends StatelessWidget {
  final String headerText;

  Header({this.headerText});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AutoSizeText(this.headerText,minFontSize: 30.0,),
      color: Colors.amberAccent,
      
    );
  }
}