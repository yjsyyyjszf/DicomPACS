DROP TRIGGER ASU.TGROUPPEPL_BEFORE_INSERT
/

--
-- TGROUPPEPL_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TGROUPPEPL (Sequence)
--   TGROUPPEPL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TGROUPPEPL_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TGROUPPEPL   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TGROUPPEPL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

