DROP INDEX ASU.TSRTIPROOM_BY_FK_VIDID
/

--
-- TSRTIPROOM_BY_FK_VIDID  (Index) 
--
CREATE INDEX ASU.TSRTIPROOM_BY_FK_VIDID ON ASU.TSRTIPROOM
(FK_VIDID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          256K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

