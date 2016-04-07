DROP PACKAGE BODY ASU.PKG_R_PRIL2
/

--
-- PKG_R_PRIL2  (Package Body) 
--
CREATE OR REPLACE PACKAGE BODY ASU."PKG_R_PRIL2" 
 is-- ReCreated by TimurLan
  PROCEDURE DO_CALC_REPORT(pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFN_COUNT_MEST OUT NUMBER,
                           pFN_RAZV_MEST OUT NUMBER,pFN_BEGIN OUT NUMBER,pFN_INCOME OUT NUMBER,
                           pFN_INCOME_PMC OUT NUMBER,pFN_INCOME_KONT OUT NUMBER,pFN_OUT OUT NUMBER,
                           pFN_END OUT NUMBER, pFN_KDN OUT NUMBER,pFN_KDN_PMC OUT NUMBER,
                           pFN_KDN_KONT OUT NUMBER,pFN_SUM OUT NUMBER,pFN_SUM_PMC OUT NUMBER,
                           pFN_SUM_KONT OUT NUMBER)
  IS-- Used in rPril4.dpr
    CURSOR COUNT_MEST IS SELECT /*+first_row*/SUM(GET_PALATA_START_MESTA(FK_ID)) FROM TROOM WHERE FK_ID>0;
    CURSOR RAZV_MEST IS SELECT /*+first_row*/SUM(GET_PALATAMESTA(FK_ID)) FROM TROOM WHERE FK_ID>0;
  BEGIN
    IF COUNT_MEST%ISOPEN THEN
      CLOSE COUNT_MEST;
    END IF;
    OPEN COUNT_MEST;
    FETCH COUNT_MEST INTO pFN_COUNT_MEST;
    CLOSE COUNT_MEST;

    IF RAZV_MEST%ISOPEN THEN
      CLOSE RAZV_MEST;
    END IF;
    OPEN RAZV_MEST;
    FETCH RAZV_MEST INTO pFN_RAZV_MEST;
    CLOSE RAZV_MEST;

    pFN_BEGIN:=PKG_R_ALLFUNC.GET_COUNT_MORNING(pFD_DATA1);
    pFN_INCOME:=PKG_R_ALLFUNC.GET_COUNT_INC(pFD_DATA1,pFD_DATA2);
    pFN_INCOME_KONT:=PKG_R_ALLFUNC.GET_COUNT_INC_PRIZN(pFD_DATA1,pFD_DATA2,1);
    pFN_INCOME_PMC:=PKG_R_ALLFUNC.GET_COUNT_INC_VID(pFD_DATA1,pFD_DATA2,4);
    pFN_OUT:=PKG_R_ALLFUNC.GET_COUNT_OUT(pFD_DATA1,pFD_DATA2);
    pFN_END:=PKG_R_ALLFUNC.GET_COUNT_MORNING(pFD_DATA2+1);
    pFN_KDN:=PKG_R_KDNFUNC.GET_KDN(pFD_DATA1,pFD_DATA2);
    pFN_KDN_KONT:=GET_KDN_PERIOD_PRIZN(pFD_DATA1,pFD_DATA2,1);
    pFN_KDN_PMC:=GET_KDN_PERIOD_VID(pFD_DATA1,pFD_DATA2,4);
    pFN_SUM:=GET_SUM_PERIOD(pFD_DATA1,pFD_DATA2);
    pFN_SUM_PMC:=GET_SUM_PERIOD_VID(pFD_DATA1,pFD_DATA2,4);
    pFN_SUM_KONT:=GET_SUM_PERIOD_PRIZN(pFD_DATA1,pFD_DATA2,1);
  END;
END PKG_R_PRIL2;
/

SHOW ERRORS;

