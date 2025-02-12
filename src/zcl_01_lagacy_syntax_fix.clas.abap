CLASS zcl_01_lagacy_syntax_fix DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_lagacy_syntax_fix IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lv_name)  = to_upper( 'John' ).
    out->write( lv_name ).
  ENDMETHOD.
ENDCLASS.
