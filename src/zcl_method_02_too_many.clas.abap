CLASS zcl_method_02_too_many DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: discount TYPE p LENGTH 10 DECIMALS 2.
    METHODS calculate_discount
      IMPORTING
                product_id    TYPE string
                customer_id   TYPE string
                purchase_date TYPE d
                quantity      TYPE i
      RETURNING VALUE(result) TYPE discount.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_method_02_too_many IMPLEMENTATION.
  METHOD calculate_discount.
    CASE product_id.
      WHEN '01'.
        DATA(rate) = 20.
        DATA(discount_percentage) = 2.
      WHEN '02'.
        rate = 10.
        discount_percentage = 1.
    ENDCASE.

    result = ( quantity * rate ) * discount_percentage / 100.
  ENDMETHOD.
ENDCLASS.
