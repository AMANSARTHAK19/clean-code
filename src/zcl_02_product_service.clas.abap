CLASS zcl_02_product_service DEFINITION INHERITING FROM zcl_02_odata_service
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



CLASS zcl_02_product_service IMPLEMENTATION.
  METHOD close_connection.
  DATA(close_connection_status) = 'Closing connection to Product Service....'.
  ENDMETHOD.

  METHOD fetch_data.
  APPEND 'Product ID: 789, Name: Laptop, Price: $1200' TO fetcheddata.
    APPEND 'Product ID: 101, Name: Smartphone, Price: $800' TO fetcheddata.
  ENDMETHOD.

  METHOD open_connection.
  DATA(open_connection_status) = 'Opening connection to Customer Service...'.
  ENDMETHOD.

ENDCLASS.
