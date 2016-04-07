DROP INDEX ASU.IDX_TCOMPANY_DOLGNOST_SYNC
/

--
-- IDX_TCOMPANY_DOLGNOST_SYNC  (Index) 
--
CREATE INDEX ASU.IDX_TCOMPANY_DOLGNOST_SYNC ON ASU.TCOMPANY_DOLGNOST
(FC_NAME)
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

