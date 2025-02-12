CLASS zcl_02_customer_service DEFINITION INHERITING FROM zcl_02_odata_service
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



CLASS zcl_02_customer_service IMPLEMENTATION.
  METHOD close_connection.
    DATA(close_connection_status) = 'Closing connection to Product Service....'.
  ENDMETHOD.

  METHOD fetch_data.
    APPEND 'Customer ID: 123, Name: John Doe, Email: john.doe@example.com' TO fetchedData.
    APPEND 'Customer ID: 456, Name: Jane Smith, Email: jane.smith@example.com' TO fetchedData.
  ENDMETHOD.

  METHOD open_connection.
    DATA(open_connection_status) = 'Opening connection to Customer Service...'.
  ENDMETHOD.

ENDCLASS.
