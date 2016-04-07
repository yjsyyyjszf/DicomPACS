DROP INDEX ASU.TPERESELEX_BY_FD_DATA1_DATA2
/

--
-- TPERESELEX_BY_FD_DATA1_DATA2  (Index) 
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

