DROP FUNCTION ASU.GET_REANIM_OTD
/

--
-- GET_REANIM_OTD  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_REANIM_OTD
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 29703;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_REANIM_OTD
/

--
-- GET_REANIM_OTD  (Synonym) 
--
--  Dependencies: 
--   GET_REANIM_OTD (Function)
--
CREATE PUBLIC SYNONYM GET_REANIM_OTD FOR ASU.GET_REANIM_OTD
/


GRANT EXECUTE ON ASU.GET_REANIM_OTD TO PUBLIC
/

