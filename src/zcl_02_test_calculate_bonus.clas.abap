CLASS zcl_02_test_calculate_bonus DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_02_test_calculate_bonus IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA(manager_bonus) = NEW zcl_02_manager_bonus( ).
    DATA(developer_bonus) = NEW zcl_02_developer_bonus( ).

    IF manager_bonus->validate_eligibility( employee_id = 'MAN123' ).
      DATA(calculated_manager_bonus) = manager_bonus->calculate_bonus_rate( performance_score = 85 ).
      out->write( |Manager Bonus: { calculated_manager_bonus }| ).
    ENDIF.

    IF developer_bonus->validate_eligibility( employee_id = 'DEV123' ).
      DATA(calculated_developer_bonus) = developer_bonus->calculate_bonus_rate( performance_score = 90  ).
      out->write( |Developer Bonus: { calculated_developer_bonus }| ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
