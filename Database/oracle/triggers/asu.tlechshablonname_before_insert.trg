DROP TRIGGER ASU.TLECHSHABLONNAME_BEFORE_INSERT
/

--
-- TLECHSHABLONNAME_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TLECHSHABLONNAME (Sequence)
--   TLECHSHABLONNAME (Table)
--
CREATE OR REPLACE TRIGGER ASU."TLECHSHABLONNAME_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TLECHSHABLONNAME REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
begin
 SELECT SEQ_TLECHSHABLONNAME.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;


