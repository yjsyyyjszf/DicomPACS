DROP INDEX ASU.TPAC_APPEARANCE_BY_NAZID_STATE
/

--
-- TPAC_APPEARANCE_BY_NAZID_STATE  (Index) 
--
CREATE INDEX ASU.TPAC_APPEARANCE_BY_NAZID_STATE ON ASU.TPAC_APPEARANCE
(FK_NAZID, FK_STATE)
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

