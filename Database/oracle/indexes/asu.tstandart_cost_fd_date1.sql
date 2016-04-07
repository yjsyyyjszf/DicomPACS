DROP INDEX ASU.TSTANDART_COST_FD_DATE1
/

--
-- TSTANDART_COST_FD_DATE1  (Index) 
--
CREATE INDEX ASU.TSTANDART_COST_FD_DATE1 ON ASU.TSTANDART_COST
(FD_DATE1)
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

