CLASS zcl_class_cat DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_class_animal .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_class_cat IMPLEMENTATION.


  METHOD zif_class_animal~eat_food.
  result = 'Cat is eating food!!'.
  ENDMETHOD.


  METHOD zif_class_animal~make_sound.
  result = 'Meow!!'.
  ENDMETHOD.
ENDCLASS.
