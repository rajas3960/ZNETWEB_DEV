@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value help for Cost Center'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCOSTCENTER_VH as select from I_CostCenterText
{
    key CostCenter,
    key ControllingArea,
    key Language,
    key ValidityEndDate,
    CostCenterDescription,
    ValidityStartDate
    
}
