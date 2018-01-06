*&---------------------------------------------------------------------*
*& Report zcds_optinal_input
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_optinal_input.

" Use case 1
SELECT *
    FROM z_cds_default_input
    INTO TABLE @DATA(lt_data1).

" Use case 2
SELECT *
    FROM z_cds_default_input( " p1 = @sy-mandt - NOT ALLOWED
                                p2 = @sy-uname )
    INTO TABLE @DATA(lt_data2).

" Use case 3
SELECT *
    FROM z_cds_default_input( p2 = @sy-uname ,
                              p3 = @sy-datum )
    INTO TABLE @DATA(lt_data3).
