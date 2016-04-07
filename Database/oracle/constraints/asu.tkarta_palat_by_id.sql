ALTER TABLE ASU.TKARTA_PALAT
  DROP CONSTRAINT TKARTA_PALAT_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TKARTA_PALAT 
-- 
ALTER TABLE ASU.TKARTA_PALAT ADD (
  CONSTRAINT TKARTA_PALAT_BY_ID
 PRIMARY KEY
 (FK_ID))
/
