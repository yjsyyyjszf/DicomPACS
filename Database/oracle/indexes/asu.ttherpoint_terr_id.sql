DROP INDEX ASU.TTHERPOINT_TERR_ID
/

--
-- TTHERPOINT_TERR_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TTHERPOINT_TERR_ID ON ASU.TTHERPOINTS_TERR
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

