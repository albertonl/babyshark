SET SERVEROUTPUT ON;

DECLARE
    TYPE array_t IS VARRAY(9) OF VARCHAR2(20);
    family array_t := array_t (
        'Baby shark', 'Mommy shark', 'Daddy shark', 'Grandpa shark', 'Grandma shark',
        'Let''s go hunt', 'Run away', 'Safe at last', 'It''s the end'
    );
BEGIN
    FOR i IN 1..9 LOOP
        FOR j IN REVERSE 0..3 LOOP
            IF j = 0 THEN
                dbms_output.put_line(family(i) || '!');
            ELSE
                dbms_output.put_line(family(i) || ', doo doo doo doo doo doo');
            END IF;
        END LOOP;
    END LOOP;
END;