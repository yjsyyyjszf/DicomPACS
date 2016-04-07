DROP TRIGGER ASU.TQCSHUHARTFIX_BEFORE_INSERT
/

--
-- TQCSHUHARTFIX_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TQCSHUHARTFIX (Sequence)
--   TQCSHUHARTFIX (Table)
--
CREATE OR REPLACE TRIGGER ASU."TQCSHUHARTFIX_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TQCSHUHARTFIX REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TQCSHUHARTFIX.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

