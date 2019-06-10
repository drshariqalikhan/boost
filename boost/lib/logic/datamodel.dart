
import 'dart:math';

import 'package:flutter/material.dart';

class DataModel with ChangeNotifier{
  
  PatientDataType pat = PatientDataType();
  // int _data = 0;
  // getDataVal()=>_data;
  // // setDataVal(int val)=>_data = val;

 
  setisBlack(bool val){
    pat._isBlack = val;
    notifyListeners();
  }

  setisMale(bool val){
    pat._isMale = val;
    notifyListeners();
  }

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

  sethasHemoptysis(bool val){
    pat._hasHemoptysis= val;
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

  sethasBLCrepts(bool val){
    pat._hasBLCrepts= val;
    notifyListeners();
  }

  sethasULCrepts(bool val){
    pat._hasULCrepts= val;
    notifyListeners();
  }

  sethasChestPain(bool val){
    pat._hasChestPain= val;
    notifyListeners();
  }

  sethasMalig(bool val){
    pat._hasMalig= val;
    notifyListeners();
  }

  sethasSTI(bool val){
    pat._hasSTI= val;
    notifyListeners();
  }

  sethasUTIonDipstick(bool val){
    pat._hasUTIonDipstick= val;
    notifyListeners();
  }

  sethasSignsOfPeritonitis(bool val){
    pat._hasSignsOfPeritonitis = val;
    notifyListeners();
  }

  sethasSignsOfCLABSI(bool val){
    pat._hasSignsOfCLABSI = val;
    notifyListeners();
  }
  sethasSignsOfCNSInfec(bool val){
    pat._hasSignsOfCNSInfec = val;
    notifyListeners();
  }
  sethasRiskOfIe(bool val){
    pat._hasRiskOfIe = val;
    notifyListeners();
  }

  setisJVPHi(bool val){
    pat._isJVPHi = val;
    notifyListeners();
  }

  sethasHistOfCHFIHD(bool val){
    pat._hasHistOfCHFIHD = val;
    notifyListeners();
  }

  sethasHistOfDVTPE(bool val){
    pat._hasHistOfDVTPE = val;
    notifyListeners();
  }

  sethasHistOfRecentSxOrFrac(bool val){
    pat._hasHistOfRecentSxOrFrac = val;
    notifyListeners();
  }

  sethasUlLLPain(bool val){
    pat._hasUlLLPain= val;
    notifyListeners();
  }

  sethasCalfTenderness(bool val){
    pat._hasCalfTenderness= val;
    notifyListeners();
  }

  sethasSharpOrBluntChestTrauma(bool val){
    pat._hasSharpOrBluntChestTrauma= val;
    notifyListeners();
  }

  sethasAcuteOnsetOfSymptoms(bool val){
    pat._hasAcuteOnsetOfSymptoms= val;
    notifyListeners();
  }

  sethasPulsusParadoxus(bool val){
    pat._hasPulsusParadoxus= val;
    notifyListeners();
  }

  sethasRecentRadioTx(bool val){
    pat._hasRecentRadioTx= val;
    notifyListeners();
  }

  sethasTB(bool val){
    pat._hasTB= val;
    notifyListeners();
  }


  sethasHistOfPericardEff(bool val){
    pat._hasHistOfPericardEff= val;
    notifyListeners();
  }

  sethasAcuteHemorrghe(bool val){
    pat._hasAcuteHemorrghe= val;
    notifyListeners();
  }

  sethasAcuteGiFluidLoss(bool val){
    pat._hasAcuteGiFluidLoss= val;
    notifyListeners();
  }


  sethasHistOfToxinAlcholIntake(bool val){
    pat._hasHistOfToxinAlcholIntake = val;
    notifyListeners();
  }

  sethasHistOfSbBypass(bool val){
    pat._hasHistOfSbBypass = val;
    notifyListeners();
  }

  sethasHistOfChronParacet(bool val){
    pat._hasHistOfChronParacet = val;
    notifyListeners();
  }

  sethasHistOfXsNacl(bool val){
    pat._hasHistOfXsNacl = val;
    notifyListeners();
  }

  sethasHistOfLaxUrndivOrDiarr(bool val){
    pat._hasHistOfLaxUrndivOrDiarr = val;
    notifyListeners();
  }


  sethasLowJvpOrNegBal(bool val){
    pat._hasLowJvpOrNegBal = val;
    notifyListeners();
  }

  sethasXsVomitNgLoss(bool val){
    pat._hasXsVomitNgLoss = val;
    notifyListeners();
  }

  setisTakingDiuretics(bool val){
    pat._isTakingDiuretics = val;
    notifyListeners();
  }

  setisTakingLicorice(bool val){
    pat._isTakingLicorice = val;
    notifyListeners();
  }

  setisTakingCaSuppl(bool val){
    pat._isTakingCaSuppl = val;
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
  double _age,_ph,_co2,_bi,_na,_cl,_alb,_pao,_spo,_sao,_fio,_wt,_ht,_sbp,_dbp,_hr,_rr,_temp,_glu,_wcc,_cr;
  bool
  _isMale,
  _isBlack, 
  _hasAlcoholHistory,
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
  _hasHemoptysis,
  _hasDyspnoea,
  _hasBLBreathSounds,
  _hasRhonchi,
  _hasBLCrepts,
  _hasULCrepts,
  _hasChestPain,
  _hasMalig,
  _hasSTI,
  _hasUTIonDipstick,
  _hasSignsOfPeritonitis,
  _hasSignsOfCLABSI,
  _hasSignsOfCNSInfec,
  _hasRiskOfIe,
  _isJVPHi,
  _hasHistOfCHFIHD,
  _hasHistOfDVTPE,
  _hasHistOfRecentSxOrFrac,
  _hasUlLLPain,
  _hasCalfTenderness,
  _hasSharpOrBluntChestTrauma,
  _hasAcuteOnsetOfSymptoms,
  _hasPulsusParadoxus,
  _hasRecentRadioTx,
  _hasTB,
  _hasHistOfPericardEff,
  _hasAcuteHemorrghe,
  _hasAcuteGiFluidLoss,
  _hasHistOfToxinAlcholIntake,
  _hasHistOfSbBypass,
  _hasHistOfChronParacet,
  _hasHistOfXsNacl,
  _hasHistOfLaxUrndivOrDiarr,
  _hasLowJvpOrNegBal,
  _hasXsVomitNgLoss,
  _isTakingDiuretics,
  _isTakingLicorice,
  _isTakingCaSuppl;


  
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

  getCr()=>_cr;
  setCr(double val)=> _cr=val;

  getisBlack()=>_isBlack;
  getisMale()=>_isMale;

  gethasCough()=>_hasCough;
  gethasHemoptysis()=>_hasHemoptysis;
  gethasDyspnoea()=>_hasDyspnoea;
  gethasBLBreathSounds()=>_hasBLBreathSounds;
  gethasRhonchi()=>_hasRhonchi;
  gethasBLCrepts()=>_hasBLCrepts;
  gethasULCrepts()=>_hasULCrepts;
  gethasChestPain()=>_hasChestPain;
  gethasMalig()=>_hasMalig;

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

  gethasSTI()=>_hasSTI;
  gethasUTIonDipstick()=>_hasUTIonDipstick;
  gethasSignsOfPeritonitis()=>_hasSignsOfPeritonitis;
  gethasSignsOfCLABSI()=>_hasSignsOfCLABSI;
  gethasSignsOfCNSInfec()=>_hasSignsOfCNSInfec;
  gethasRiskOfIe()=>_hasRiskOfIe;

  getisJVPHi()=>_isJVPHi;
  gethasHistOfCHFIHD()=>_hasHistOfCHFIHD;
  gethasHistOfDVTPE()=>_hasHistOfDVTPE;
  gethasHistOfRecentSxOrFrac()=>_hasHistOfRecentSxOrFrac;
  gethasUlLLPain()=>_hasUlLLPain;
  gethasCalfTenderness()=>_hasCalfTenderness;

  gethasSharpOrBluntChestTrauma()=>_hasSharpOrBluntChestTrauma;
  gethasAcuteOnsetOfSymptoms()=>_hasAcuteOnsetOfSymptoms;
  gethasPulsusParadoxus()=>_hasPulsusParadoxus;
  gethasRecentRadioTx()=>_hasRecentRadioTx;
  gethasTB()=>_hasTB;
  gethasHistOfPericardEff()=>_hasHistOfPericardEff;

  gethasAcuteHemorrghe()=>_hasAcuteHemorrghe;
  gethasAcuteGiFluidLoss()=>_hasAcuteGiFluidLoss;

  gethasHistOfToxinAlcholIntake()=>_hasHistOfToxinAlcholIntake;
  gethasHistOfSbBypass()=>_hasHistOfSbBypass;
  gethasHistOfChronParacet()=>_hasHistOfChronParacet;

  gethasHistOfXsNacl()=>_hasHistOfXsNacl;
  gethasHistOfLaxUrndivOrDiarr()=>_hasHistOfLaxUrndivOrDiarr;



  gethasLowJvpOrNegBal()=>_hasLowJvpOrNegBal;
  gethasXsVomitNgLoss()=>_hasXsVomitNgLoss;
  getisTakingDiuretics()=>_isTakingDiuretics;
  getisTakingLicorice()=>_isTakingLicorice;
  getisTakingCaSuppl()=>_isTakingCaSuppl;


  getNavAbglist()=>_navAbgList;
  setNavAbglist(List vallist)=> _navAbgList=vallist;


  getAbgList()=>_abgList;
  setAbgList(List<String> valList)=>_abgList = List.from(_abgList)..addAll(valList);


 //Calculate Anion Gap
 getAnionGap()=>_na - (_cl+_bi) + 2.5*(4-_alb);

  //calculate GFR
  calcC(){
    if(!_isMale){
      if(_cr>0.7){
        return -1.209;
      }else{
        return -0.329;
      }
    }else{
      if(_cr>0.9){
        return -1.209;
      }else{
        return -0.411;
      }
    }
  }
  getGfr(){
    double A  = _isMale?141:144;
    double B  = _isMale?0.9:0.7;

    double C = calcC();
    double blackCoef = _isBlack?1.159:1;

    double val2 = pow(_cr/B,C);
    double val3 = pow(0.993,_age);
  
    var result = A*val2*val3*blackCoef;
    return result;
    }


}