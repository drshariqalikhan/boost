import 'package:boost/components/BoostList.dart';
import 'package:boost/components/CsvObject.dart';
import 'package:boost/components/Header.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;



class Results extends StatelessWidget {



  // List<String> createSuspectedDsList(DataModel datamodel){
  //   var pt = datamodel.pat;
  //   List<String> outlist=[];
  //   List abgList = datamodel.pat.getAbgList();
  //   if(abgList.contains('Hagma')){
  //       // AlcoholicKetoacidosis
  //       if(pt.getGlu()<250 && pt.getHasAlcoholHistory()==true ){
  //         outlist.add('AlcoholicKetoacidosis');
  //       }
  //       // DiabeticKetoAcidosis
  //       if(pt.getGlu()>250 && pt.getIsDiabetic()==true){
  //         outlist.add('DiabeticKetoAcidosis');
  //       }

  //       // NeurogenicShock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && pt.gethasSpinalInjury()==true){
  //         outlist.add('NeurogenicShock');
  //       }

  //       // Anaphylacticshock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && pt.hasAnaphylaxis()==true) {
  //         outlist.add('Anaphylacticshock');
  //       }

  //       // Burnshock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && pt.gethasAcuteBurns()==true){
  //         outlist.add('Burnshock');
  //       }
  //       // AdrenalFailureshock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true & pt.hasAdrenalInsuff()){
  //         outlist.add('AdrenalFailureshock');
  //       }

