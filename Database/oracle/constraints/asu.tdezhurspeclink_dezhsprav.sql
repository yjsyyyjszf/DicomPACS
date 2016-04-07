ALTER TABLE ASU.TDEZHURSPECLINK
  DROP CONSTRAINT TDEZHURSPECLINK_DEZHSPRAV
/

-- 
-- Non Foreign Key Constraints for Table TDEZHURSPECLINK 
-- 
ALTER TABLE ASU.TDEZHURSPECLINK ADD (
  CONSTRAINT TDEZHURSPECLINK_DEZHSPRAV
 PRIMARY KEY
 (FK_DEZHURSPECID, FK_SPRAVID))
/
