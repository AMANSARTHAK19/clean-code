CLASS zcl_02_odata_service DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS:
      open_connection ABSTRACT,
      fetch_data ABSTRACT RETURNING VALUE(fetchedData) TYPE string_table,
      close_connection ABSTRACT.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_02_odata_service IMPLEMENTATION.
ENDCLASS.
