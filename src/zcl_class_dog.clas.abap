CLASS zcl_class_dog DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_class_animal .
    METHODS protect RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_class_dog IMPLEMENTATION.


  METHOD zif_class_animal~eat_food.
  result = 'Dog is eating the food!!'.
  ENDMETHOD.

  METHOD zif_class_animal~make_sound.
  result = 'Woof!!'.
  ENDMETHOD.

  METHOD protect.
  result = 'Dog has bitten stranger!'.
  ENDMETHOD.

ENDCLASS.
