CLASS zcl_02_employee_bonus DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS validate_eligibility
      IMPORTING
                employee_id   TYPE string
      RETURNING VALUE(result) TYPE abap_bool.

    METHODS calculate_bonus_rate ABSTRACT
      IMPORTING
        performance_score TYPE i
      RETURNING
        VALUE(result)     TYPE f.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_02_employee_bonus IMPLEMENTATION.
  METHOD validate_eligibility.
    result = COND #( WHEN employee_id IS NOT INITIAL THEN abap_true ELSE abap_false ).
  ENDMETHOD.
ENDCLASS.
