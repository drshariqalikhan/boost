import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';


class CsvObject{
  final fileName;

  CsvObject({this.fileName});

  doesCsvFileExist()async{
    final directory = await getApplicationDocumentsDirectory();
    File logFile = File('${directory.path}/${this.fileName}.csv');
    print("DoesFileExist?"+logFile.existsSync().toString());
    if(logFile.existsSync()){
      return true;
    }else{
      return false;
    }
  }

  addRowToCsv({age,ph,co2,bi,na,cl,k,alb,pao,spo,sao,fio,wt,ht,sbp,dbp,hr,rr,temp,glu,wcc,cr,
  isMale,
  isBlack, 
  hasAlcoholHistory,
  isDiabetic,
  hasPressorSupport,
  hasSpinalInjury,
  hasPrimarySignsOfAllergicRxn,
  hasAcuteBurns,
  hasAbdominalPain,
  hasGallStoneOrPancSx,
  isTakingSteroids,
  hasPitPathology,
  hasSkinPigmentPatch,
  hasAbdominalTrauma,
  hasCough,
  hasHemoptysis,
  hasDyspnoea,
  hasBLBreathSounds,
  hasRhonchi,
  hasBLCrepts,
  hasULCrepts,
  hasChestPain,
  hasMalig,
  hasSTI,
  hasUTIonDipstick,
  hasSignsOfPeritonitis,
  hasSignsOfCLABSI,
  hasSignsOfCNSInfec,
  hasRiskOfIe,
  isJVPHi,
  hasHistOfCHFIHD,
  hasHistOfDVTPE,
  hasHistOfRecentSxOrFrac,
  hasUlLLPain,
  hasCalfTenderness,
  hasSharpOrBluntChestTrauma,
  hasAcuteOnsetOfSymptoms,
  hasPulsusParadoxus,
  hasRecentRadioTx,
  hasTB,
  hasHistOfPericardEff,
  hasAcuteHemorrghe,
  hasAcuteGiFluidLoss,
  hasHistOfToxinAlcholIntake,
  hasHistOfSbBypass,
  hasHistOfChronParacet,
  hasHistOfXsNacl,
  hasHistOfLaxUrndivOrDiarr,
  hasLowJvpOrNegBal,
  hasXsVomitNgLoss,
  isTakingDiuretics,
  isTakingLicorice,
  isTakingCaSuppl,
  hasHistOfRespDepDrugsIntake,
  hasAcuteBrainInjuryOrStroke,
  hasCopd,
  hasAsthma,
  isTakingTpn,
  hasHistOfAcuteSeizure,
  hasImpSpoWithO2,
  hasHadLargePleuralDrainage,
  hasLungCollapseFor3d,
  hasLowTidalVol,
  isIntubated,
  hasFaceDroopOrLimbWeakness,
  hasNewAphasia,
  hasAlteredMentation,
  suspectedDsList,
  suspectedInfSourceList,
  abgList,
  anionGap,
  gfr,
  hasLowGlobalPerf,
  hasSIRS,
  hasAnaphylaxis,
  hasLRTI,
  hasAdrenalInsuff,
  hasPancreatitis,
  hasChfOrIhdRisk,
  hasPneumothorax,
  hasPeriCardTamponade,
  hasHighPeRisk,
  pFRatio,
  hasChronicRespiratoryAcidosis,
  hasHighRiskOfRexpPulmEdema,
  hasSaturationGap,
  hasHighLikelyhoodofStroke,
  comments
  })async{




    final directory = await getApplicationDocumentsDirectory();
    File logFile = File('${directory.path}/${this.fileName}.csv');
    var sink = logFile.openWrite(mode: FileMode.append);
    // var row = "$nAME,$aGE,$gENDER,$pOSTCODE\n";
    var row = '$age,$ph,$co2,$bi,$na,$cl,$k,$alb,$pao,$spo,$sao,$fio,$wt,$ht,$sbp,$dbp,$hr,$rr,$temp,$glu,$wcc,$cr,$isMale,$isBlack,'+
    '$hasAlcoholHistory,$isDiabetic,$hasPressorSupport,$hasSpinalInjury,$hasPrimarySignsOfAllergicRxn,$hasAcuteBurns,$hasAbdominalPain,'+
    '$hasGallStoneOrPancSx,$isTakingSteroids,$hasPitPathology,$hasSkinPigmentPatch,$hasAbdominalTrauma,$hasCough,$hasHemoptysis,$hasDyspnoea,'+
    '$hasBLBreathSounds,$hasRhonchi,$hasBLCrepts,$hasULCrepts,$hasChestPain,$hasMalig,$hasSTI,$hasUTIonDipstick,$hasSignsOfPeritonitis,'+
    '$hasSignsOfCLABSI,$hasSignsOfCNSInfec,$hasRiskOfIe,$isJVPHi,$hasHistOfCHFIHD,$hasHistOfDVTPE,$hasHistOfRecentSxOrFrac,$hasUlLLPain,'+
    '$hasCalfTenderness,$hasSharpOrBluntChestTrauma,$hasAcuteOnsetOfSymptoms,$hasPulsusParadoxus,$hasRecentRadioTx,$hasTB,$hasHistOfPericardEff,'+
    '$hasAcuteHemorrghe,$hasAcuteGiFluidLoss,$hasHistOfToxinAlcholIntake,$hasHistOfSbBypass,$hasHistOfChronParacet,$hasHistOfXsNacl,$hasHistOfLaxUrndivOrDiarr,'+
    '$hasLowJvpOrNegBal,$hasXsVomitNgLoss,$isTakingDiuretics,$isTakingLicorice,$isTakingCaSuppl,$hasHistOfRespDepDrugsIntake,$hasAcuteBrainInjuryOrStroke,'+
    '$hasCopd,$hasAsthma,$isTakingTpn,$hasHistOfAcuteSeizure,$hasImpSpoWithO2,$hasHadLargePleuralDrainage,$hasLungCollapseFor3d,$hasLowTidalVol,$isIntubated,'+
    '$hasFaceDroopOrLimbWeakness,$hasNewAphasia,$hasAlteredMentation,$anionGap,$gfr,$hasLowGlobalPerf,'+
    '$hasSIRS,$hasAnaphylaxis,$hasLRTI,$hasAdrenalInsuff,$hasPancreatitis,$hasChfOrIhdRisk,$hasPneumothorax,$hasPeriCardTamponade,$hasHighPeRisk,$pFRatio,'+
    '$hasChronicRespiratoryAcidosis,$hasHighRiskOfRexpPulmEdema,$hasSaturationGap,$hasHighLikelyhoodofStroke,,$comments,$suspectedDsList,$suspectedInfSourceList,$abgList\n';
    sink.write(row);
    await sink.flush();
    await sink.close();
  }

  getFilePath()async{
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/${this.fileName}.csv';
  }

  readData()async{
  try{
    final directory = await getApplicationDocumentsDirectory();
    File logFile = File('${directory.path}/${this.fileName}.csv');
    String contents = await logFile.readAsString();
    return contents;

  }catch(e){
    return "its empty";

  }}

}