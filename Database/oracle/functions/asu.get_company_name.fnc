DROP FUNCTION ASU.GET_COMPANY_NAME
/

--
-- GET_COMPANY_NAME  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TCOMPANY (Table)
--   TDOGOVOR (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_COMPANY_NAME" (pFK_KOD IN NUMBER) RETURN  VARCHAR2
 IS-- used in rDailyBuh;
  s VARCHAR2(200);
  CURSOR c(pKOD NUMBER) IS
         SELECT FC_SHORT
           FROM TCOMPANY,TDOGOVOR
          WHERE TCOMPANY.FK_ID=TDOGOVOR.FK_PREDID
            AND TDOGOVOR.FK_ID=pKOD;
BEGIN
  OPEN c(pFK_KOD);
  FETCH c INTO s;
  CLOSE c;
  RETURN s;
END;
/

SHOW ERRORS;


