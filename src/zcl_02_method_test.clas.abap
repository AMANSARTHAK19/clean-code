CLASS zcl_02_method_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_02_method_test IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    data(TooMany) = new zcl_method_02_too_many( ).
    data(Discount) = TooMany->calculate_discount( product_id = '01'
                                                  customer_id = 'CUST1'
                                                  purchase_date = '20250101'
                                                  quantity = 2 ).


    data(Product) = new zcl_method_02_product( '01' ).
    data(Purchase) = new zcl_method_02_purchase( customer_id = 'CUST1'
                                                  purchase_date = '20250101'
                                                  quantity = 2
                                                  product = Product
                                                  gender = 'Female' ).
    Discount = new zcl_method_02_discount_calc( )->calculate_discount( Purchase ).
    out->write( |Discount : { Discount }| ).
  ENDMETHOD.
ENDCLASS.
