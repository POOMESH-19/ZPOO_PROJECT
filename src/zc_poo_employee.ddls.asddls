@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZPOO_EMPLOYEE'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_POO_EMPLOYEE
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_POO_EMPLOYEE
  association [1..1] to ZR_POO_EMPLOYEE as _BaseEntity on $projection.EMPID = _BaseEntity.EMPID and $projection.LEAVEID = _BaseEntity.LEAVEID
{
  key EmpID,
  key LeaveID,
  EmpName,
  LeaveType,
  FromDate,
  ToDate,
  Reason,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalChangedAt,
  _BaseEntity
}
