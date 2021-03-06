DROP TRIGGER ASU.TNAZOPL_BEFORE_INSERT
/

--
-- TNAZOPL_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TNAZOPL (Sequence)
--   TNAZOPL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TNAZOPL_BEFORE_INSERT" 
 BEFORE
 INSERT
 ON ASU.TNAZOPL  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
Begin
  SELECT SEQ_TNAZOPL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


