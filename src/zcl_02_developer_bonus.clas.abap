CLASS zcl_02_developer_bonus DEFINITION INHERITING FROM zcl_02_employee_bonus
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS: calculate_bonus_rate REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
   DATA  : discount_percentage TYPE p LENGTH 2 DECIMALS 2  VALUE '0.30'.
ENDCLASS.

CLASS zcl_02_developer_bonus IMPLEMENTATION.
  METHOD calculate_bonus_rate.
  result = performance_score * discount_percentage.
  ENDMETHOD.
ENDCLASS.
