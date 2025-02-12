CLASS zcl_02_odata_service_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    CLASS-METHODS:
      create_service IMPORTING service_type  TYPE string
                     RETURNING VALUE(result) TYPE REF TO zcl_02_odata_service.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: user_service_type TYPE string.
ENDCLASS.

CLASS zcl_02_odata_service_factory IMPLEMENTATION.
  METHOD create_service.
    CASE service_type.
      WHEN 'CUSTOMER'.
        result = NEW zcl_02_customer_service( ).
      WHEN 'PRODUCT'.
        result = NEW zcl_02_product_service( ).
      WHEN 'ORDER'.
        result = NEW zcl_02_order_service( ).
      WHEN 'INVOICE'.                                       " Adding the new service type
        result = NEW zcl_02_invoice_service( ).
    ENDCASE.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    user_service_type = 'CUSTOMER'.

    DATA(service_object) = zcl_02_odata_service_factory=>create_service( service_type = user_service_type ).

    " Check if the service instance was created successfully
    IF service_object IS BOUND.
      service_object->open_connection( ).
      DATA(data) = service_object->fetch_data( ).
      service_object->close_connection( ).
      out->write( data ).
    ELSE.
      out->write( 'Failed to create service instance.' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
