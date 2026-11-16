@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for Bsnspls prftcnr'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZBSNSPLS_PV 
 provider contract transactional_query
as projection on ZBSNSPLS_RV
{
  key Recuuid,
  Plant,
  Plantname,
  Profitcenter,
  Poscode,
  Recstorageloc,
  Issuingplant,
  Storageloc,
  Costcenter,
  Companycode,
  Businessplace  
}
