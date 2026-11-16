CLASS lhc_ZBSNSPLS_RV DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR zbsnspls_rv RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR zbsnspls_rv RESULT result.

    METHODS cfd FOR DETERMINE ON MODIFY
       keys FOR zbsnspls_rv~cfd.

ENDCLASS.

CLASS lhc_ZBSNSPLS_RV IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD cfd.

  READ ENTITIES OF zbsnspls_rv IN LOCAL MODE
    ENTITY zbsnspls_rv
    ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(lt_data).

    DATA(lw_data) = lt_data[ 1 ].
    IF lw_data-Storageloc IS INITIAL.
      LOOP AT keys INTO DATA(key).
        MODIFY ENTITIES OF zbsnspls_rv IN LOCAL MODE
        ENTITY zbsnspls_rv
        UPDATE SET FIELDS WITH VALUE #( ( Storageloc = 'SREE' ) )
        FAILED DATA(lt_fail)
        REPORTED DATA(lt_repo).
*        APPEND LINES OF lt_repo-header TO reported-header.

      ENDLOOP.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
