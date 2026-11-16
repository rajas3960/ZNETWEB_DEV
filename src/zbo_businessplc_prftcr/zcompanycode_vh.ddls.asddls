@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value help for Company Code'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCOMPANYCODE_VH 
as select from I_CompanyCodeVH
{
   key CompanyCode,
    CompanyCodeName  
}
