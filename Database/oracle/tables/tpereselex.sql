DROP TABLE ASU.TPERESELEX CASCADE CONSTRAINTS
/

--
-- TPERESELEX  (Table) 
--
CREATE TABLE ASU.TPERESELEX
(
  FK_ID          NUMBER(15)                     DEFAULT -1,
  FK_PALATAID    NUMBER(15)                     DEFAULT -1,
  FK_PACID       NUMBER(15)                     DEFAULT -1,
  FD_DATA1       DATE,
  FD_DATA2       DATE,
  FK_SROKID      NUMBER(15)                     DEFAULT -1,
  FL_BUH         NUMBER                         DEFAULT 0,
  FK_KOYKAVIDID  NUMBER,
  FK_DOCOBSLID   NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          16K
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

COMMENT ON TABLE ASU.TPERESELEX IS '������� ����������� �������� by TimurLan'
/

COMMENT ON COLUMN ASU.TPERESELEX.FK_ID IS 'ID'
/

COMMENT ON COLUMN ASU.TPERESELEX.FK_PALATAID IS 'TROOM.FK_ID'
/

COMMENT ON COLUMN ASU.TPERESELEX.FK_PACID IS '��� ��������'
/

COMMENT ON COLUMN ASU.TPERESELEX.FD_DATA1 IS '������ �������'
/

COMMENT ON COLUMN ASU.TPERESELEX.FD_DATA2 IS '����� �������'
/

COMMENT ON COLUMN ASU.TPERESELEX.FK_SROKID IS 'TSROKY.FK_ID'
/

COMMENT ON COLUMN ASU.TPERESELEX.FL_BUH IS '������� �����������'
/

COMMENT ON COLUMN ASU.TPERESELEX.FK_KOYKAVIDID IS '������� �����'
/

COMMENT ON COLUMN ASU.TPERESELEX.FK_DOCOBSLID IS '������ �� ��� ���-�� ������������ TDocObsl'
/


--
-- TPERESELEX_BY_FD_DATA1_DATA2  (Index) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE INDEX ASU.TPERESELEX_BY_FD_DATA1_DATA2 ON ASU.TPERESELEX
(FD_DATA1, FD_DATA2)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1664K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPERESELEX_BY_FD_DATA2  (Index) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE INDEX ASU.TPERESELEX_BY_FD_DATA2 ON ASU.TPERESELEX
(FD_DATA2)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1536K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPERESELEX_BY_FK_PALATAID  (Index) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE INDEX ASU.TPERESELEX_BY_FK_PALATAID ON ASU.TPERESELEX
(FK_PALATAID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          896K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPERESELEX_BY_ID  (Index) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE UNIQUE INDEX ASU.TPERESELEX_BY_ID ON ASU.TPERESELEX
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          512K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPERESELEX_BY_PACID  (Index) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE INDEX ASU.TPERESELEX_BY_PACID ON ASU.TPERESELEX
(FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPERESELEX$FK_DOCOBSLID  (Index) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE INDEX ASU.TPERESELEX$FK_DOCOBSLID ON ASU.TPERESELEX
(FK_DOCOBSLID)
NOLOGGING
TABLESPACE INDX
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
-- TPERESELEX_I_FD_DATA2_FD_DATA1  (Index) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE INDEX ASU.TPERESELEX_I_FD_DATA2_FD_DATA1 ON ASU.TPERESELEX
(FD_DATA2, FD_DATA1)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1920K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPERESELEX_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPERESELEX (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPERESELEX_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPERESELEX REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPERESEL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

