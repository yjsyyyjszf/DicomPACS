ALTER TABLE ASU.TTYPETIMENAZ
  DROP CONSTRAINT TTYPETIMENAZ_FK_ID
/

-- 
-- Non Foreign Key Constraints for Table TTYPETIMENAZ 
-- 
ALTER TABLE ASU.TTYPETIMENAZ ADD (
  CONSTRAINT TTYPETIMENAZ_FK_ID
 PRIMARY KEY
 (FK_ID))
/
