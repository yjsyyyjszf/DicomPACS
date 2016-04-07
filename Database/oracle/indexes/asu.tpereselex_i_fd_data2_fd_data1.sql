DROP INDEX ASU.TPERESELEX_I_FD_DATA2_FD_DATA1
/

--
-- TPERESELEX_I_FD_DATA2_FD_DATA1  (Index) 
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

