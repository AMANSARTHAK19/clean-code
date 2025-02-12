CLASS zcl_method_02_discount_calc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: Amount TYPE p LENGTH 10 DECIMALS 2.
    METHODS:
      calculate_discount IMPORTING purchase        TYPE REF TO zcl_method_02_purchase
                         RETURNING VALUE(discount) TYPE Amount.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CONSTANTS:
      discount_rate TYPE f VALUE '0.1'.
ENDCLASS.



CLASS zcl_method_02_discount_calc IMPLEMENTATION.
  METHOD calculate_discount.
    data(discount_rate) = cond #(  when purchase->get_gender( ) = 'Female' then '0.2'
                                else discount_rate ).
    discount = purchase->get_quantity( ) * purchase->get_product( )->get_unit_price( ) * discount_rate.
  ENDMETHOD.
ENDCLASS.
