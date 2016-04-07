DROP INDEX ASU.WPA_BY_AMBULANCE_ID
/

--
-- WPA_BY_AMBULANCE_ID  (Index) 
--
CREATE INDEX ASU.WPA_BY_AMBULANCE_ID ON ASU.WEB_PEOPLE_AMBULANCE
(AMBULANCE_ID)
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

