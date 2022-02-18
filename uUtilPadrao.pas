unit uUtilPadrao;

interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, Forms, ShellApi, Windows, StrUtils, SqlExpr, DBClient,
  Controls;

  function Monta_Numero(Campo: String; Tamanho: Integer): String;
  function TirarAcento(texto: string): string;
  function Monta_Texto(Campo: String; Tamanho: Integer): String;
  function Formatar_Campo(Campo: String; Tamanho: Integer): String;

implementation

function Monta_Numero(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function TirarAcento(Texto: string): string;
var
  i: Integer;
begin
  Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        'Á', 'À', 'Â', 'Ä', 'Ã': Texto[i] := 'A';
        'É', 'È', 'Ê', 'Ë': Texto[i] := 'E';
        'Í', 'Ì', 'Î', 'Ï': Texto[i] := 'I';
        'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Texto[i] := 'O';
        'Ú', 'Ù', 'Û', 'Ü': Texto[i] := 'U';
        'Ç': Texto[i] := 'C';
        'Ñ': Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Texto := StringReplace(Texto, '&', 'e',[rfReplaceAll, rfIgnoreCase]);
  Result := AnsiUpperCase(Texto);
end;

function Monta_Texto(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function Formatar_Campo(Campo: String; Tamanho: Integer): String;
var
  i : Integer;
  texto2 : String;
  vAux : Integer;
begin
  if Tamanho <= 0 then
    vAux := Length(Campo)
  else
    vAux := Tamanho;
  Result := '';
  texto2 := Campo;
  for i := 1 to vAux - Length(texto2) do
    texto2 := texto2 + ' ';
  Result := Texto2;
end;

end.
