DROP INDEX ASU.TTOWN_BY_FK_ID
/

--
-- TTOWN_BY_FK_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TTOWN_BY_FK_ID ON ASU.TTOWN
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

