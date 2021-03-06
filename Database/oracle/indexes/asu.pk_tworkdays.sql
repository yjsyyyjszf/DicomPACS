DROP INDEX ASU.PK_TWORKDAYS
/

--
-- PK_TWORKDAYS  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TWORKDAYS ON ASU.TWORKDAYS
(FD_DATE)
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


