DROP FUNCTION ASU.GET_EPIKRIZ_SECTION
/

--
-- GET_EPIKRIZ_SECTION  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_EPIKRIZ_SECTION
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =-
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 81;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_EPIKRIZ_SECTION
/

--
-- GET_EPIKRIZ_SECTION  (Synonym) 
--
--  Dependencies: 
--   GET_EPIKRIZ_SECTION (Function)
--
CREATE PUBLIC SYNONYM GET_EPIKRIZ_SECTION FOR ASU.GET_EPIKRIZ_SECTION
/


GRANT EXECUTE ON ASU.GET_EPIKRIZ_SECTION TO PUBLIC
/

