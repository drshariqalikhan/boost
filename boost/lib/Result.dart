import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class Results extends StatelessWidget {
  List<String> createSuspectedDsList(DataModel datamodel){
    var pt = datamodel.pat;
    List<String> outlist=[];
    List abgList = datamodel.pat.getAbgList();
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
        if(pt.hasLowGlobalPerf() && !pt.hasSIRS() && !pt.getisJVPHi() && pt.gethasAcuteGiFluidLoss() ){
          outlist.add('HypovolumicShock');
        }

        //HemorrhagicShock
        if(pt.hasLowGlobalPerf() && !pt.hasSIRS() && !pt.getisJVPHi() && pt.gethasAcuteHemorrghe()){
          outlist.add('HemorrhagicShock');
        }

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
        if(pt.gethasAcuteBrainInjuryOrStroke()){
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
        if(pt.getRr()<10 && !pt.gethasHistOfRespDepDrugsIntake() && pt.gethasAcuteBrainInjuryOrStroke()){
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
          outlist.add('SevereLRTI')
        }
        // Effusion
        // Re-exp Pulm ed
        // U/L Intubation
        // Pulm Edmea
        // ALI
        // ModerateLRTI

      
    }
    if(abgList.contains('NormalAa')){
      // COPD excaberation 
      // Hypovent
      // MethHb
      // CarboxyHb

      
    }else{

    }
    
    return outlist;
  }
  @override
  Widget build(BuildContext context) {
    final datamodel = Provider.of<DataModel>(context);

    //TODO: implement function to create list of suspected Ds and save to Pat.SuspectedDsList
    datamodel.setsuspectedDsList(createSuspectedDsList(datamodel));  
  
  // List a = datamodel.pat.getAbgList();
    return Scaffold(
      appBar: AppBar(title:Text(this.toString())),
      // body: Text('${a.length}'),
      // body:Text(datamodel.pat.getAge().toString()),
      body: Center(child: Text(datamodel.pat.getAbgList().toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          datamodel.initList();
          Navigator.pushNamed(context, '/home');
        },
      ),
      
    );
  }

  
}