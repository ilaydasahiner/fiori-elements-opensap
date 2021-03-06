@AbapCatalog.sqlViewName: 'ZIFESTAT000258'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Status view entity'
@ObjectModel.resultSet.sizeCategory: #XS
define view ZI_FE_STAT_000258
  as select from zfe_astat_000258 as Status
{
  @UI.textArrangement: #TEXT_ONLY
  @ObjectModel.text.element: [ 'TravelStatusText' ]
  key Status.travel_status_id as TravelStatusId,
  
  @UI.hidden: true
  Status.travel_status_text as TravelStatusText
}
