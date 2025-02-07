CLASS ztest_code DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  interfaces if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztest_code IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
out->write( | Hello World! ({ cl_abap_context_info=>get_system_date( ) })| ).
ENDMETHOD.
ENDCLASS.
