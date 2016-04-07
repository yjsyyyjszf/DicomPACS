DROP TRIGGER ASU.TUCHSTOK_BEFORE_DELETE
/

--
-- TUCHSTOK_BEFORE_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TUCHASTOK (Table)
--   TUCHVRACH (Table)
--
CREATE OR REPLACE TRIGGER ASU."TUCHSTOK_BEFORE_DELETE" 
  BEFORE DELETE
  ON ASU.TUCHASTOK   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  DELETE FROM TUCHVRACH WHERE FK_UCHASTOKID=:OLD.FK_ID;
End;
/
SHOW ERRORS;

