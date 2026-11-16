@AbapCatalog.sqlViewName: 'ZPLANTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value help for Plant'
@Metadata.ignorePropagatedAnnotations: true
define view ZPLANT_VH as select from I_Plant
{
   key Plant,
    PlantName 
}
