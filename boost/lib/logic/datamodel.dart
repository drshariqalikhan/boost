
import 'package:flutter/material.dart';

class DataModel with ChangeNotifier{
  
  PatientDataType pat = PatientDataType();
  // int _data = 0;
  // getDataVal()=>_data;
  // // setDataVal(int val)=>_data = val;

  // void addValuetoData(double val){
  //   // _data = val;
  //   // pat._age = val;
  //   pat.setAge(val);
  //   notifyListeners();
  // }

}

class PatientDataType{
  double _age,_ph;
  List<String> _abgList=[];

  getAge()=>_age;
  setAge(double val)=> _age=val;
  getPh()=>_ph;
  setPh(double val)=> _ph=val;

  getAbgList()=>_abgList;
  setAbgList(List<String> valList)=>_abgList = List.from(_abgList)..addAll(valList);
  // setAbgList()=>null;
}