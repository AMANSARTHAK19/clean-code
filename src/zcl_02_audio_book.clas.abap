CLASS zcl_02_audio_book DEFINITION
  PUBLIC
  INHERITING FROM zcl_method_03_library
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  METHODS calculate_fine REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
  CONSTANTS fine TYPE p LENGTH 10 DECIMALS 3 VALUE '1.5'.
ENDCLASS.

CLASS zcl_02_audio_book IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
  DATA(calcualtedfine) = calculate_fine( days_overdue = 10  ).
  out->write( calcualtedfine  ).

  ENDMETHOD.

  METHOD calculate_fine.
  result = days_overdue * fine.
  ENDMETHOD.


ENDCLASS.
