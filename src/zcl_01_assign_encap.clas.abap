CLASS zcl_01_assign_encap DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
          TYPES: BEGIN OF ty_employee,
             first_name TYPE string,
             last_name  TYPE string,
           END OF ty_employee.

    DATA: ls_employee TYPE ty_employee.

    METHODS map_employee IMPORTING first_name TYPE string
                                   last_name TYPE string
                         returning value(result) type ty_employee.

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_01_assign_encap IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
      DATA(lv_full_name) = map_employee( first_name = 'Aman' last_name = 'Sarthak' ) .
    out->write( lv_full_name ).
  ENDMETHOD.

  METHOD map_employee.
  result = VALUE #( first_name = first_name last_name = last_name  ).
  ENDMETHOD.

ENDCLASS.