  //       // PancreaticShock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true &&   pt.hasPancreatitis() == true){
  //         outlist.add('PancreaticShock');
  //       }
  //       // Septicshock
  //       List suspectedInfectionSourceList = pt.getsuspectedInfSourceList();
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==true && suspectedInfectionSourceList.isNotEmpty){
  //          outlist.add('Septicshock'); 
  //       }
  //       // Cardiogencshock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()== false && pt.getisJVPHi()==true && pt.hasChfOrIhdRisk()==true ){
  //         outlist.add('Cardiogencshock');
  //       }
  //       // PneumothoraxShock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==false && pt.getisJVPHi()==true && pt.hasPneumothorax()==true){
  //         outlist.add('PneumothoraxShock');
  //       }
  //       // PericardialTamponadeShock
  //       if(pt.hasLowGlobalPerf()==true && pt.hasSIRS()==false && pt.getisJVPHi()==true && pt.hasPeriCardTamponade()==true){
  //         outlist.add('PericardialTamponadeShock');
  //       }
  //       //PulmEmbolism
  //       if(pt.hasLowGlobalPerf() && !pt.hasSIRS() && pt.getisJVPHi() && pt.hasHighPeRisk()){
  //         outlist.add('PulmEmbolism');
  //       }
  //       //HypovolumicShock
  //       if(pt.hasLowGlobalPerf() && !pt.hasSIRS() && !pt.getisJVPHi() && pt.gethasAcuteGiFluidLoss() ){
  //         outlist.add('HypovolumicShock');
  //       }

  //       //HemorrhagicShock
  //       if(pt.hasLowGlobalPerf() && !pt.hasSIRS() && !pt.getisJVPHi() && pt.gethasAcuteHemorrghe()){
  //         outlist.add('HemorrhagicShock');
  //       }

  //       // RenalFailureMetabolicAcidosis
  //       if(pt.getGfr()<40 && pt.getAnionGap()>20){
  //         outlist.add('RenalFailureMetabolicAcidosis');
  //       }  

  //       // ToxinAlcoholHighAGMetabolicAcidosis
  //       if(pt.gethasHistOfToxinAlcholIntake()){
  //         outlist.add('ToxinAlcoholHighAGMetabolicAcidosis');
  //       }

  //       //SmallBowelBypassHighAGMetabolicAcidosis
  //       if(pt.gethasHistOfSbBypass()){
  //         outlist.add('SmallBowelBypassHighAGMetabolicAcidosis');

  //       }
  //       // ChronicParacetMetabolicAcidosis
  //       if(pt.gethasHistOfChronParacet()){
  //         outlist.add('ChronicParacetMetabolicAcidosis');
  //       }

      
  //   }
  //     if(abgList.contains('Nagma')){
  //       // NormalSalineMetabolicAcidosis
  //       if(pt.gethasHistOfXsNacl()){
  //         outlist.add('NormalSalineMetabolicAcidosis');
  //       }
  //       // RenalFailureMetabolicAcidosis
  //       if(pt.getGfr()<40){
  //         outlist.add('RenalFailureMetabolicAcidosis');
  //       }
  //       // HyperKalemiaMetabolicAcidosis
  //       if(pt.getK()>7){
  //         outlist.add('HyperKalemiaMetabolicAcidosis');
  //       }
  //       // RenalTubularAcidosis4
  //       if(pt.getK()>5.5 && pt.getK()<6.9){
  //         outlist.add('RenalTubularAcidosis4');
  //       }
  //       // GiGuBaseLossMetabolicAcidosis
  //       if(pt.gethasHistOfLaxUrndivOrDiarr()){
  //         outlist.add('GiGuBaseLossMetabolicAcidosis');
  //       }
  //       //RenalTubularAcidosis

  //       if(!pt.gethasHistOfXsNacl() && pt.getGfr()>40 && pt.getK()<5.5 && !pt.gethasHistOfLaxUrndivOrDiarr()){
  //         outlist.add('RenalTubularAcidosis');
  //       }
        

  //   }
  //     if(abgList.contains('RespAlk')){

  //       // Hypoxemia
  //       if(pt.pFRatio()<350){
  //         outlist.add('Hypoxemia');
  //       }
  //       // PulmEmbolism
  //       if(pt.hasHighPeRisk()){
  //         outlist.add('PulmEmbolism');
  //       }
  //       // CnsEtiology
  //       if(pt.gethasAcuteBrainInjuryOrStroke()){
  //         outlist.add('CnsEtiology');
  //       }

      
  //   }
  //     if(abgList.contains('MetabAlk')){
  //       // GiLossMetabolicAlkalosis
  //       if(pt.gethasLowJvpOrNegBal() && pt.gethasXsVomitNgLoss()){
  //         outlist.add('GiLossMetabolicAlkalosis');
  //       }  

  //       // DiuerticUseMetabolicAlkalosis
  //       if(pt.gethasLowJvpOrNegBal() && pt.getisTakingDiuretics()){
  //         outlist.add('DiuerticUseMetabolicAlkalosis');
  //       }
        
  //       // BarterGiltmen 
  //       if(pt.gethasLowJvpOrNegBal() && !pt.gethasXsVomitNgLoss() && !pt.getisTakingDiuretics()){
  //         outlist.add('BarterGiltmen');
  //       }
  //       // PrimaryAldosteronism
  //       if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
  //           outlist.add('PrimaryAldosteronism');
  //       }
  //       // SecondaryAldosteronism
  //       if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
  //           outlist.add('SecondaryAldosteronism');
  //       }
  //       // CushingSyndrome
  //       if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
  //           outlist.add('CushingSyndrome');
  //       }
  //       // LiddleSyndrome
  //       if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100)){
  //           outlist.add('LiddleSyndrome');
  //       }
  //       // ExogenousLicorice
  //        if(!pt.gethasLowJvpOrNegBal() && (pt.getSbp()>160 || pt.getDbp()>100) && pt.getisTakingLicorice()){
  //           outlist.add('ExogenousLicorice');
  //       }
  //       // Hypokalemia
  //       if(!pt.gethasLowJvpOrNegBal() && !(pt.getSbp()>160 || pt.getDbp()>100) && pt.getK()<3.5){
  //           outlist.add('Hypokalemia');
  //       }
  //       // MilkAlkaliSyndrome
  //       if(!pt.gethasLowJvpOrNegBal() && !(pt.getSbp()>160 || pt.getDbp()>100) && pt.getisTakingCaSuppl()  ){
  //           outlist.add('MilkAlkaliSyndrome');
  //       }

      
  //   }
  //     if(abgList.contains('RespAcid')){
  //       // DrugInducedRespiratoryAcidosis
  //       if(pt.getRr()<10 && pt.gethasHistOfRespDepDrugsIntake()){
  //         outlist.add('DrugInducedRespiratoryAcidosis');
  //       }
  //       // CnsEtiology
  //       if(pt.getRr()<10 && !pt.gethasHistOfRespDepDrugsIntake() && pt.gethasAcuteBrainInjuryOrStroke()){
  //          outlist.add('CnsEtiology'); 
  //       }
  //       // SevereLRTI
  //       if(pt.pFRatio()<200 && pt.pFRatio()<350 && pt.hasLRTI()){
  //         outlist.add('SevereLRTI');
  //       }
  //       // ModerateLRTI
  //       if(pt.pFRatio()<350 && pt.hasLRTI() && pt.pFRatio()>350){
  //         outlist.add('ModerateLRTI');
  //       }
  //       // AcuteLungInjury
  //       if(pt.pFRatio()<200){
  //         outlist.add('AcuteLungInjury');
  //       }
  //       // COPD
  //       if(pt.gethasCopd() && pt.hasChronicRespiratoryAcidosis()){
  //         outlist.add('COPD');
  //       }
  //       // ObesityHypoventilationSyndrome
  //       if(pt.hasChronicRespiratoryAcidosis() && pt.bmi()>30){
  //         outlist.add('ObesityHypoventilationSyndrome');
  //       }
  //       // AcuteAsthma
  //       if(!pt.hasChronicRespiratoryAcidosis() && (pt.gethasAsthma()|| pt.gethasRhonchi() )){
  //         outlist.add('AcuteAsthma');
  //       }
  //       // HyperalimentationRespiratoryAcidosis
  //       if(!pt.hasChronicRespiratoryAcidosis() && pt.getisTakingTpn()){
  //         outlist.add('HyperalimentationRespiratoryAcidosis');
  //       }
  //       // SeizuresInducedRespiratoryAcidosis
  //       if(!pt.hasChronicRespiratoryAcidosis() && pt.gethasHistOfAcuteSeizure()){
  //         outlist.add('SeizuresInducedRespiratoryAcidosis');
  //       }


      
  //   }
  //     if(abgList.contains('HighAa')){

  //       // CardiacShunt
  //       if(!pt.gethasImpSpoWithO2()){
  //         outlist.add('CardiacShunt');
  //       }
  //       // PulmEmbolism
  //       if(pt.gethasImpSpoWithO2() && pt.hasHighPeRisk() ){
  //         outlist.add('PulmEmbolism');
  //       }
  //       // AcuteAsthma
  //       if(pt.gethasImpSpoWithO2() && pt.gethasAsthma() ){
  //         outlist.add('AcuteAsthma');
  //       }
  //       // COPD
  //       if(pt.gethasImpSpoWithO2() && pt.gethasCopd()){
  //         outlist.add('COPD');
  //       }
        
  //       // ModerateLRTI
  //       if(pt.gethasImpSpoWithO2() && pt.hasLRTI() && pt.pFRatio()>350){
  //         outlist.add('ModerateLRTI');
  //       }

  //       // Atelectasis
  //       if(pt.gethasImpSpoWithO2() && !pt.hasLRTI()){
  //         outlist.add('Atelectasis');
  //       }
  //       // PulmonaryInfarct
  //       if(pt.gethasImpSpoWithO2() && !pt.hasLRTI()){
  //         outlist.add('PulmonaryInfarct');
  //       }
  //       // MucusPlug
  //       if(pt.gethasImpSpoWithO2() && !pt.gethasBLBreathSounds()){
  //         outlist.add('MucusPlug');
  //       }

  //       // SevereLRTI
  //       if(pt.pFRatio()<350 && pt.pFRatio()<200 && pt.gethasImpSpoWithO2() && pt.hasLRTI()){
  //         outlist.add('SevereLRTI');
  //       }
  //       // PleuralEffusion
  //       if(pt.gethasImpSpoWithO2() && !pt.gethasBLBreathSounds() ){
  //         outlist.add('PleuralEffusion');
  //       }
  //       // ReExpansionPulmonaryEdema
  //       if(pt.gethasImpSpoWithO2() && pt.hasHighRiskOfRexpPulmEdema() ){
  //         outlist.add('ReExpansionPulmonaryEdema');
  //       }

  //       // ULIntubation
  //       if(pt.gethasImpSpoWithO2() && pt.getisIntubated() && !pt.gethasBLBreathSounds()){
  //         outlist.add('ULIntubation');
  //       }
  //       // PulmomaryEdema
  //       if(pt.gethasImpSpoWithO2() && pt.gethasBLCrepts() && pt.gethasHistOfCHFIHD()){
  //         outlist.add('PulmomaryEdema');
  //       }
  //       // AcuteLungInjury
  //       if(pt.pFRatio()<200){
  //         outlist.add('AcuteLungInjury');
  //       }
     
      
  //   }
  //   if(abgList.contains('NormalAa')){
  //     // COPD
  //     if(pt.getCo2()>45 && pt.gethasCopd()){
  //         outlist.add('COPD');
  //       }
  //     // Hypoventilation
  //      if(pt.getCo2()>45 && (pt.getRr()<10|| pt.gethasLowTidalVol()) ){
  //         outlist.add('Hypoventilation');
  //       }
  //     // MethHaemoglobin
  //     if(pt.getCo2()<45 && pt.hasSaturationGap() && pt.getSpo()<pt.getSao()){
  //       outlist.add('MethHaemoglobin');
  //     }
  //     // CarboxyHaemoglobin
  //      if(pt.getCo2()<45 && pt.hasSaturationGap() && pt.getSpo()>=pt.getSao()){
  //       outlist.add('CarboxyHaemoglobin');
  //     }

      
  //   }else{

  //   }
  //   var l = outlist.toSet().toList();
  //   print(l.toString());
  //   return outlist;
  // }




  @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);
    final _commentsController = TextEditingController();
      // List a = ['one','two','three'];
   CsvObject csvObject = CsvObject(fileName: 'test');



    return Scaffold(
      appBar: AppBar(title:Text(this.toString())),

      body: Column(
        children: <Widget>[
            Container(
            color: Colors.green,
            child: TextFormField(
              controller: _commentsController,
              
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Header(headerText: 'SusPected Infections',),
                Expanded(
                  child: BoostList(
                    dataAsList: datamodel.pat.getsuspectedInfSourceList(),
                    // dataAsList: a,
                  ),
                ),
                Header(headerText: 'SusPected Conditions',),
                Expanded(
                  child: BoostList(
                    dataAsList: datamodel.pat.getSuspectDsList(),
                                      // dataAsList: a,

                  ),

                ),
                Header(headerText: 'ABG abnormality',),

                Expanded(
                  child: BoostList(
                   
                    dataAsList:datamodel.pat.getAbgList() ,
                                      // dataAsList: a,

                  ),
                )
              ],
            ),
          ),
        
        ],
      ),
     
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: ()async{
          // datamodel.initList();
          String comments = _commentsController.text;
          //create CSV with data
              var exist = await csvObject.doesCsvFileExist();
              if(!exist){ 
                await csvObject.addRowToCsv(
                  abgList: 'abgList',
                  age: 'age',
                  alb: 'alb',
                  anionGap: 'anionGap',
                  bi: 'bi',
                  cl: 'cl',
                  co2: 'co2',
                  comments: 'comments',
                  cr: 'cr',
                  dbp: 'dbp',
                  fio: 'fio',
                  gfr: 'gfr',
                  glu: 'glu',
                  hasAbdominalPain: 'hasAbdominalPain',
                  hasAbdominalTrauma: 'hasAbdominalTrauma',
                  hasAcuteBrainInjuryOrStroke: 'hasAcuteBrainInjuryOrStroke',
                  hasAcuteBurns: 'hasAcuteBurns',
                  hasAcuteGiFluidLoss: 'hasAcuteGiFluidLoss',
                  hasAcuteHemorrghe: 'hasAcuteHemorrghe',
                  hasAcuteOnsetOfSymptoms: 'hasAcuteOnsetOfSymptoms',
                  hasAdrenalInsuff: 'hasAdrenalInsuff',
                  hasAlcoholHistory: 'hasAlcoholHistory',
                  hasAlteredMentation: 'hasAlteredMentation',
                  hasAnaphylaxis: 'hasAnaphylaxis',
                  hasAsthma: 'hasAsthma',
                  hasBLBreathSounds: 'hasBLBreathSounds',
                  hasBLCrepts: 'hasBLCrepts',
                  hasCalfTenderness: 'hasCalfTenderness',
                  hasChestPain: 'hasChestPain',
                  hasChfOrIhdRisk: 'hasChfOrIhdRisk',
                  hasChronicRespiratoryAcidosis: 'hasChronicRespiratoryAcidosis',
                  hasCopd: 'hasCopd',
                  hasCough: 'hasCough',
                  hasDyspnoea: 'hasDyspnoea',
                  hasFaceDroopOrLimbWeakness: 'hasFaceDroopOrLimbWeakness',
                  hasGallStoneOrPancSx: 'hasGallStoneOrPancSx',
                  hasHadLargePleuralDrainage: 'hasHadLargePleuralDrainage',
                  hasHemoptysis: 'hasHemoptysis',
                  hasHighLikelyhoodofStroke: 'hasHighLikelyhoodofStroke',
                  hasHighPeRisk: 'hasHighPeRisk',
                  hasHighRiskOfRexpPulmEdema: 'hasHighRiskOfRexpPulmEdema',
                  hasHistOfAcuteSeizure: 'hasHistOfAcuteSeizure',
                  hasHistOfCHFIHD: 'hasHistOfCHFIHD',
                  hasHistOfChronParacet: 'hasHistOfChronParacet',
                  hasHistOfDVTPE: 'hasHistOfDVTPE',
                  hasHistOfLaxUrndivOrDiarr: 'hasHistOfLaxUrndivOrDiarr',
                  hasHistOfPericardEff: 'hasHistOfPericardEff',
                  hasHistOfRecentSxOrFrac: 'hasHistOfRecentSxOrFrac',
                  hasHistOfRespDepDrugsIntake: 'hasHistOfRespDepDrugsIntake',
                  hasHistOfSbBypass: 'hasHistOfSbBypass',
                  hasHistOfToxinAlcholIntake: 'hasHistOfToxinAlcholIntake',
                  hasHistOfXsNacl: 'hasHistOfXsNacl',
                  hasImpSpoWithO2: 'hasImpSpoWithO2',
                  hasLowGlobalPerf: 'hasLowGlobalPerf',
                  hasLowJvpOrNegBal: 'hasLowJvpOrNegBal',
                  hasLowTidalVol: 'hasLowTidalVol',
                  hasLRTI: 'hasLRTI',
                  hasLungCollapseFor3d: 'hasLungCollapseFor3d',
                  hasMalig: 'hasMalig',
                  hasNewAphasia: 'hasNewAphasia',
                  hasPancreatitis: 'hasPancreatitis',
                  hasPeriCardTamponade: 'hasPeriCardTamponade',
                  hasPitPathology: 'hasPitPathology',
                  hasPneumothorax: 'hasPneumothorax',
                  hasPressorSupport: 'hasPressorSupport',
                  hasPrimarySignsOfAllergicRxn: 'hasPrimarySignsOfAllergicRxn',
                  hasPulsusParadoxus: 'hasPulsusParadoxus',
                  hasRecentRadioTx: 'hasRecentRadioTx',
                  hasRhonchi: 'hasRhonchi',
                  hasRiskOfIe: 'hasRiskOfIe',
                  hasSaturationGap: 'hasSaturationGap',
                  hasSharpOrBluntChestTrauma: 'hasSharpOrBluntChestTrauma',
                  hasSignsOfCLABSI: 'hasSignsOfCLABSI',
                  hasSignsOfCNSInfec: 'hasSignsOfCNSInfec',
                  hasSignsOfPeritonitis: 'hasSignsOfPeritonitis',
                  hasSIRS: 'hasSIRS',
                  hasSkinPigmentPatch: 'hasSkinPigmentPatch',
                  hasSpinalInjury: 'hasSpinalInjury',
                  hasSTI: 'hasSTI',
                  hasTB: 'hasTB',
                  hasULCrepts: 'hasULCrepts',
                  hasUlLLPain: 'hasUlLLPain',
                  hasUTIonDipstick: 'hasUTIonDipstick',
                  hasXsVomitNgLoss: 'hasXsVomitNgLoss',
                  hr: 'hr',
                  ht: 'ht',
                  isBlack: 'isBlack',
                  isDiabetic: 'isDiabetic',
                  isIntubated: 'isIntubated',
                  isJVPHi: 'isJVPHi',
                  isMale: 'isMale',
                  isTakingCaSuppl: 'isTakingCaSuppl',
                  isTakingDiuretics: 'isTakingDiuretics',
                  isTakingLicorice: 'isTakingLicorice',
                  isTakingSteroids: 'isTakingSteroids',
                  isTakingTpn: 'isTakingTpn',
                  k: 'k',
                  na: 'na',
                  pao: 'pao',
                  pFRatio: 'pFRatio',
                  ph: 'ph',
                  rr: 'rr',
                  sao: 'sao',
                  sbp: 'sbp',
                  spo: 'spo',
                  suspectedDsList: 'suspectedDsList',
                  suspectedInfSourceList: 'suspectedInfSourceList',
                  temp: 'temp',
                  wcc: 'wcc',
                  wt: 'wt'
                );
                await csvObject.addRowToCsv(
                  abgList: datamodel.pat.getAbgList(),
                  age: datamodel.pat.getAge(),
                  alb: datamodel.pat.getAlb(),
                  anionGap: datamodel.pat.getAnionGap(),
                  bi: datamodel.pat.getBi(),
                  cl: datamodel.pat.getCl(),
                  co2: datamodel.pat.getCo2(),
                  comments: comments,
                  cr: datamodel.pat.getCr(),
                  dbp: datamodel.pat.getDbp(),
                  fio: datamodel.pat.getFio(),
                  gfr:  datamodel.pat.getGfr(),
                  glu:  datamodel.pat.getGlu(),
                  hasAbdominalPain:  datamodel.pat.gethasAbdominalPain(),
                  hasAbdominalTrauma:  datamodel.pat.gethasAbdominalTrauma(),
                  hasAcuteBrainInjuryOrStroke: datamodel.pat.gethasAcuteBrainInjuryOrStroke(),
                  hasAcuteBurns:  datamodel.pat.gethasAcuteBurns(),
                  hasAcuteGiFluidLoss:  datamodel.pat.gethasAcuteGiFluidLoss(),
                  hasAcuteHemorrghe:  datamodel.pat.gethasAcuteHemorrghe(),
                  hasAcuteOnsetOfSymptoms:  datamodel.pat.gethasAcuteOnsetOfSymptoms(),
                  hasAdrenalInsuff:  datamodel.pat.hasAdrenalInsuff(),
                  hasAlcoholHistory:  datamodel.pat.getHasAlcoholHistory(),
                  hasAlteredMentation:  datamodel.pat.gethasAlteredMentation(),
                  hasAnaphylaxis:  datamodel.pat.hasAnaphylaxis(),
                  hasAsthma:  datamodel.pat.gethasAsthma(),
                  hasBLBreathSounds:  datamodel.pat.gethasBLBreathSounds(),
                  hasBLCrepts:  datamodel.pat.gethasBLCrepts(),
                  hasCalfTenderness: 'hasCalfTenderness',
                  hasChestPain: 'hasChestPain',
                  hasChfOrIhdRisk: 'hasChfOrIhdRisk',
                  hasChronicRespiratoryAcidosis: 'hasChronicRespiratoryAcidosis',
                  hasCopd: 'hasCopd',
                  hasCough: 'hasCough',
                  hasDyspnoea: 'hasDyspnoea',
                  hasFaceDroopOrLimbWeakness: 'hasFaceDroopOrLimbWeakness',
                  hasGallStoneOrPancSx: 'hasGallStoneOrPancSx',
                  hasHadLargePleuralDrainage: 'hasHadLargePleuralDrainage',
                  hasHemoptysis: 'hasHemoptysis',
                  hasHighLikelyhoodofStroke: 'hasHighLikelyhoodofStroke',
                  hasHighPeRisk: 'hasHighPeRisk',
                  hasHighRiskOfRexpPulmEdema: 'hasHighRiskOfRexpPulmEdema',
                  hasHistOfAcuteSeizure: 'hasHistOfAcuteSeizure',
                  hasHistOfCHFIHD: 'hasHistOfCHFIHD',
                  hasHistOfChronParacet: 'hasHistOfChronParacet',
                  hasHistOfDVTPE: 'hasHistOfDVTPE',
                  hasHistOfLaxUrndivOrDiarr: 'hasHistOfLaxUrndivOrDiarr',
                  hasHistOfPericardEff: 'hasHistOfPericardEff',
                  hasHistOfRecentSxOrFrac: 'hasHistOfRecentSxOrFrac',
                  hasHistOfRespDepDrugsIntake: 'hasHistOfRespDepDrugsIntake',
                  hasHistOfSbBypass: 'hasHistOfSbBypass',
                  hasHistOfToxinAlcholIntake: 'hasHistOfToxinAlcholIntake',
                  hasHistOfXsNacl: 'hasHistOfXsNacl',
                  hasImpSpoWithO2: 'hasImpSpoWithO2',
                  hasLowGlobalPerf: 'hasLowGlobalPerf',
                  hasLowJvpOrNegBal: 'hasLowJvpOrNegBal',
                  hasLowTidalVol: 'hasLowTidalVol',
                  hasLRTI: 'hasLRTI',
                  hasLungCollapseFor3d: 'hasLungCollapseFor3d',
                  hasMalig: 'hasMalig',
                  hasNewAphasia: 'hasNewAphasia',
                  hasPancreatitis: 'hasPancreatitis',
                  hasPeriCardTamponade: 'hasPeriCardTamponade',
                  hasPitPathology: 'hasPitPathology',
                  hasPneumothorax: 'hasPneumothorax',
                  hasPressorSupport: 'hasPressorSupport',
                  hasPrimarySignsOfAllergicRxn: 'hasPrimarySignsOfAllergicRxn',
                  hasPulsusParadoxus: 'hasPulsusParadoxus',
                  hasRecentRadioTx: 'hasRecentRadioTx',
                  hasRhonchi: 'hasRhonchi',
                  hasRiskOfIe: 'hasRiskOfIe',
                  hasSaturationGap: 'hasSaturationGap',
                  hasSharpOrBluntChestTrauma: 'hasSharpOrBluntChestTrauma',
                  hasSignsOfCLABSI: 'hasSignsOfCLABSI',
                  hasSignsOfCNSInfec: 'hasSignsOfCNSInfec',
                  hasSignsOfPeritonitis: 'hasSignsOfPeritonitis',
                  hasSIRS: 'hasSIRS',
                  hasSkinPigmentPatch: 'hasSkinPigmentPatch',
                  hasSpinalInjury: 'hasSpinalInjury',
                  hasSTI: 'hasSTI',
                  hasTB: 'hasTB',
                  hasULCrepts: 'hasULCrepts',
                  hasUlLLPain: 'hasUlLLPain',
                  hasUTIonDipstick: 'hasUTIonDipstick',
                  hasXsVomitNgLoss: 'hasXsVomitNgLoss',
                  hr: 'hr',
                  ht: 'ht',
                  isBlack: 'isBlack',
                  isDiabetic: 'isDiabetic',
                  isIntubated: 'isIntubated',
                  isJVPHi: 'isJVPHi',
                  isMale: 'isMale',
                  isTakingCaSuppl: 'isTakingCaSuppl',
                  isTakingDiuretics: 'isTakingDiuretics',
                  isTakingLicorice: 'isTakingLicorice',
                  isTakingSteroids: 'isTakingSteroids',
                  isTakingTpn: 'isTakingTpn',
                  k: 'k',
                  na: 'na',
                  pao: 'pao',
                  pFRatio: 'pFRatio',
                  ph: 'ph',
                  rr: 'rr',
                  sao: 'sao',
                  sbp: 'sbp',
                  spo: 'spo',
                  suspectedDsList: 'suspectedDsList',
                  suspectedInfSourceList: 'suspectedInfSourceList',
                  temp: 'temp',
                  wcc: 'wcc',
                  wt: 'wt'

                );  
              }else{
                 await csvObject.addRowToCsv(
             
                );
                }
          //upload to server
          var uri = Uri.parse("http://speropy.pythonanywhere.com/csv");
              var request = new http.MultipartRequest("POST", uri);
              var filePath = await csvObject.getFilePath();
 
              request.files.add(await http.MultipartFile.fromPath('file', filePath));
            
              var response = await request.send();
              if (response.statusCode == 200) print('Uploaded!');
          //close app
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          Navigator.pushNamed(context, '/home');
        },
      ),
      
    );
  }
  

  
}