DROP INDEX ASU.TSROKY_BY_D1D3_PRYB
/

--
-- TSROKY_BY_D1D3_PRYB  (Index) 
--
CREATE INDEX ASU.TSROKY_BY_D1D3_PRYB ON ASU.TSROKY
(FD_DATA1, FD_DATA3, FK_PRYB)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2304K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

