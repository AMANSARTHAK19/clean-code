CLASS zcl_01_performance_optimized DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_performance_optimized IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
  DATA(lv_sum) = REDUCE i( INIT result = 0 FOR i = 1 UNTIL i > 1000 NEXT result = result + i ).
    out->write( |Sum: { lv_sum }| ).
  ENDMETHOD.
ENDCLASS.
