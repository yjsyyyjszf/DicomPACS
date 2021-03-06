DROP INDEX ASU.TSMID_BY_OWNER_TYPE
/

--
-- TSMID_BY_OWNER_TYPE  (Index) 
--
CREATE INDEX ASU.TSMID_BY_OWNER_TYPE ON ASU.TSMID
(FK_OWNER, FC_TYPE)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          13952K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


