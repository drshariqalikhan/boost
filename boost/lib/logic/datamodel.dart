
import 'package:flutter/material.dart';

class DataModel with ChangeNotifier{
  
  PatientDataType pat = PatientDataType();
  // int _data = 0;
  // getDataVal()=>_data;
  // // setDataVal(int val)=>_data = val;

 

  setHasAlcoholHistory(bool val){
    pat._hasAlcoholHistory = val;
    notifyListeners();
  }
  setIsDiabetic(bool val){
    pat._isDiabetic = val;
    notifyListeners();
  }

  sethasPressorSupport(bool val){
    pat._hasPressorSupport= val;
    notifyListeners();
  }

  sethasSpinalInjury(bool val){
    pat._hasSpinalInjury= val;
    notifyListeners();
  }

  sethasPrimarySignsOfAllergicRxn(bool val){
    pat._hasPrimarySignsOfAllergicRxn= val;
    notifyListeners();
  }

  sethasAcuteBurns(bool val){
    pat._hasAcuteBurns= val;
    notifyListeners();
  }

  sethasAbdominalPain(bool val){
    pat._hasAbdominalPain= val;
    notifyListeners();
  }

  sethasGallStoneOrPancSx(bool val){
    pat._hasGallStoneOrPancSx= val;
    notifyListeners();
  }

  setisTakingSteroids(bool val){
    pat._isTakingSteroids= val;
    notifyListeners();
  }

  sethasPitPathology(bool val){
    pat._hasPitPathology= val;
    notifyListeners();
  }

  sethasSkinPigmentPatch(bool val){
    pat._hasSkinPigmentPatch= val;
    notifyListeners();
  }

  sethasAbdominalTrauma(bool val){
    pat._hasAbdominalTrauma= val;
    notifyListeners();
  }

  sethasCough(bool val){
    pat._hasCough= val;
    notifyListeners();
  }

  sethasDyspnoea(bool val){
    pat._hasDyspnoea= val;
    notifyListeners();
  }

  sethasBLBreathSounds(bool val){
    pat._hasBLBreathSounds= val;
    notifyListeners();
  }

  sethasRhonchi(bool val){
    pat._hasRhonchi= val;
    notifyListeners();
  }




  initList(){
    pat._abgList =[];
  }
  removeFromList(String element){
    pat._navAbgList.remove(element);
  }

}

class PatientDataType{
  double _age,_ph,_co2,_bi,_na,_cl,_alb,_pao,_spo,_sao,_fio,_wt,_ht,_sbp,_dbp,_hr,_rr,_temp,_glu,_wcc;
  bool _hasAlcoholHistory,
  _isDiabetic,
  _hasPressorSupport,
  _hasSpinalInjury,
  _hasPrimarySignsOfAllergicRxn,
  _hasAcuteBurns,
  _hasAbdominalPain,
  _hasGallStoneOrPancSx,
  _isTakingSteroids,
  _hasPitPathology,
  _hasSkinPigmentPatch,
  _hasAbdominalTrauma,
  _hasCough,
  _hasDyspnoea,
  _hasBLBreathSounds,
  _hasRhonchi;
  
  List<String> _abgList=[];
  List<String> _navAbgList=[];

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

  getWt()=>_wt;
  setWt(double val)=> _wt=val;

  getHt()=>_ht;
  setHt(double val)=> _ht=val;

  getSbp()=>_sbp;
  setSbp(double val)=> _sbp=val;

  getDbp()=>_dbp;
  setDbp(double val)=> _dbp=val;

  getHr()=>_hr;
  setHr(double val)=> _hr=val;

  getRr()=>_rr;
  setRr(double val)=> _rr=val;

  getTemp()=>_temp;
  setTemp(double val)=> _temp=val;

  getGlu()=>_glu;
  setGlu(double val)=> _glu=val;

  getWcc()=>_wcc;
  setWcc(double val)=> _wcc=val;

  gethasCough()=>_hasCough;
  gethasDyspnoea()=>_hasDyspnoea;
  gethasBLBreathSounds()=>_hasBLBreathSounds;
  gethasRhonchi()=>_hasRhonchi;

  getHasAlcoholHistory()=>_hasAlcoholHistory;
  getIsDiabetic()=>_isDiabetic;
  gethasPressorSupport()=>_hasPressorSupport;
  gethasSpinalInjury()=>_hasSpinalInjury;
  gethasPrimarySignsOfAllergicRxn()=>_hasPrimarySignsOfAllergicRxn;//acute onset+skin/mucosal swelling 
  gethasAcuteBurns()=>_hasAcuteBurns;
  gethasGallStoneOrPancSx()=>_hasGallStoneOrPancSx;
  gethasAbdominalPain()=>_hasAbdominalPain;
  getisTakingSteroids()=>_isTakingSteroids;
  gethasPitPathology()=>_hasPitPathology;
  gethasSkinPigmentPatch()=>_hasSkinPigmentPatch;
  gethasAbdominalTrauma()=>_hasAbdominalTrauma;

  

  getNavAbglist()=>_navAbgList;
  setNavAbglist(List vallist)=> _navAbgList=vallist;


  getAbgList()=>_abgList;
  setAbgList(List<String> valList)=>_abgList = List.from(_abgList)..addAll(valList);
}