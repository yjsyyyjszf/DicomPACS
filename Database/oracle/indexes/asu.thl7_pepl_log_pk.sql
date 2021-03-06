DROP INDEX ASU.THL7_PEPL_LOG_PK
/

--
-- THL7_PEPL_LOG_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.THL7_PEPL_LOG_PK ON ASU.THL7_PEPL_LOG
(FK_ID)
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


