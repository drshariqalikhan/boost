
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

  sethasHistOfRespDepDrugsIntake(bool val){
    pat._hasHistOfRespDepDrugsIntake = val;
    notifyListeners();
  }

  sethasAcuteBrainInjuryOrStroke(bool val){
    pat._hasAcuteBrainInjuryOrStroke = val;
    notifyListeners();
  }

  sethasCopd(bool val){
    pat._hasCopd = val;
    notifyListeners();
  }

  sethasAsthma(bool val){
    pat._hasAsthma = val;
    notifyListeners();
  }

  setisTakingTpn(bool val){
    pat._isTakingTpn = val;
    notifyListeners();
  }

  sethasHistOfAcuteSeizure(bool val){
    pat._hasHistOfAcuteSeizure = val;
    notifyListeners();
  }

  sethasImpSpoWithO2(bool val){
    pat._hasImpSpoWithO2 = val;
    notifyListeners();
  }

  sethasHadLargePleuralDrainage(bool val){
    pat._hasHadLargePleuralDrainage = val;
    notifyListeners();
  }

  sethasLungCollapseFor3d(bool val){
    pat._hasLungCollapseFor3d = val;
    notifyListeners();
  }

  sethasLowTidalVol(bool val){
    pat._hasLowTidalVol = val;
    notifyListeners();
  }

  setisIntubated(bool val){
    pat._isIntubated = val;
    notifyListeners();
  }

  sethasFaceDroopOrLimbWeakness(bool val){
    pat._hasFaceDroopOrLimbWeakness = val;
    notifyListeners();
  }

  sethasNewAphasia(bool val){
    pat._hasNewAphasia = val;
    notifyListeners();
  }

  sethasAlteredMentation(bool val){
    pat._hasAlteredMentation = val;
    notifyListeners();
  }

  setsuspectedDsList(List mylist){
    pat.suspectedDsList = mylist;
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
  List suspectedDsList,suspectedInfSourceList;
  double _age,_ph,_co2,_bi,_na,_cl,_k,_alb,_pao,_spo,_sao,_fio,_wt,_ht,_sbp,_dbp,_hr,_rr,_temp,_glu,_wcc,_cr;
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
  _isTakingCaSuppl,
  _hasHistOfRespDepDrugsIntake,
  _hasAcuteBrainInjuryOrStroke,
  _hasCopd,
  _hasAsthma,
  _isTakingTpn,
  _hasHistOfAcuteSeizure,
  _hasImpSpoWithO2,
  _hasHadLargePleuralDrainage,
  _hasLungCollapseFor3d,
  _hasLowTidalVol,
  _isIntubated,
  _hasFaceDroopOrLimbWeakness,
  _hasNewAphasia,
  _hasAlteredMentation;


  
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

  getK()=>_k;
  setK(double val)=> _k=val;


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

  gethasHistOfRespDepDrugsIntake()=>_hasHistOfRespDepDrugsIntake;
  gethasAcuteBrainInjuryOrStroke()=>_hasAcuteBrainInjuryOrStroke;
  gethasCopd()=>_hasCopd;
  gethasAsthma()=>_hasAsthma;
  getisTakingTpn()=>_isTakingTpn;
  gethasHistOfAcuteSeizure()=>_hasHistOfAcuteSeizure;


  gethasImpSpoWithO2()=>_hasImpSpoWithO2;
  gethasHadLargePleuralDrainage()=>_hasHadLargePleuralDrainage;
  gethasLungCollapseFor3d()=>_hasLungCollapseFor3d;
  gethasLowTidalVol()=>_hasLowTidalVol;
  getisIntubated()=>_isIntubated;

  gethasFaceDroopOrLimbWeakness()=>_hasFaceDroopOrLimbWeakness;
  gethasNewAphasia()=>_hasNewAphasia;
  gethasAlteredMentation()=>_hasAlteredMentation;

  getsuspectedDsList()=>suspectedDsList;  
  getsuspectedInfSourceList(){
    suspectedInfSourceList = [];
    
    if(hasLRTI()!=null){if(hasLRTI()){suspectedInfSourceList.add('LRTI');}}
    if(_hasSTI != null){if(_hasSTI){suspectedInfSourceList.add('STI');}}
    if(_hasUTIonDipstick != null){if(_hasUTIonDipstick){suspectedInfSourceList.add('UTI');}}
    if(_hasSignsOfCNSInfec != null){if(_hasSignsOfCNSInfec){suspectedInfSourceList.add('CNSinfection');}} 
    if(_hasRiskOfIe != null){if(_hasRiskOfIe){suspectedInfSourceList.add('IEBacteremia');}}
    if(_hasSignsOfCLABSI != null){if(_hasSignsOfCLABSI){suspectedInfSourceList.add('CLABSI');}}
    if(_hasSignsOfPeritonitis != null){if(_hasSignsOfPeritonitis){suspectedInfSourceList.add('Peritonitis');}}   
    return suspectedInfSourceList;
  }

  getNavAbglist()=>_navAbgList;
  setNavAbglist(List vallist)=> _navAbgList=vallist;


  getAbgList()=>_abgList;
  setAbgList(List<String> valList)=>_abgList = List.from(_abgList)..addAll(valList);
  


 //Calculate Anion Gap
 getAnionGap()=>_na - (_cl+_bi) + 2.5*(4-_alb);

  //calculate GFR
  calcC(){
    double cr = _cr/76.26;
    if(!_isMale){
      if(cr>0.7){
        return -1.209;
      }else{
        return -0.329;
      }
    }else{
      if(cr>0.9){
        return -1.209;
      }else{
        return -0.411;
      }
    }
  }
  getGfr(){
    double cr = _cr/76.26;
    double A  = _isMale?141:144;
    double B  = _isMale?0.9:0.7;

    double C = calcC();
    double blackCoef = _isBlack?1.159:1;

    double val2 = pow(cr/B,C);
    double val3 = pow(0.993,_age);
  
    var result = A*val2*val3*blackCoef;
    print(result);
    return result;
    }

//Global perf
bool hasLowGlobalPerf(){
  if(gethasPressorSupport!=null){
  if(_sbp<95 || gethasPressorSupport()==true){
    return true;
  }else{
    return false;
  }}else{
    return null;
  }
}

//SIRS
bool hasSIRS(){
  int count = 0;

  if(_temp>38 ||_temp<36 ){ count++;}
  if(_rr>20 || _co2<32){count++;}
  if (_wcc>12 || _wcc <4){count++;}
  if(_hr>90){count++;}

  if(count>=2){
    return true;
  }else{
    return false;
  }
  

}
//Anaphylaxis
bool hasAnaphylaxis(){
  int count = 0;
  if(_hasAcuteOnsetOfSymptoms!=null && _hasPrimarySignsOfAllergicRxn!=null && _hasDyspnoea!=null && _hasRhonchi!=null)
  {
  if(_hasAcuteOnsetOfSymptoms){count++;}
  if(_hasPrimarySignsOfAllergicRxn){count++;}
  if(_hasDyspnoea || _hasRhonchi){count++;}

  if(count>2){
    return true;
  }else{
    return false;
  }}else{
    return null;
  }
}

//LRTI
bool hasLRTI(){
  int count = 0;
  if(_rr>15){count++;}
  if(_temp>38){count++;}
  if(_hasCough){count++;}
  if(_hasDyspnoea){count++;}
  if(_hasBLCrepts||_hasULCrepts||_hasRhonchi){count++;}

  if(count>2){
    return true;
  }else{
    return false;
  }

}

//Adrenal insuff
bool hasAdrenalInsuff(){
  double count = 0;
  if(_isTakingSteroids !=null && _hasPitPathology!=null && _hasSkinPigmentPatch!=null && _hasAbdominalPain!=null){
  if(_isTakingSteroids){count = count+1.1;}
  if(_hasPitPathology){count = count +1.1;}
  if(_hasSkinPigmentPatch){count = count +1;}
  if(_hasAbdominalPain){count = count +0.5;}
  if(count >1){
    return true;
  }else{
    return false;
  }
  }
  else{
    return null;
  }
  
}

//Pancreatitis
bool hasPancreatitis(){
  int count = 0;
  if(_hasGallStoneOrPancSx!=null && _hasAlcoholHistory!=null && _hasAbdominalTrauma!=null){
  if(_hasGallStoneOrPancSx){count++;}
  if(_hasAlcoholHistory){count++;}
  if(_hasAbdominalTrauma){count++;}

  if(count>1 && _hasAbdominalPain){
    return true;
  }else{
    return false;
  }}else{
    return null;
  }

}
//CHF IHD risk
bool hasChfOrIhdRisk(){
  int count = 0;
  if(_hasHistOfCHFIHD!=null && _hasChestPain!=null && _hasDyspnoea!=null && _hasBLCrepts!=null){
  if(_hasHistOfCHFIHD){count++;}
  if(_hasChestPain){count++;}
  if(_hasDyspnoea){count++;}
  if(_hasBLCrepts){count++;}

  if(count>=1){
    return true;
  }else{
    return false;
  }}else{
    return null;
  }
}

//Pnuemothx
bool hasPneumothorax(){
  int count = 0;
  if(_hasChestPain!=null && _hasDyspnoea!=null && _hasSharpOrBluntChestTrauma!=null && _hasBLBreathSounds!=null){
  if(_hasChestPain){count++;}
  if(_hasDyspnoea){count++;}
  if(_hasSharpOrBluntChestTrauma){count++;}
  if(_hasBLBreathSounds==false){count++;}

  if(count>1){
    return true;
  }else{
    return false;
  }}else{
    return null;
  }
}
//Pericard Tamponade
bool hasPeriCardTamponade(){
  double count = 0;
  if(_hasDyspnoea){count=count+1;}
  if(_hr>90){count=count+1;}
  if(_hasChestPain){count = count+0.5;}
  if(_hasAcuteOnsetOfSymptoms){count = count+2;}
  if(_hasPulsusParadoxus){count = count + 2;}
  if(_hasMalig){count = count+ 2;}
  if(_hasRecentRadioTx){count=count+1;}
  if(_hasTB){count = count+2;}
  if(_hasHistOfPericardEff){count = count+2;}

  if(count>6){
    return true;
  }else{
    return false;
  }
}
//PE risk
bool hasHighPeRisk(){
  int count = 0;
  if(_age>65){count=count+1;}
  if(_hasHistOfDVTPE){count = count +3;}
  if(_hasHistOfRecentSxOrFrac){count = count +2;}
  if(_hasMalig){count = count +2;}
  if(_hasUlLLPain){count = count+3;}
  if(_hasHemoptysis){count = count +2;}
  if(_hr>94){count = count+5;}
  if(_hr>74 && _hr<95){count = count+3;}
  if(_hasCalfTenderness){count = count+4;}

  if(count>10){
    return true;
  }else{
    return false;
  }
}

//PF ratio
double pFRatio()=>_pao/_fio;

//Chr Resp Acid
bool hasChronicRespiratoryAcidosis(){
  if(_bi>24){
    return true;
  }else{
    return false;
  }
}
//BMI
double bmi()=>_wt/(_ht*_ht);

//Exp Plum Ed
bool hasHighRiskOfRexpPulmEdema(){
  if(_hasHadLargePleuralDrainage!=null && _hasLungCollapseFor3d!=null){
  if(_hasHadLargePleuralDrainage || _hasLungCollapseFor3d){
    return true;
  }else{
    return false;
  }}else{
    return null;
  }
}

//Saturation Gap
bool hasSaturationGap(){
  double absSatGap = _spo - _sao;
  absSatGap = absSatGap.abs();
  if(absSatGap>4.9){
    return true;
  }else{
    return false;
  }
}

//Risk of Stroke
bool hasHighLikelyhoodofStroke(){

  int count = 0;
  if(_sbp>140){count=count+1;}
  if(_age>=60){count = count +1;}
  if(_isDiabetic){count = count+ 1;}
  if(_hasFaceDroopOrLimbWeakness) {count= count+4;}
  if(_hasNewAphasia){count = count + 2;}
  if(_hasAlteredMentation){count = count +1;}

  if(count>=4){
    return true;
  }else{
    return false;
  }
}

List getSuspectDsList(){
    var pt = this;
    List<String> outlist=[];
    List abgList = getAbgList();
    if(abgList.contains('Hagma')){
        // AlcoholicKetoacidosis
        if(pt.getGlu()<250 && pt.getHasAlcoholHistory()==true ){
          outlist.add('AlcoholicKetoacidosis');
        }
        // DiabeticKetoAcidosis
        if(pt.getGlu()>250 && pt.getIsDiabetic()==true){
          outlist.add('DiabeticKetoAcidosis');
        }

        // NeurogenicShock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && pt.gethasSpinalInjury()==true){
          outlist.add('NeurogenicShock');
        }

        // Anaphylacticshock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && pt.hasAnaphylaxis()==true) {
          outlist.add('Anaphylacticshock');
        }

        // Burnshock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && pt.gethasAcuteBurns()==true){
          outlist.add('Burnshock');
        }
        // AdrenalFailureshock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true & pt.hasAdrenalInsuff()){
          outlist.add('AdrenalFailureshock');
        }

        // PancreaticShock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true &&   pt.hasPancreatitis() == true){
          outlist.add('PancreaticShock');
        }
        // Septicshock
        List suspectedInfectionSourceList = pt.getsuspectedInfSourceList();
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && suspectedInfectionSourceList.isNotEmpty){
           outlist.add('Septicshock'); 
        }
        // Cardiogencshock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()== false && pt.getisJVPHi()==true && pt.hasChfOrIhdRisk()==true ){
          outlist.add('Cardiogencshock');
        }
        // PneumothoraxShock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==false && pt.getisJVPHi()==true && pt.hasPneumothorax()==true){
          outlist.add('PneumothoraxShock');
        }
        // PericardialTamponadeShock
        if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==false && pt.getisJVPHi()==true && pt.hasPeriCardTamponade()==true){
          outlist.add('PericardialTamponadeShock');
        }
        //PulmEmbolism
        if(pt.hasLowGlobalPerf() && !pt.hasSIRS() && pt.getisJVPHi() && pt.hasHighPeRisk()){
          outlist.add('PulmEmbolism');
        }
        //HypovolumicShock
        if(pt.hasLowGlobalPerf() && !pt.getisJVPHi()){
          outlist.add('HypovolumicShock');
        }
        //   if(pt.hasLowGlobalPerf() && !pt.getisJVPHi() && pt.gethasAcuteGiFluidLoss() ){
        //   outlist.add('HypovolumicShock');
        // }

        // //HemorrhagicShock
        // if(pt.hasLowGlobalPerf() && !pt.hasSIRS() && !pt.getisJVPHi() && pt.gethasAcuteHemorrghe()){
        //   outlist.add('HemorrhagicShock');
        // }

        // RenalFailureMetabolicAcidosis
        if(pt.getGfr()<40 && pt.getAnionGap()>20){
          outlist.add('RenalFailureMetabolicAcidosis');
        }  

        // ToxinAlcoholHighAGMetabolicAcidosis
        if(pt.gethasHistOfToxinAlcholIntake()){
          outlist.add('ToxinAlcoholHighAGMetabolicAcidosis');
        }

        //SmallBowelBypassHighAGMetabolicAcidosis
        if(pt.gethasHistOfSbBypass()){
          outlist.add('SmallBowelBypassHighAGMetabolicAcidosis');

        }
        // ChronicParacetMetabolicAcidosis
        if(pt.gethasHistOfChronParacet()){
          outlist.add('ChronicParacetMetabolicAcidosis');
        }

      
    }
      if(abgList.contains('Nagma')){
        // NormalSalineMetabolicAcidosis
        if(pt.gethasHistOfXsNacl()){
          outlist.add('NormalSalineMetabolicAcidosis');
        }
        // RenalFailureMetabolicAcidosis
        if(pt.getGfr()<40){
          outlist.add('RenalFailureMetabolicAcidosis');
        }
        // HyperKalemiaMetabolicAcidosis
        if(pt.getK()>7){
          outlist.add('HyperKalemiaMetabolicAcidosis');
        }
        // RenalTubularAcidosis4
        if(pt.getK()>5.5 && pt.getK()<6.9){
          outlist.add('RenalTubularAcidosis4');
        }
        // GiGuBaseLossMetabolicAcidosis
        if(pt.gethasHistOfLaxUrndivOrDiarr()){
          outlist.add('GiGuBaseLossMetabolicAcidosis');
        }
        //RenalTubularAcidosis

        if(!pt.gethasHistOfXsNacl() && pt.getGfr()>40 && pt.getK()<5.5 && !pt.gethasHistOfLaxUrndivOrDiarr()){
          outlist.add('RenalTubularAcidosis');
        }
        

    }
      if(abgList.contains('RespAlk')){

        // Hypoxemia
        if(pt.pFRatio()<350){
          outlist.add('Hypoxemia');
        }
        // PulmEmbolism
        if(pt.hasHighPeRisk()){
          outlist.add('PulmEmbolism');
        }
        // CnsEtiology
        // if(pt.gethasAcuteBrainInjuryOrStroke()){
        //   outlist.add('CnsEtiology');
        // }
        if(pt.hasHighLikelyhoodofStroke() || pt.gethasAcuteBrainInjuryOrStroke()){
          outlist.add('CnsEtiology');
        }

      
    }
      if(abgList.contains('MetabAlk')){
        // GiLossMetabolicAlkalosis
        if(pt.gethasLowJvpOrNegBal() && pt.gethasXsVomitNgLoss()){
          outlist.add('GiLossMetabolicAlkalosis');
        }  

        // DiuerticUseMetabolicAlkalosis
        if(pt.gethasLowJvpOrNegBal() && pt.getisTakingDiuretics()){
          outlist.add('DiuerticUseMetabolicAlkalosis');
        }
        
        // BarterGiltmen 
        if(pt.gethasLowJvpOrNegBal() && !pt.gethasXsVomitNgLoss() && !pt.getisTakingDiuretics()){
          outlist.add('BarterGiltmen');
        }
        // PrimaryAldosteronism
        if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
            outlist.add('PrimaryAldosteronism');
        }
        // SecondaryAldosteronism
        if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
            outlist.add('SecondaryAldosteronism');
        }
        // CushingSyndrome
        if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
            outlist.add('CushingSyndrome');
        }
        // LiddleSyndrome
        if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
            outlist.add('LiddleSyndrome');
        }
        // ExogenousLicorice
         if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100) && pt.getisTakingLicorice()){
            outlist.add('ExogenousLicorice');
        }
        // Hypokalemia
        if(!pt.gethasLowJvpOrNegBal() && !(pt.getSbp()>160 || pt.getDbp()>100) && pt.getK()<3.5){
            outlist.add('Hypokalemia');
        }
        // MilkAlkaliSyndrome
        if(!pt.gethasLowJvpOrNegBal() && !(pt.getSbp()>160 || pt.getDbp()>100) && pt.getisTakingCaSuppl()  ){
            outlist.add('MilkAlkaliSyndrome');
        }

      
    }
      if(abgList.contains('RespAcid')){
        // DrugInducedRespiratoryAcidosis
        if(pt.getRr()<10 && pt.gethasHistOfRespDepDrugsIntake()){
          outlist.add('DrugInducedRespiratoryAcidosis');
        }
        // CnsEtiology
        // if(pt.getRr()<10 && !pt.gethasHistOfRespDepDrugsIntake() && pt.gethasAcuteBrainInjuryOrStroke()){
        //    outlist.add('CnsEtiology'); 
        // }
        if(pt.getRr()<10 && !pt.gethasHistOfRespDepDrugsIntake() && (pt.hasHighLikelyhoodofStroke() || pt._hasAcuteBrainInjuryOrStroke)){
           outlist.add('CnsEtiology'); 
        }
        // SevereLRTI
        if(pt.pFRatio()<200 && pt.pFRatio()<350 && pt.hasLRTI()){
          outlist.add('SevereLRTI');
        }
        // ModerateLRTI
        if(pt.pFRatio()<350 && pt.hasLRTI() && pt.pFRatio()>350){
          outlist.add('ModerateLRTI');
        }
        // AcuteLungInjury
        if(pt.pFRatio()<200){
          outlist.add('AcuteLungInjury');
        }
        // COPD
        if(pt.gethasCopd() && pt.hasChronicRespiratoryAcidosis()){
          outlist.add('COPD');
        }
        // ObesityHypoventilationSyndrome
        if(pt.hasChronicRespiratoryAcidosis() && pt.bmi()>30){
          outlist.add('ObesityHypoventilationSyndrome');
        }
        // AcuteAsthma
        if(!pt.hasChronicRespiratoryAcidosis() && (pt.gethasAsthma()|| pt.gethasRhonchi() )){
          outlist.add('AcuteAsthma');
        }
        // HyperalimentationRespiratoryAcidosis
        if(!pt.hasChronicRespiratoryAcidosis() && pt.getisTakingTpn()){
          outlist.add('HyperalimentationRespiratoryAcidosis');
        }
        // SeizuresInducedRespiratoryAcidosis
        if(!pt.hasChronicRespiratoryAcidosis() && pt.gethasHistOfAcuteSeizure()){
          outlist.add('SeizuresInducedRespiratoryAcidosis');
        }


      
    }
      if(abgList.contains('HighAa')){

        // CardiacShunt
        if(!pt.gethasImpSpoWithO2()){
          outlist.add('CardiacShunt');
        }
        // PulmEmbolism
        if(pt.gethasImpSpoWithO2() && pt.hasHighPeRisk() ){
          outlist.add('PulmEmbolism');
        }
        // AcuteAsthma
        if(pt.gethasImpSpoWithO2() && pt.gethasAsthma() ){
          outlist.add('AcuteAsthma');
        }
        // COPD
        if(pt.gethasImpSpoWithO2() && pt.gethasCopd()){
          outlist.add('COPD');
        }
        
        // ModerateLRTI
        if(pt.gethasImpSpoWithO2() && pt.hasLRTI() && pt.pFRatio()>350){
          outlist.add('ModerateLRTI');
        }

        // Atelectasis
        if(pt.gethasImpSpoWithO2() && !pt.hasLRTI()){
          outlist.add('Atelectasis');
        }
        // PulmonaryInfarct
        if(pt.gethasImpSpoWithO2() && !pt.hasLRTI()){
          outlist.add('PulmonaryInfarct');
        }
        // MucusPlug
        if(pt.gethasImpSpoWithO2() && !pt.gethasBLBreathSounds()){
          outlist.add('MucusPlug');
        }

        // SevereLRTI
        if(pt.pFRatio()<350 && pt.pFRatio()<200 && pt.gethasImpSpoWithO2() && pt.hasLRTI()){
          outlist.add('SevereLRTI');
        }
        // PleuralEffusion
        if(pt.gethasImpSpoWithO2() && !pt.gethasBLBreathSounds() ){
          outlist.add('PleuralEffusion');
        }
        // ReExpansionPulmonaryEdema
        if(pt.gethasImpSpoWithO2() && pt.hasHighRiskOfRexpPulmEdema() ){
          outlist.add('ReExpansionPulmonaryEdema');
        }

        // ULIntubation
        if(pt.gethasImpSpoWithO2() && pt.getisIntubated() && !pt.gethasBLBreathSounds()){
          outlist.add('ULIntubation');
        }
        // PulmomaryEdema
        if(pt.gethasImpSpoWithO2() && pt.gethasBLCrepts() && pt.gethasHistOfCHFIHD()){
          outlist.add('PulmomaryEdema');
        }
        // AcuteLungInjury
        if(pt.pFRatio()<200){
          outlist.add('AcuteLungInjury');
        }
     
      
    }
    if(abgList.contains('NormalAa')){
      // COPD
      if(pt.getCo2()>45 && pt.gethasCopd()){
          outlist.add('COPD');
        }
      // Hypoventilation
       if(pt.getCo2()>45 && (pt.getRr()<10|| pt.gethasLowTidalVol()) ){
          outlist.add('Hypoventilation');
        }
      // MethHaemoglobin
      if(pt.getCo2()<45 && pt.hasSaturationGap() && pt.getSpo()<pt.getSao()){
        outlist.add('MethHaemoglobin');
      }
      // CarboxyHaemoglobin
       if(pt.getCo2()<45 && pt.hasSaturationGap() && pt.getSpo()>=pt.getSao()){
        outlist.add('CarboxyHaemoglobin');
      }

      
    }else{

    }
    var l = outlist.toSet().toList();
    print(l.toString());
    return l;
  
}
}