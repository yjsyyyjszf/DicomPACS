DROP INDEX ASU.TS_COLUMNNAZ_SYNONIM
/

--
-- TS_COLUMNNAZ_SYNONIM  (Index) 
--
CREATE INDEX ASU.TS_COLUMNNAZ_SYNONIM ON ASU.TS_COLUMNNAZ
(FC_SYNONIM)
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

