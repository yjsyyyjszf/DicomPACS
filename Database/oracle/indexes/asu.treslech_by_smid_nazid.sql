DROP INDEX ASU.TRESLECH_BY_SMID_NAZID
/

--
-- TRESLECH_BY_SMID_NAZID  (Index) 
--
CREATE INDEX ASU.TRESLECH_BY_SMID_NAZID ON ASU.TRESLECH
(FK_SMID, FK_NAZID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1152K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


