ALTER TABLE ASU.TEXSLUCHSAVEDATA
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TEXSLUCHSAVEDATA CASCADE CONSTRAINTS
/

--
-- TEXSLUCHSAVEDATA  (Table) 
--
--  Dependencies: 
--   TEXSLUCHSAVEGROUPS (Table)
--
CREATE TABLE ASU.TEXSLUCHSAVEDATA
(
  FK_ID         NUMBER(15)                      NOT NULL,
  FK_GROUPID    NUMBER(15)                      NOT NULL,
  FK_EXSLUCHID  NUMBER(15)                      NOT NULL
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          16K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TEXSLUCHSAVEDATA IS '=������� ������ ���������v� ������� �� ������ �v���� Author:Efimov'
/

COMMENT ON COLUMN ASU.TEXSLUCHSAVEDATA.FK_ID IS 'SEQ_ExSluchSave'
/

COMMENT ON COLUMN ASU.TEXSLUCHSAVEDATA.FK_GROUPID IS 'TExSluchSaveGroups.fk_id'
/

COMMENT ON COLUMN ASU.TEXSLUCHSAVEDATA.FK_EXSLUCHID IS 'TExSluch.fk_id'
/


--
-- I_TEXSLUCHSAVEDATA_EXSLUCHID  (Index) 
--
--  Dependencies: 
--   TEXSLUCHSAVEDATA (Table)
--
CREATE INDEX ASU.I_TEXSLUCHSAVEDATA_EXSLUCHID ON ASU.TEXSLUCHSAVEDATA
(FK_EXSLUCHID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- I_TEXSLUCHSAVEDATA_GROUPID  (Index) 
--
--  Dependencies: 
--   TEXSLUCHSAVEDATA (Table)
--
CREATE INDEX ASU.I_TEXSLUCHSAVEDATA_GROUPID ON ASU.TEXSLUCHSAVEDATA
(FK_GROUPID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- K_TEXSLUCHSAVEDATA_ID  (Index) 
--
--  Dependencies: 
--   TEXSLUCHSAVEDATA (Table)
--
CREATE UNIQUE INDEX ASU.K_TEXSLUCHSAVEDATA_ID ON ASU.TEXSLUCHSAVEDATA
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- "TExSluchSaveData_INSERT"  (Trigger) 
--
--  Dependencies: 
--   TEXSLUCHSAVEDATA (Table)
--
CREATE OR REPLACE TRIGGER ASU."TExSluchSaveData_INSERT" 
 BEFORE
  INSERT
 ON asu.TEXSLUCHSAVEDATA
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  IF :new.fk_id IS NULL THEN
    SELECT asu.SEQ_TExSluchSaveData.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TEXSLUCHSAVEDATA 
-- 
ALTER TABLE ASU.TEXSLUCHSAVEDATA ADD (
  CONSTRAINT K_TEXSLUCHSAVEDATA_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

-- 
-- Foreign Key Constraints for Table TEXSLUCHSAVEDATA 
-- 
ALTER TABLE ASU.TEXSLUCHSAVEDATA ADD (
  CONSTRAINT K_TEXSLUCHSAVEDATA_GROUPID 
 FOREIGN KEY (FK_GROUPID) 
 REFERENCES ASU.TEXSLUCHSAVEGROUPS (FK_ID)
    ON DELETE CASCADE)
/
