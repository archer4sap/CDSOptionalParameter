@AbapCatalog.sqlViewName: 'ZTEST_CDS123'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Example optional Input in CDS...'
// ... Using Environment System field
// Use of such optional parameter in CDS is limited
define view z_cds_default_input
  with parameters
    @Environment.systemField: #CLIENT
    p1 : mandt,
    p2 : uname @<Environment.systemField: #USER,
    p3 : erdat @<Environment.systemField: #SYSTEM_DATE
  as select from vbak as a
{
  :p1      as Client,
  :p2      as Ordered_By, // a.bname
  :p3      as OrderDate,  // a.erdat
  a.vbeln  as OrderNumber
}
where
      a.mandt = :p1 // sy-mandt
  and a.bname = :p2 // sy-uname
  and a.erdat = :p3 // sy-datum
