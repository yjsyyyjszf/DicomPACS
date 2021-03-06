DROP TRIGGER ASU.TVAC_SICNESS_BEFORE_INSERT
/

--
-- TVAC_SICNESS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_VAC_SICNESS (Sequence)
--   TVAC_SICNESS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVAC_SICNESS_BEFORE_INSERT" BEFORE INSERT
ON ASU.TVAC_SICNESS FOR EACH ROW
begin
    --  Column "FK_ID" uses sequence SEQ_VAC_SICNESS
      IF :NEW.FK_ID IS NULL
      THEN
         SELECT SEQ_VAC_SICNESS.NEXTVAL INTO :NEW.FK_ID from dual;
      END IF;
end;
/
SHOW ERRORS;


