ALTER TABLE ASU.TANONYM_ADDRESS
  DROP CONSTRAINT TANONIM_ADRESS_BY_ID
/

-- 
-- Non Foreign Key Constraints for Table TANONYM_ADDRESS 
-- 
ALTER TABLE ASU.TANONYM_ADDRESS ADD (
  CONSTRAINT TANONIM_ADRESS_BY_ID
 PRIMARY KEY
 (FK_ID))
/
