@EndUserText.label : 'STUDENT MASTER TABLE'
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zstudent {

  key client  : abap.clnt not null;
  key stud_id : abap.numc(5) not null;

  name : abap.char(40);
  dept : abap.char(20);
  age  : abap.int4;

}
