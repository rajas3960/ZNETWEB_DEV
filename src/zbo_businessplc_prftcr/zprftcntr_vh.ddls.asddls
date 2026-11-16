@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value help for Profit center'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZPRFTCNTR_VH 
as select from I_ProfitCenterVH
{
 key ProfitCenter,
 key ValidityEndDate,
 key ControllingArea,
    ProfitCenterName,
    
    ValidityStartDate   
}
