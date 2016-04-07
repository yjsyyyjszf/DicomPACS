DROP FUNCTION ASU.GET_REGIONAL_MEMBERSHIP
/

--
-- GET_REGIONAL_MEMBERSHIP  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TADRESS (Table)
--   TSMID (Table)
--   PKG_SMINI (Package)
--   GET_CURR_CITY_KLADR_ID (Function)
--   GET_CURR_REGION_KLADR_ID (Function)
--   GET_DEF_FUNCT (Function)
--   GET_KLADR_DISTRICT (Function)
--   GET_KLADR_POPULATED_PLACE (Function)
--   GETKLADRBYLEVELNOWNER (Function)
--   TKLADR (Table)
--
CREATE OR REPLACE FUNCTION ASU.GET_REGIONAL_MEMBERSHIP(pADDR_ID NUMBER)
RETURN NUMBER IS

Kladr_ID NUMBER DEFAULT NULL;
vCountry NUMBER DEFAULT NULL;
vRegion  NUMBER DEFAULT NULL;
vTown    NUMBER DEFAULT NULL;
vRaion   NUMBER DEFAULT NULL;
Res NUMBER;
BEGIN
  SELECT MAX(ta.fk_kladr), MAX(COALESCE(ta.fk_countryid, -1)), MAX(COALESCE(ta.fk_regionid, -1)), MAX(COALESCE(ta.fk_townid, -1)), MAX(COALESCE(ta.fk_raionid, -1))
  INTO Kladr_ID, vCountry, vRegion, vTown, vRaion
  FROM ASU.TADRESS ta
  WHERE ta.fk_id = pADDR_ID;

  IF Kladr_ID > 0
  THEN
     IF ASU.GET_KLADR_POPULATED_PLACE(Kladr_ID) = ASU.GET_CURR_CITY_KLADR_ID
     THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_GOROD';
        RETURN Res;
     END IF;

     IF ASU.GET_KLADR_DISTRICT(Kladr_ID) = ASU.GET_DEF_FUNCT('GET_CURR_RAION_KLADR_ID', -1979)
     THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_RAION';
        RETURN Res;
     END IF;

     IF ASU.GetKladrByLevelNOwner(Kladr_ID, 1) = ASU.GET_CURR_REGION_KLADR_ID
     THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_SUBJECT';
        RETURN Res;
     ELSE
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_RF';
        RETURN Res;
     END IF;
  ELSE
    IF vTown > 0 AND TO_CHAR(vTown) = ASU.PKG_SMINI.READSTRING('CONFIG', 'S_TOWN', '-1979')
    THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_GOROD';
        RETURN Res;
    END IF;

    IF vRaion > 0 AND vRaion = ASU.GET_DEF_FUNCT('GET_CURR_RAION_ID', -1979)
    THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_RAION';
        RETURN Res;
    END IF;

    IF vRegion > 0 AND TO_CHAR(vRegion) = ASU.PKG_SMINI.READSTRING('CONFIG', 'S_REGION', '-1979')
    THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_SUBJECT';
        RETURN Res;
    END IF;

    IF vCountry > 0 AND TO_CHAR(vCountry) = ASU.PKG_SMINI.READSTRING('CONFIG', 'S_COUNTRY', '-1979')
    THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_RF';
        RETURN Res;
    END IF;

    IF vCountry > 0
    THEN
        SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'MZ_INOSTR';
        RETURN Res;
    END IF;
  END IF;

  SELECT MAX(FK_ID) INTO Res FROM ASU.TSMID WHERE FC_SYNONIM = 'SP_BOMZH';

  RETURN Res;
END;
/

SHOW ERRORS;

