ALTER TABLE ASU.TRECIPETYPE
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TRECIPETYPE CASCADE CONSTRAINTS
/

--
-- TRECIPETYPE  (Table) 
--
CREATE TABLE ASU.TRECIPETYPE
(
  FK_ID    NUMBER(10)                           NOT NULL,
  FC_NAME  VARCHAR2(150 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TRECIPETYPE IS 'Sill - ���� ��������'
/

COMMENT ON COLUMN ASU.TRECIPETYPE.FK_ID IS '��������� ����'
/

COMMENT ON COLUMN ASU.TRECIPETYPE.FC_NAME IS '��������'
/


--
-- TRECIPETYPE_BY_ID  (Index) 
--
--  Dependencies: 
--   TRECIPETYPE (Table)
--
CREATE UNIQUE INDEX ASU.TRECIPETYPE_BY_ID ON ASU.TRECIPETYPE
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


-- 
-- Non Foreign Key Constraints for Table TRECIPETYPE 
-- 
ALTER TABLE ASU.TRECIPETYPE ADD (
  CONSTRAINT TRECIPETYPE_BY_ID
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE INDX
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          128K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/
