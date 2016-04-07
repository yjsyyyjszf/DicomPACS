ALTER TABLE ASU.TSLREQUEST
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSLREQUEST CASCADE CONSTRAINTS
/

--
-- TSLREQUEST  (Table) 
--
CREATE TABLE ASU.TSLREQUEST
(
  FK_ID             NUMBER                      NOT NULL,
  FD_CREATE         DATE,
  FN_NUM            NUMBER,
  FD_QUARTER        DATE,
  FN_BEGIN_BALANCE  NUMBER,
  FN_ORDER          NUMBER,
  FN_RECEIVE        NUMBER,
  FN_GIVE           NUMBER,
  FN_BREAK          NUMBER,
  FN_PINCH          NUMBER,
  FN_END_BALANCE    NUMBER,
  FN_NEW_ORDER      NUMBER
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

COMMENT ON TABLE ASU.TSLREQUEST IS '������ �� ������ ��'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FK_ID IS '���������� ���'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FD_CREATE IS '���� �������� ������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_NUM IS '����� ������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FD_QUARTER IS '�������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_BEGIN_BALANCE IS '������� �� ������ ��������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_ORDER IS '��������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_RECEIVE IS '��������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_GIVE IS '������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_BREAK IS '���������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_PINCH IS '��������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_END_BALANCE IS '������� �� ����� ��������'
/

COMMENT ON COLUMN ASU.TSLREQUEST.FN_NEW_ORDER IS '�������� �� ��������� �������'
/


--
-- TSLREQUEST_PK  (Index) 
--
--  Dependencies: 
--   TSLREQUEST (Table)
--
CREATE UNIQUE INDEX ASU.TSLREQUEST_PK ON ASU.TSLREQUEST
(FK_ID)
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
-- TSLREQUEST_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSLREQUEST (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSLREQUEST_BEFORE_INSERT" 
  before insert on tslrequest
  for each row
begin
  SELECT seq_tslrequest.NEXTVAL INTO :NEW.FK_ID FROM dual;
end TSLREQUEST_BEFORE_INSERT;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TSLREQUEST 
-- 
ALTER TABLE ASU.TSLREQUEST ADD (
  CONSTRAINT TSLREQUEST_PK
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
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
               ))
/
