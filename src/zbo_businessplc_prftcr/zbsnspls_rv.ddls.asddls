@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity Businesspls n Prfitcntr data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZBSNSPLS_RV
 as select from zbsplc_pcntr_tbl

{
  key recuuid as Recuuid,
  plant as Plant,
  plantname as Plantname,
  profitcenter as Profitcenter,
  poscode as Poscode,
  recstorageloc as Recstorageloc,
  issuingplant as Issuingplant,
  storageloc as Storageloc,
  costcenter as Costcenter,
  companycode as Companycode,
  businessplace as Businessplace  
    
}
