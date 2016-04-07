DROP INDEX ASU.TNAZMED_PACID_SOTRID_OSMOTRID
/

--
-- TNAZMED_PACID_SOTRID_OSMOTRID  (Index) 
--
CREATE INDEX ASU.TNAZMED_PACID_SOTRID_OSMOTRID ON ASU.TNAZMED
(FK_PACID, FK_VRACHID, FK_OSMOTRID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          896K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

