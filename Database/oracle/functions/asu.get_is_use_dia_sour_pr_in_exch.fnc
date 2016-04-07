DROP FUNCTION ASU.GET_IS_USE_DIA_SOUR_PR_IN_EXCH
/

--
-- GET_IS_USE_DIA_SOUR_PR_IN_EXCH  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_IS_USE_DIA_SOUR_PR_IN_EXCH
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_IS_USE_DIA_SOUR_PR_IN_EXCH
/

--
-- GET_IS_USE_DIA_SOUR_PR_IN_EXCH  (Synonym) 
--
--  Dependencies: 
--   GET_IS_USE_DIA_SOUR_PR_IN_EXCH (Function)
--
CREATE PUBLIC SYNONYM GET_IS_USE_DIA_SOUR_PR_IN_EXCH FOR ASU.GET_IS_USE_DIA_SOUR_PR_IN_EXCH
/


GRANT EXECUTE ON ASU.GET_IS_USE_DIA_SOUR_PR_IN_EXCH TO PUBLIC
/
