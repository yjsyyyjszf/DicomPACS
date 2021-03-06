DROP INDEX ASU.TEFFECT_BY_PACID
/

--
-- TEFFECT_BY_PACID  (Index) 
--
CREATE INDEX ASU.TEFFECT_BY_PACID ON ASU.TEFFECT
(FK_PACID)
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


