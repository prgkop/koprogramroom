CREATE OR REPLACE PROCEDURE TEST7 IS
    I NUMBER := 11;
    VTNK NUMBER;
BEGIN
    WHILE I <= 15
    LOOP
        IF I = 11 THEN
            VTNK := 10;
        ELSIF I = 12 THEN
            VTNK := 100;
        ELSIF I = 13 THEN
            VTNK := 1000;
        ELSE
            IF I = 14 THEN
                VTNK := 10000;
            ELSE
                VTNK := 1;
            END IF;
        END IF;
        INSERT INTO TBL_TEST VALUES(I, 'TEST' || TO_CHAR(I), I * VTNK);
        I := I + 1;
    END LOOP;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/
show errors
