DROP INDEX ASU.TPACBARCOD_BY_PACID
/

--
-- TPACBARCOD_BY_PACID  (Index) 
--
CREATE INDEX ASU.TPACBARCOD_BY_PACID ON ASU.TPACBARCOD
(FK_PACID)
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

