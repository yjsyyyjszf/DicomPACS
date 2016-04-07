object frmMoUchgrTypeEdit: TfrmMoUchgrTypeEdit
  Left = 496
  Top = 262
  Width = 428
  Height = 288
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1086#1074' '#1091#1095#1077#1090#1085#1099#1093' '#1075#1088#1091#1087#1087' '#1052#1054
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 420
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 416
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 403
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 64
      Caption = 'ToolBar1'
      Flat = True
      Images = dmMain.ilMain
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = aSave
      end
      object ToolButton2: TToolButton
        Left = 64
        Top = 0
        Action = aCancel
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 420
    Height = 212
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      420
      212)
    object gbType: TGroupBox
      Left = 0
      Top = 1
      Width = 420
      Height = 217
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1058#1080#1087#1099' '#1091#1095#1077#1090#1085#1099#1093' '#1075#1088#1091#1087#1087' '#1052#1054':'
      TabOrder = 0
      DesignSize = (
        420
        217)
      object tl: TdxTreeList
        Left = 5
        Top = 14
        Width = 410
        Height = 198
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        TabOrder = 0
        Options = [aoColumnSizing, aoTabThrough, aoRowSelect, aoAutoWidth]
        HighlightColor = clHighlightText
        HighlightTextColor = clHighlight
        TreeLineColor = clGrayText
        ShowRoot = False
        OnKeyDown = tlKeyDown
        OnMouseDown = tlMouseDown
        Anchors = [akLeft, akTop, akRight, akBottom]
        object tlExists: TdxTreeListImageColumn
          Alignment = taLeftJustify
          DisableCustomizing = True
          MinWidth = 15
          Width = 16
          BandIndex = 0
          RowIndex = 0
          Images = ilStateImg
          ImageIndexes.Strings = (
            '0'
            '1'
            '2')
          Values.Strings = (
            '1'
            '0')
        end
        object tlType: TdxTreeListColumn
          Caption = #1058#1080#1087
          BandIndex = 0
          RowIndex = 0
        end
      end
    end
  end
  object al: TActionList
    Images = dmMain.ilMain
    Left = 379
    Top = 12
    object aSave: TAction
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Enabled = False
      ImageIndex = 9
      ShortCut = 113
      OnExecute = aSaveExecute
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ImageIndex = 8
      ShortCut = 27
      OnExecute = aCancelExecute
    end
  end
  object odsMoUchgrTypes: TOracleDataSet
    SQL.Strings = (
      
        'SELECT T.FK_ID,T.FC_NAME,NVL((SELECT 1 FROM MED.TMO_TUCHGRTYPE T' +
        'T'
      'WHERE T.FK_ID = TT.FK_TUCHGRTYPE'
      '  AND TT.MOID = :MOID'
      '  AND ROWNUM < 2),0) AS EXUCHGRTYPE FROM MED.TUCHGRTYPE T'
      'ORDER BY T.FK_ID')
    Variables.Data = {0300000001000000050000003A4D4F4944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000005000000464B5F49440100000000000700000046435F4E41
      4D450100000000000B0000004558554348475254595045010000000000}
    Cursor = crSQLWait
    Session = dmMain.os
    Left = 40
    Top = 66
    object odsMoUchgrTypesFK_ID: TIntegerField
      FieldName = 'FK_ID'
      Required = True
    end
    object odsMoUchgrTypesFC_NAME: TStringField
      FieldName = 'FC_NAME'
      Size = 100
    end
    object odsMoUchgrTypesEXUCHGRTYPE: TFloatField
      FieldName = 'EXUCHGRTYPE'
    end
  end
  object ilStateImg: TImageList
    Left = 376
    Top = 64
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      C003C00300000000DFFBDFFB00000000DDFBDFFB00000000D8FBDFFB00000000
      D07BDFFB00000000D23BDFFB00000000D71BDFFB00000000DF8BDFFB00000000
      DFCBDFFB00000000DFEBDFFB00000000DFFBDFFB00000000C003C00300000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object oqInsert: TOracleQuery
    SQL.Strings = (
      'DECLARE CURSOR cur(pmoid IN NUMBER,pFK_TUCHGRTYPE IN NUMBER) IS '
      '        SELECT 1 FROM MED.TMO_TUCHGRTYPE T '
      '        WHERE T.MOID = pMOID'
      '          AND T.FK_TUCHGRTYPE = pFK_TUCHGRTYPE;'
      '        TMP NUMBER(1);  '
      'BEGIN'
      '  OPEN CUR(:MOID,:FK_TUCHGRTYPE);'
      '  FETCH CUR INTO TMP;'
      '  IF CUR%NOTFOUND THEN'
      
        '    INSERT INTO MED.TMO_TUCHGRTYPE (MOID,FK_TUCHGRTYPE) VALUES (' +
        ':MOID,:FK_TUCHGRTYPE);'
      '  END IF;'
      '  CLOSE CUR;'
      'END;')
    Session = dmMain.os
    Variables.Data = {
      0300000002000000050000003A4D4F49440300000000000000000000000E0000
      003A464B5F54554348475254595045030000000000000000000000}
    Cursor = crSQLWait
    Left = 376
    Top = 131
  end
  object oqDelete: TOracleQuery
    SQL.Strings = (
      'DELETE FROM MED.TMO_TUCHGRTYPE '
      'WHERE MOID = :MOID'
      '  AND FK_TUCHGRTYPE = :FK_TUCHGRTYPE')
    Session = dmMain.os
    Variables.Data = {
      0300000002000000050000003A4D4F49440300000000000000000000000E0000
      003A464B5F54554348475254595045030000000000000000000000}
    Cursor = crSQLWait
    Left = 376
    Top = 187
  end
end