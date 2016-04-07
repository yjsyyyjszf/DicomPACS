ALTER TABLE ASU.TRECIPE_CHANGE_HISTORY
  DROP CONSTRAINT TRECIPE_CH_RECIPEID
/


-- 
-- Foreign Key Constraints for Table TRECIPE_CHANGE_HISTORY 
-- 
ALTER TABLE ASU.TRECIPE_CHANGE_HISTORY ADD (
  CONSTRAINT TRECIPE_CH_RECIPEID 
 FOREIGN KEY (FK_RECIPE_ID) 
 REFERENCES ASU.TRECIPE (FK_ID))
/
