CLASS zcl_method_02_purchase DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor IMPORTING customer_id   TYPE string
                            purchase_date TYPE d
                            quantity      TYPE i
                            product       TYPE REF TO zcl_method_02_product
                            gender        type string.
    METHODS  get_quantity RETURNING VALUE(quantity) TYPE i.
   METHODS   get_product RETURNING VALUE(product) TYPE REF TO zcl_method_02_product.
  METHODS    get_gender      returning value(result) type string.

  PRIVATE SECTION.
    DATA:
      customer_id   TYPE string,
      purchase_date TYPE d,
      quantity      TYPE i,
      product       TYPE REF TO zcl_method_02_product,
      gender TYPE string.

ENDCLASS.



CLASS zcl_method_02_purchase IMPLEMENTATION.
  METHOD constructor.
    me->customer_id = customer_id.
    me->purchase_date = purchase_date.
    me->quantity = quantity.
    me->product = product.
    me->gender = gender.
  ENDMETHOD.

  METHOD get_quantity.
    quantity = me->quantity.
  ENDMETHOD.

  METHOD get_product.
    product = me->product.
  ENDMETHOD.


  METHOD get_gender.
  result = me->gender.
  ENDMETHOD.

ENDCLASS.
