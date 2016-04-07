DROP FUNCTION ASU.GET_LECHENIE_ID
/

--
-- GET_LECHENIE_ID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_LECHENIE_ID
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 1360;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_LECHENIE_ID
/

--
-- GET_LECHENIE_ID  (Synonym) 
--
--  Dependencies: 
--   GET_LECHENIE_ID (Function)
--
CREATE PUBLIC SYNONYM GET_LECHENIE_ID FOR ASU.GET_LECHENIE_ID
/


GRANT EXECUTE ON ASU.GET_LECHENIE_ID TO PUBLIC
/
