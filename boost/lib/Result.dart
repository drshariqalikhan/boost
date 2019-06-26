import 'package:boost/components/BoostList.dart';
import 'package:boost/components/CsvObject.dart';
import 'package:boost/components/Header.dart';
import 'package:boost/logic/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;



class Results extends StatelessWidget {




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
              bool exist = await csvObject.doesCsvFileExist();
              if(exist==false){ 
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
                  hasCalfTenderness: datamodel.pat.gethasCalfTenderness(),
                  hasChestPain: datamodel.pat.gethasChestPain(),
                  hasChfOrIhdRisk: datamodel.pat.hasChfOrIhdRisk(),
                  hasChronicRespiratoryAcidosis: datamodel.pat.hasChronicRespiratoryAcidosis(),
                  hasCopd: datamodel.pat.gethasCopd(),
                  hasCough: datamodel.pat.gethasCough(),
                  hasDyspnoea: datamodel.pat.gethasDyspnoea(),
                  hasFaceDroopOrLimbWeakness: datamodel.pat.gethasFaceDroopOrLimbWeakness(),
                  hasGallStoneOrPancSx: datamodel.pat.gethasGallStoneOrPancSx(),
                  hasHadLargePleuralDrainage: datamodel.pat.gethasHadLargePleuralDrainage(),
                  hasHemoptysis: datamodel.pat.gethasHemoptysis(),
                  hasHighLikelyhoodofStroke: datamodel.pat.hasHighLikelyhoodofStroke(),
                  hasHighPeRisk: datamodel.pat.hasHighPeRisk(),
                  hasHighRiskOfRexpPulmEdema: datamodel.pat.hasHighRiskOfRexpPulmEdema(),
                  hasHistOfAcuteSeizure: datamodel.pat.gethasHistOfAcuteSeizure(),
                  hasHistOfCHFIHD: datamodel.pat.gethasHistOfCHFIHD(),
                  hasHistOfChronParacet: datamodel.pat.gethasHistOfChronParacet(),
                  hasHistOfDVTPE: datamodel.pat.gethasHistOfDVTPE(),
                  hasHistOfLaxUrndivOrDiarr: datamodel.pat.gethasHistOfLaxUrndivOrDiarr(),
                  hasHistOfPericardEff: datamodel.pat.gethasHistOfPericardEff(),
                  hasHistOfRecentSxOrFrac: datamodel.pat.gethasHistOfRecentSxOrFrac(),
                  hasHistOfRespDepDrugsIntake: datamodel.pat.gethasHistOfRespDepDrugsIntake(),
                  hasHistOfSbBypass: datamodel.pat.gethasHistOfSbBypass(),
                  hasHistOfToxinAlcholIntake: datamodel.pat.gethasHistOfToxinAlcholIntake(),
                  hasHistOfXsNacl: datamodel.pat.gethasHistOfXsNacl(),
                  hasImpSpoWithO2: datamodel.pat.gethasImpSpoWithO2(),
                  hasLowGlobalPerf: datamodel.pat.hasLowGlobalPerf(),
                  hasLowJvpOrNegBal: datamodel.pat.gethasLowJvpOrNegBal(),
                  hasLowTidalVol: datamodel.pat.gethasLowTidalVol(),
                  hasLRTI: datamodel.pat.hasLRTI(),
                  hasLungCollapseFor3d: datamodel.pat.gethasLungCollapseFor3d(),
                  hasMalig: datamodel.pat.gethasMalig(),
                  hasNewAphasia: datamodel.pat.gethasNewAphasia(),
                  hasPancreatitis: datamodel.pat.hasPancreatitis(),
                  hasPeriCardTamponade: datamodel.pat.hasPeriCardTamponade(),
                  hasPitPathology: datamodel.pat.gethasPitPathology(),
                  hasPneumothorax: datamodel.pat.hasPneumothorax(),
                  hasPressorSupport: datamodel.pat.gethasPressorSupport(),
                  hasPrimarySignsOfAllergicRxn: datamodel.pat.gethasPrimarySignsOfAllergicRxn(),
                  hasPulsusParadoxus: datamodel.pat.gethasPulsusParadoxus(),
                  hasRecentRadioTx: datamodel.pat.gethasRecentRadioTx(),
                  hasRhonchi: datamodel.pat.gethasRhonchi(),
                  hasRiskOfIe: datamodel.pat.gethasRiskOfIe(),
                  hasSaturationGap: datamodel.pat.hasSaturationGap(),
                  hasSharpOrBluntChestTrauma: datamodel.pat.gethasSharpOrBluntChestTrauma(),
                  hasSignsOfCLABSI: datamodel.pat.gethasSignsOfCLABSI(),
                  hasSignsOfCNSInfec: datamodel.pat.gethasSignsOfCNSInfec(),
                  hasSignsOfPeritonitis: datamodel.pat.gethasSignsOfPeritonitis(),
                  hasSIRS: datamodel.pat.hasSIRS(),
                  hasSkinPigmentPatch: datamodel.pat.gethasSkinPigmentPatch(),
                  hasSpinalInjury: datamodel.pat.gethasSpinalInjury(),
                  hasSTI: datamodel.pat.gethasSTI(),
                  hasTB: datamodel.pat.gethasTB(),
                  hasULCrepts: datamodel.pat.gethasULCrepts(),
                  hasUlLLPain: datamodel.pat.gethasUlLLPain(),
                  hasUTIonDipstick: datamodel.pat.gethasUTIonDipstick(),
                  hasXsVomitNgLoss: datamodel.pat.gethasXsVomitNgLoss(),
                  hr: datamodel.pat.getHr(),
                  ht: datamodel.pat.getHt(),
                  isBlack: datamodel.pat.getisBlack(),
                  isDiabetic: datamodel.pat.getIsDiabetic(),
                  isIntubated: datamodel.pat.getisIntubated(),
                  isJVPHi: datamodel.pat.getisJVPHi(),
                  isMale: datamodel.pat.getisMale(),
                  isTakingCaSuppl: datamodel.pat.getisTakingCaSuppl(),
                  isTakingDiuretics: datamodel.pat.getisTakingDiuretics(),
                  isTakingLicorice: datamodel.pat.getisTakingLicorice(),
                  isTakingSteroids: datamodel.pat.getisTakingSteroids(),
                  isTakingTpn: datamodel.pat.getisTakingTpn(),
                  k: datamodel.pat.getK(),
                  na: datamodel.pat.getNa(),
                  pao: datamodel.pat.getPao(),
                  pFRatio: datamodel.pat.pFRatio(),
                  ph: datamodel.pat.getPh(),
                  rr: datamodel.pat.getRr(),
                  sao: datamodel.pat.getSao(),
                  sbp: datamodel.pat.getSbp(),
                  spo: datamodel.pat.getSpo(),
                  suspectedDsList: datamodel.pat.getSuspectDsList(),
                  suspectedInfSourceList: datamodel.pat.getsuspectedInfSourceList(),
                  temp: datamodel.pat.getTemp(),
                  wcc: datamodel.pat.getWcc(),
                  wt: datamodel.pat.getWt()

                );  
              }else{
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
                  hasAdrenalInsuff:  datamodel.pat.hasAdrenalInsuff(),//..........................................
                  hasAlcoholHistory:  datamodel.pat.getHasAlcoholHistory(),
                  hasAlteredMentation:  datamodel.pat.gethasAlteredMentation(),
                  hasAnaphylaxis:  datamodel.pat.hasAnaphylaxis(),//.............................................
                  hasAsthma:  datamodel.pat.gethasAsthma(),
                  hasBLBreathSounds:  datamodel.pat.gethasBLBreathSounds(),
                  hasBLCrepts:  datamodel.pat.gethasBLCrepts(),
                  hasCalfTenderness: datamodel.pat.gethasCalfTenderness(),
                  hasChestPain: datamodel.pat.gethasChestPain(),
                  hasChfOrIhdRisk: datamodel.pat.hasChfOrIhdRisk(),//............................................
                  hasChronicRespiratoryAcidosis: datamodel.pat.hasChronicRespiratoryAcidosis(),//...............
                  hasCopd: datamodel.pat.gethasCopd(),
                  hasCough: datamodel.pat.gethasCough(),
                  hasDyspnoea: datamodel.pat.gethasDyspnoea(),
                  hasFaceDroopOrLimbWeakness: datamodel.pat.gethasFaceDroopOrLimbWeakness(),
                  hasGallStoneOrPancSx: datamodel.pat.gethasGallStoneOrPancSx(),
                  hasHadLargePleuralDrainage: datamodel.pat.gethasHadLargePleuralDrainage(),
                  hasHemoptysis: datamodel.pat.gethasHemoptysis(),
                  hasHighLikelyhoodofStroke: datamodel.pat.hasHighLikelyhoodofStroke(),//.......................
                  hasHighPeRisk: datamodel.pat.hasHighPeRisk(),//...............................................
                  hasHighRiskOfRexpPulmEdema: datamodel.pat.hasHighRiskOfRexpPulmEdema(),//.....................
                  hasHistOfAcuteSeizure: datamodel.pat.gethasHistOfAcuteSeizure(),
                  hasHistOfCHFIHD: datamodel.pat.gethasHistOfCHFIHD(),
                  hasHistOfChronParacet: datamodel.pat.gethasHistOfChronParacet(),
                  hasHistOfDVTPE: datamodel.pat.gethasHistOfDVTPE(),
                  hasHistOfLaxUrndivOrDiarr: datamodel.pat.gethasHistOfLaxUrndivOrDiarr(),
                  hasHistOfPericardEff: datamodel.pat.gethasHistOfPericardEff(),
                  hasHistOfRecentSxOrFrac: datamodel.pat.gethasHistOfRecentSxOrFrac(),
                  hasHistOfRespDepDrugsIntake: datamodel.pat.gethasHistOfRespDepDrugsIntake(),
                  hasHistOfSbBypass: datamodel.pat.gethasHistOfSbBypass(),
                  hasHistOfToxinAlcholIntake: datamodel.pat.gethasHistOfToxinAlcholIntake(),
                  hasHistOfXsNacl: datamodel.pat.gethasHistOfXsNacl(),
                  hasImpSpoWithO2: datamodel.pat.gethasImpSpoWithO2(),
                  hasLowGlobalPerf: datamodel.pat.hasLowGlobalPerf(),//.........................................
                  hasLowJvpOrNegBal: datamodel.pat.gethasLowJvpOrNegBal(),
                  hasLowTidalVol: datamodel.pat.gethasLowTidalVol(),
                  hasLRTI: datamodel.pat.hasLRTI(),//...........................................................
                  hasLungCollapseFor3d: datamodel.pat.gethasLungCollapseFor3d(),
                  hasMalig: datamodel.pat.gethasMalig(),
                  hasNewAphasia: datamodel.pat.gethasNewAphasia(),
                  hasPancreatitis: datamodel.pat.hasPancreatitis(),//...........................................
                  hasPeriCardTamponade: datamodel.pat.hasPeriCardTamponade(),//................................
                  hasPitPathology: datamodel.pat.gethasPitPathology(),
                  hasPneumothorax: datamodel.pat.hasPneumothorax(),//...........................................
                  hasPressorSupport: datamodel.pat.gethasPressorSupport(),
                  hasPrimarySignsOfAllergicRxn: datamodel.pat.gethasPrimarySignsOfAllergicRxn(),
                  hasPulsusParadoxus: datamodel.pat.gethasPulsusParadoxus(),
                  hasRecentRadioTx: datamodel.pat.gethasRecentRadioTx(),
                  hasRhonchi: datamodel.pat.gethasRhonchi(),
                  hasRiskOfIe: datamodel.pat.gethasRiskOfIe(),
                  hasSaturationGap: datamodel.pat.hasSaturationGap(),//...........................................
                  hasSharpOrBluntChestTrauma: datamodel.pat.gethasSharpOrBluntChestTrauma(),
                  hasSignsOfCLABSI: datamodel.pat.gethasSignsOfCLABSI(),
                  hasSignsOfCNSInfec: datamodel.pat.gethasSignsOfCNSInfec(),
                  hasSignsOfPeritonitis: datamodel.pat.gethasSignsOfPeritonitis(),
                  hasSIRS: datamodel.pat.hasSIRS(),//..........................................................
                  hasSkinPigmentPatch: datamodel.pat.gethasSkinPigmentPatch(),
                  hasSpinalInjury: datamodel.pat.gethasSpinalInjury(),
                  hasSTI: datamodel.pat.gethasSTI(),
                  hasTB: datamodel.pat.gethasTB(),
                  hasULCrepts: datamodel.pat.gethasULCrepts(),
                  hasUlLLPain: datamodel.pat.gethasUlLLPain(),
                  hasUTIonDipstick: datamodel.pat.gethasUTIonDipstick(),
                  hasXsVomitNgLoss: datamodel.pat.gethasXsVomitNgLoss(),
                  hr: datamodel.pat.getHr(),
                  ht: datamodel.pat.getHt(),
                  isBlack: datamodel.pat.getisBlack(),
                  isDiabetic: datamodel.pat.getIsDiabetic(),
                  isIntubated: datamodel.pat.getisIntubated(),
                  isJVPHi: datamodel.pat.getisJVPHi(),
                  isMale: datamodel.pat.getisMale(),
                  isTakingCaSuppl: datamodel.pat.getisTakingCaSuppl(),
                  isTakingDiuretics: datamodel.pat.getisTakingDiuretics(),
                  isTakingLicorice: datamodel.pat.getisTakingLicorice(),
                  isTakingSteroids: datamodel.pat.getisTakingSteroids(),
                  isTakingTpn: datamodel.pat.getisTakingTpn(),
                  k: datamodel.pat.getK(),
                  na: datamodel.pat.getNa(),
                  pao: datamodel.pat.getPao(),
                  pFRatio: datamodel.pat.pFRatio(),//....................................................
                  ph: datamodel.pat.getPh(),
                  rr: datamodel.pat.getRr(),
                  sao: datamodel.pat.getSao(),
                  sbp: datamodel.pat.getSbp(),
                  spo: datamodel.pat.getSpo(),
                  suspectedDsList: datamodel.pat.getSuspectDsList(),
                  suspectedInfSourceList: datamodel.pat.getsuspectedInfSourceList(),
                  temp: datamodel.pat.getTemp(),
                  wcc: datamodel.pat.getWcc(),
                  wt: datamodel.pat.getWt()
             
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