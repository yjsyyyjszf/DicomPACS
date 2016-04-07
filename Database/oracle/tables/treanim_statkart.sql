ALTER TABLE ASU.TREANIM_STATKART
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TREANIM_STATKART CASCADE CONSTRAINTS
/

--
-- TREANIM_STATKART  (Table) 
--
CREATE TABLE ASU.TREANIM_STATKART
(
  FK_ID     NUMBER                              NOT NULL,
  FK_DIAG   NUMBER,
  FK_OPER   NUMBER,
  FK_PACID  NUMBER
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
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TREANIM_STATKART IS '������ ��������� ��������� �� ���������� -- Created 20080530 by Linnikov'
/

COMMENT ON COLUMN ASU.TREANIM_STATKART.FK_DIAG IS 'TDIAG.FK_ID �������'
/

COMMENT ON COLUMN ASU.TREANIM_STATKART.FK_OPER IS 'VNAZ.FK_ID ��������'
/

COMMENT ON COLUMN ASU.TREANIM_STATKART.FK_PACID IS 'TKARTA.FK_ID �������'
/


--
-- TREANIM_STATKART_PK  (Index) 
--
--  Dependencies: 
--   TREANIM_STATKART (Table)
--
CREATE UNIQUE INDEX ASU.TREANIM_STATKART_PK ON ASU.TREANIM_STATKART
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
-- TREANIM_STATKART_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TREANIM_STATKART (Table)
--
CREATE OR REPLACE TRIGGER ASU."TREANIM_STATKART_BEFORE_INSERT" 
  BEFORE INSERT
  ON ASU.TREANIM_STATKART   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TREANIM_STATKART.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TREANIM_STATKART 
-- 
ALTER TABLE ASU.TREANIM_STATKART ADD (
  CONSTRAINT TREANIM_STATKART_PK
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
