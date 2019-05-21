
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
  double _age,_ph,_co2,_bi,_na,_cl,_alb,_pao,_spo,_sao,_fio;
  List<String> _abgList=[];

  getAge()=>_age;
  setAge(double val)=> _age=val;

  getPh()=>_ph;
  setPh(double val)=> _ph=val;

  getCo2()=>_co2;
  setCo2(double val)=> _co2=val;

  getBi()=>_bi;
  setBi(double val)=> _bi=val;

  getNa()=>_na;
  setNa(double val)=> _na=val;

  getCl()=>_cl;
  setCl(double val)=> _cl=val;

  getAlb()=>_alb;
  setAlb(double val)=> _alb=val;

  getPao()=>_pao;
  setPao(double val)=> _pao=val;

  getSpo()=>_spo;
  setSpo(double val)=> _spo=val;

  getSao()=>_sao;
  setSao(double val)=> _sao=val;

  getFio()=>_fio;
  setFio(double val)=> _fio=val;



  getAbgList()=>_abgList;
  setAbgList(List<String> valList)=>_abgList = List.from(_abgList)..addAll(valList);
  // setAbgList()=>null;
}