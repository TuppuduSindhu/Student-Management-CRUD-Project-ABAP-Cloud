CLASS zcl_student_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS zcl_student_class IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*-----------------------------
* CREATE
*-----------------------------
*    INSERT zstudent FROM VALUE #(
*      client  = sy-mandt
*      stud_id = '00001'
*      name    = 'Sindhu'
*      dept    = 'CSE'
*      age     = 22
*    ).
*
*    out->write( 'Student inserted' ).

*-----------------------------
* READ
*-----------------------------
    DATA lt_students TYPE STANDARD TABLE OF zstudent.

    SELECT *
      FROM zstudent
      INTO TABLE @lt_students
      WHERE client = @sy-mandt.

    out->write( lt_students ).

*-----------------------------
* UPDATE
*-----------------------------
*    UPDATE zstudent
*      SET age = 23
*      WHERE stud_id = '00001'
*        AND client  = sy-mandt.
*
*    out->write( 'Student updated' ).

*-----------------------------
* DELETE
*-----------------------------
*    DELETE FROM zstudent
*      WHERE stud_id = '00001'
*        AND client  = sy-mandt.
*
*    out->write( 'Student deleted' ).

  ENDMETHOD.

ENDCLASS.
