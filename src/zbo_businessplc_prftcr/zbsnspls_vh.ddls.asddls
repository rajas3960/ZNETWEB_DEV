@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value help for bsnspls'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZBSNSPLS_VH as select from I_SupplierInvoiceAPI01
{
  
   key SupplierInvoice,
   key FiscalYear,
   key BusinessPlace 
}
