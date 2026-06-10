@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZPOO_EMPLOYEE'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_POO_EMPLOYEE
  as select from ZPOO_EMPLOYEE
{
  key emp_id as EmpID,
  key leave_id as LeaveID,
  emp_name as EmpName,
  leave_type as LeaveType,
  from_date as FromDate,
  to_date as ToDate,
  reason as Reason,
  status as Status,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_changed_by as LocalChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_changed_at as LocalChangedAt
}
