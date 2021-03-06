unit PkgSmini;

// Oracle Package Wizard 1.0.3
// File PkgSmini.pas generated by delphi5 on 07.07.2006 16:48:23
// This unit contains interface objects for oracle package ASU.PKG_SMINI
// WARNING: Modifications made to this file will be lost after regeneration!

interface

uses Classes, SysUtils, Oracle;

type
  TPkgSmini = class(TOracleCustomPackage)
  public
    procedure Deletekey(const Section: string; const Ident: string);
    procedure EraseSection(const Section: string);
    function  Readstring(const Section: string; const Ident: string; 
      const Pdefault: string): string;
    function  ReadSection(const Section: string): TOracleQuery;
    function  ReadSections: TOracleQuery;
    procedure Writestring(const Section: string; const Ident: string; 
      const Pvalue: string);
  published
    property Name;
    property Session;
    property Cursor;
  end;

var
  DefaultPLSQLTableSize: Integer = 100; // Default size of a PL/SQL Table

implementation

// PKG_SMINI.DELETEKEY
procedure TPkgSmini.Deletekey(const Section: string; const Ident: string);
begin
  ThreadAcquire;
  try
    GetQuery;
    OCPQuery.DeclareVariable('SECTION', otString);
    OCPQuery.SetVariable('SECTION', Section);
    OCPQuery.DeclareVariable('IDENT', otString);
    OCPQuery.SetVariable('IDENT', Ident);
    OCPQuery.SQL.Add('begin');
    OCPQuery.SQL.Add('  "ASU"."PKG_SMINI"."DELETEKEY"(');
    OCPQuery.SQL.Add('    SECTION => :SECTION,');
    OCPQuery.SQL.Add('    IDENT => :IDENT);');
    OCPQuery.SQL.Add('end;');
    OCPQuery.Execute;
  finally
    ThreadRelease;
  end;
end;

// PKG_SMINI.ERASE_SECTION
procedure TPkgSmini.EraseSection(const Section: string);
begin
  ThreadAcquire;
  try
    GetQuery;
    OCPQuery.DeclareVariable('SECTION', otString);
    OCPQuery.SetVariable('SECTION', Section);
    OCPQuery.SQL.Add('begin');
    OCPQuery.SQL.Add('  "ASU"."PKG_SMINI"."ERASE_SECTION"(SECTION => :SECTION);');
    OCPQuery.SQL.Add('end;');
    OCPQuery.Execute;
  finally
    ThreadRelease;
  end;
end;

// PKG_SMINI.READSTRING
function TPkgSmini.Readstring(const Section: string; const Ident: string; 
  const Pdefault: string): string;
begin
  ThreadAcquire;
  try
    GetQuery;
    OCPQuery.DeclareVariable('function_result', otString);
    OCPQuery.DeclareVariable('SECTION', otString);
    OCPQuery.SetVariable('SECTION', Section);
    OCPQuery.DeclareVariable('IDENT', otString);
    OCPQuery.SetVariable('IDENT', Ident);
    OCPQuery.DeclareVariable('PDEFAULT', otString);
    OCPQuery.SetVariable('PDEFAULT', Pdefault);
    OCPQuery.SQL.Add('begin');
  {$IFDEF MIS2}
    OCPQuery.SQL.Add('  SELECT NVL(MAX(a.VALUE), :PDEFAULT) into :function_result FROM MIS.ADJ a where a.SECTION = :SECTION and a.KEY = :IDENT;');
  {$ELSE}
    OCPQuery.SQL.Add('  :function_result := "ASU"."PKG_SMINI"."READSTRING"(');
    OCPQuery.SQL.Add('    SECTION => :SECTION,');
    OCPQuery.SQL.Add('    IDENT => :IDENT,');
    OCPQuery.SQL.Add('    PDEFAULT => :PDEFAULT);');
  {$ENDIF}
    OCPQuery.SQL.Add('end;');
    OCPQuery.Execute;
    Result := ConvertVariant(OCPQuery.GetVariable('function_result'));
  finally
    ThreadRelease;
  end;
end;

// PKG_SMINI.READ_SECTION
function TPkgSmini.ReadSection(const Section: string): TOracleQuery;
begin
  Result := TOracleQuery.Create(nil);
  Result.Session := Session;
  ThreadAcquire;
  try
    GetQuery;
    OCPQuery.DeclareVariable('function_result', otCursor);
    OCPQuery.SetComplexVariable('function_result', Result);
    OCPQuery.DeclareVariable('SECTION', otString);
    OCPQuery.SetVariable('SECTION', Section);
    OCPQuery.SQL.Add('begin');
    OCPQuery.SQL.Add('  :function_result := "ASU"."PKG_SMINI"."READ_SECTION"(SECTION => :SECTION);');
    OCPQuery.SQL.Add('end;');
    OCPQuery.Execute;
  except
    ThreadRelease;
    Result.Free;
    raise;
  end;
  ThreadRelease;
end;

// PKG_SMINI.READ_SECTIONS
function TPkgSmini.ReadSections: TOracleQuery;
begin
  Result := TOracleQuery.Create(nil);
  Result.Session := Session;
  ThreadAcquire;
  try
    GetQuery;
    OCPQuery.DeclareVariable('function_result', otCursor);
    OCPQuery.SetComplexVariable('function_result', Result);
    OCPQuery.SQL.Add('begin');
    OCPQuery.SQL.Add('  :function_result := "ASU"."PKG_SMINI"."READ_SECTIONS";');
    OCPQuery.SQL.Add('end;');
    OCPQuery.Execute;
  except
    ThreadRelease;
    Result.Free;
    raise;
  end;
  ThreadRelease;
end;

// PKG_SMINI.WRITESTRING
procedure TPkgSmini.Writestring(const Section: string; const Ident: string; 
  const Pvalue: string);
begin
  ThreadAcquire;
  try
    GetQuery;
    OCPQuery.DeclareVariable('SECTION', otString);
    OCPQuery.SetVariable('SECTION', Section);
    OCPQuery.DeclareVariable('IDENT', otString);
    OCPQuery.SetVariable('IDENT', Ident);
    OCPQuery.DeclareVariable('PVALUE', otString);
    OCPQuery.SetVariable('PVALUE', Pvalue);
    OCPQuery.SQL.Add('begin');
    OCPQuery.SQL.Add('  "ASU"."PKG_SMINI"."WRITESTRING"(');
    OCPQuery.SQL.Add('    SECTION => :SECTION,');
    OCPQuery.SQL.Add('    IDENT => :IDENT,');
    OCPQuery.SQL.Add('    PVALUE => :PVALUE);');
    OCPQuery.SQL.Add('end;');
    OCPQuery.Execute;
  finally
    ThreadRelease;
  end;
end;

end.
