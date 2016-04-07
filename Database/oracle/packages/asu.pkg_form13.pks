DROP PACKAGE ASU.PKG_FORM13
/

--
-- PKG_FORM13  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_FORM13" IS
 FUNCTION IS_DIE(pPacid NUMBER) RETURN NUMBER;
 FUNCTION get_abort_begin(pPacid NUMBER) RETURN DATE;
 FUNCTION GET_ROW1(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW2(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW3(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW4(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW5(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW6(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW7(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW8(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW9(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW10(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW11(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW12(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW13(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
 FUNCTION GET_ROW14(BegY IN NUMBER, EndY IN NUMBER) RETURN NUMBER;
END PKG_FORM13;
/

SHOW ERRORS;

