ALTER TABLE ASU.TCHEMOTHERAPY_ITEMS
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TCHEMOTHERAPY_ITEMS CASCADE CONSTRAINTS
/

--
-- TCHEMOTHERAPY_ITEMS  (Table) 
--
CREATE TABLE ASU.TCHEMOTHERAPY_ITEMS
(
  FK_ID                           NUMBER        NOT NULL,
  FK_CHEMOTHERAPY_KURS            NUMBER        NOT NULL,
  FK_NAZMEDLECH                   NUMBER        NOT NULL,
  FK_CHEMOTHERAPY_TEMPL_ITEMS_ID  NUMBER        DEFAULT -1
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
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

COMMENT ON TABLE ASU.TCHEMOTHERAPY_ITEMS IS '����������� ����� ������������. Author: Neronov A.S. 01.06.2012'
/

COMMENT ON COLUMN ASU.TCHEMOTHERAPY_ITEMS.FK_ID IS '[SEQ_TCHEMOTHERAPY_ITEMS] - ID'
/

COMMENT ON COLUMN ASU.TCHEMOTHERAPY_ITEMS.FK_CHEMOTHERAPY_KURS IS 'TCHEMOTHERAPY.FK_ID - ���� ������������'
/

COMMENT ON COLUMN ASU.TCHEMOTHERAPY_ITEMS.FK_NAZMEDLECH IS 'TNAZMEDLECH.FK_ID - ��������'
/

COMMENT ON COLUMN ASU.TCHEMOTHERAPY_ITEMS.FK_CHEMOTHERAPY_TEMPL_ITEMS_ID IS '������ ��  ASU.TCHEMPTHERAPY_TEMPL_ITEMS.FK_ID. ������������� ������� ������������ ����������� � ������ ����� ������������ (���� ���� ����������� ����� �������). �� ���������, ���� ������� ����������, ���� ����� �������� -1.'
/


--
-- PK_TCHEMOTHERAPY_ITEMS  (Index) 
--
--  Dependencies: 
--   TCHEMOTHERAPY_ITEMS (Table)
--
CREATE UNIQUE INDEX ASU.PK_TCHEMOTHERAPY_ITEMS ON ASU.TCHEMOTHERAPY_ITEMS
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TCHEMOTHERAPY_ITEMS_BY_KURS  (Index) 
--
--  Dependencies: 
--   TCHEMOTHERAPY_ITEMS (Table)
--
CREATE INDEX ASU.TCHEMOTHERAPY_ITEMS_BY_KURS ON ASU.TCHEMOTHERAPY_ITEMS
(FK_CHEMOTHERAPY_KURS)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TCHEMOTHERAPY_ITEMS_BI  (Trigger) 
--
--  Dependencies: 
--   TCHEMOTHERAPY_ITEMS (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCHEMOTHERAPY_ITEMS_BI" 
 BEFORE
 INSERT
 ON ASU.TCHEMOTHERAPY_ITEMS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
BEGIN
   select SEQ_TCHEMOTHERAPY_ITEMS.nextval into :new.fk_id from dual;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TCHEMOTHERAPY_ITEMS 
-- 
ALTER TABLE ASU.TCHEMOTHERAPY_ITEMS ADD (
  CONSTRAINT PK_TCHEMOTHERAPY_ITEMS
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/
