CLASS zcl_01_assign_bank_transaction DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    METHODS : deposit IMPORTING amount TYPE i ,
      withdrawal IMPORTING amount  TYPE i ,
      get_balance RETURNING VALUE(result) TYPE i .

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA balance TYPE i VALUE 0.
ENDCLASS.



CLASS zcl_01_assign_bank_transaction IMPLEMENTATION.

  METHOD get_balance.
    result = balance.
  ENDMETHOD.

  METHOD deposit.
    me->balance = balance + amount.
  ENDMETHOD.

  METHOD withdrawal.
    me->balance = balance - amount .
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    deposit( amount = 100 ).
    withdrawal( amount = 10 ).
    DATA(balanceMoney) = get_balance( ).

    out->write( balanceMoney ).
ENDMETHOD.
ENDCLASS.
