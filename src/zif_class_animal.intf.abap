INTERFACE zif_class_animal
  PUBLIC .
  METHODS : make_sound
    RETURNING VALUE(result) TYPE string,
    eat_food RETURNING VALUE(result) TYPE string.
ENDINTERFACE.
