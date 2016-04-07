DROP TRIGGER ASU.TSTOL_BEFORE_INSERT
/

--
-- TSTOL_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSTOL (Sequence)
--   TSTOL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTOL_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TSTOL REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TSTOL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

