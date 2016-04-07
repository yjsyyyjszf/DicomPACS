DROP INDEX ASU.TNAZMED_TRECIPE_BY_ID
/

--
-- TNAZMED_TRECIPE_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZMED_TRECIPE_BY_ID ON ASU.TNAZMED_TRECIPE
(FK_NAZID, FK_RECIPE)
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

