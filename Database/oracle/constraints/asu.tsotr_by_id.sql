ALTER TABLE ASU.TSOTR1
  DROP CONSTRAINT TSOTR_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TSOTR1 
-- 
ALTER TABLE ASU.TSOTR1 ADD (
  CONSTRAINT TSOTR_BY_ID
 PRIMARY KEY
 (FK_ID))
/

