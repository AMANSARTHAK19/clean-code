CLASS zcl_01_obsolete_optimized DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_obsolete_optimized IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: flights TYPE SORTED TABLE OF zdt_dmo_flight WITH NON-UNIQUE KEY carrier_id,
          result  TYPE TABLE OF zdt_dmo_flight,
          carrid  TYPE zdt_dmo_flight-carrier_id VALUE 'LH'.

    SELECT * FROM zdt_dmo_flight INTO TABLE @flights.   "use syntax

    result = FILTER #( flights WHERE carrier_id = carrid ).

    out->write( result ).

ENDMETHOD.
ENDCLASS.
