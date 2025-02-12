CLASS zcl_02_invoice_service DEFINITION INHERITING FROM zcl_02_odata_service
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



CLASS zcl_02_invoice_service IMPLEMENTATION.
  METHOD close_connection.
    DATA(close_connection_status) = 'Closing connection to Product Service....'.
  ENDMETHOD.

  METHOD fetch_data.
    APPEND 'Invoice ID: 333, Customer ID: 123, Amount Due: $500' TO fetcheddata.
    APPEND 'Invoice ID: 444, Customer ID: 456, Amount Due: $700' TO fetcheddata.
  ENDMETHOD.

  METHOD open_connection.
    DATA(open_connection_status) = 'Opening connection to Customer Service...'.
  ENDMETHOD.

ENDCLASS.
