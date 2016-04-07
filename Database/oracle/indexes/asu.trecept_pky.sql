DROP INDEX ASU.TRECEPT_PKY
/

--
-- TRECEPT_PKY  (Index) 
--
CREATE UNIQUE INDEX ASU.TRECEPT_PKY ON ASU.TRECEPT
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

