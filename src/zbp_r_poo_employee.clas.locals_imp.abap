CLASS lhc_ZrPooEmployee DEFINITION
  INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS SetDefaultStatus
      FOR DETERMINE ON MODIFY
      IMPORTING keys FOR ZrPooEmployee~SetDefaultStatus.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR ZrPooEmployee RESULT result.

    METHODS CheckDates FOR VALIDATE ON SAVE
      IMPORTING keys FOR ZrPooEmployee~CheckDates.

ENDCLASS.
CLASS lhc_ZrPooEmployee IMPLEMENTATION.

  METHOD SetDefaultStatus.

    READ ENTITIES OF zr_poo_employee IN LOCAL MODE
      ENTITY ZrPooEmployee
      ALL FIELDS
      WITH CORRESPONDING #( keys )
      RESULT DATA(lt_employee).

    LOOP AT lt_employee ASSIGNING FIELD-SYMBOL(<fs_employee>).

      IF <fs_employee>-Status IS INITIAL.
        <fs_employee>-Status = 'PENDING'.
      ENDIF.

    ENDLOOP.

    MODIFY ENTITIES OF zr_poo_employee IN LOCAL MODE
      ENTITY ZrPooEmployee
      UPDATE FIELDS ( Status )
      WITH VALUE #(
        FOR ls_employee IN lt_employee
        (
          %tky   = ls_employee-%tky
          Status = ls_employee-Status
        )
      ).

  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD CheckDates.
  ENDMETHOD.

ENDCLASS.
