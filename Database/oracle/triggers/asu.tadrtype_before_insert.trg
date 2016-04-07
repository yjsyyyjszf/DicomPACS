DROP TRIGGER ASU.TADRTYPE_BEFORE_INSERT
/

--
-- TADRTYPE_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TADRTYPE (Table)
--   SEQ_TADRTYPE (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."TADRTYPE_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TADRTYPE REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TAdrType.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

