CLASS zcl_class_animals DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA : animal TYPE REF TO zif_class_animal.
ENDCLASS.



CLASS zcl_class_animals IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    animal = NEW zcl_class_dog(  ).
    out->write( animal->eat_food(  ) ).
    out->write( animal->make_sound(  ) ).

    animal = NEW zcl_class_cat( ).
    out->write( animal->eat_food(  ) ).
    out->write( animal->make_sound(  ) ).

    DATA(altert) = NEW zcl_class_dog( ).
    animal = altert.
    IF animal IS INSTANCE OF zcl_class_dog.
      out->write( altert->protect( ) ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
