DROP TRIGGER ASU.TPAC_GROUP_BEFORE_INSERT
/

--
-- TPAC_GROUP_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TPAC_GROUP (Sequence)
--   TPAC_GROUP (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPAC_GROUP_BEFORE_INSERT" 
BEFORE INSERT 
ON tpac_group
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
begin
 select SEQ_TPAC_GROUP.NEXTVAL into :new.fk_id from dual;
end;
/
SHOW ERRORS;

