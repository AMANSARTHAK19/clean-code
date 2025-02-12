CLASS zcl_02_order_service DEFINITION INHERITING FROM zcl_02_odata_service
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      open_connection REDEFINITION,
      fetch_data REDEFINITION,
      close_connection REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_order_service IMPLEMENTATION.
  METHOD close_connection.
    DATA(close_connection_status) = 'Closing connection to Product Service....'.
  ENDMETHOD.

  METHOD fetch_data.
    APPEND 'Order ID: 111, Customer ID: 123, Total Amount: $1500' TO fetcheddata.
    APPEND 'Order ID: 222, Customer ID: 456, Total Amount: $2000' TO fetcheddata.
  ENDMETHOD.

  METHOD open_connection.
    DATA(open_connection_status) = 'Opening connection to Customer Service...'.
  ENDMETHOD.

ENDCLASS.
