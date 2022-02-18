unit DmdDatabase_EBS;

interface

uses
  SysUtils, Classes, IniFiles,
  IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME, FMTBcd, ADODB, DB,
  DBXpress, SqlExpr, Forms;

  //, , , IniFiles,
  //IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME, FMTBcd, Midaslib;


type
  TdmDatabase_EBS = class(TDataModule)
    Conexao_MSSQL: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function Fnc_ArquivoConfiguracao: string;

  public
  
  end;

var
  dmDatabase_EBS: TdmDatabase_EBS;

implementation

{$R *.dfm}

const
  cArquivoConfiguracao = 'Config.ini';

function TdmDatabase_EBS.Fnc_ArquivoConfiguracao: string;
var
  vAux : String;
begin
  Result := ExtractFilePath( Application.ExeName ) + cArquivoConfiguracao;
  vAux := Result;
end;

procedure TdmDatabase_EBS.DataModuleCreate(Sender: TObject);
var
  Config: TIniFile;
  aa : String;
begin
  //Tirado a pedido da Shala para Porto Alegre   11/11/2015
  {if not FileExists(Fnc_ArquivoConfiguracao) then
    Exit;

  Config := TIniFile.Create( Fnc_ArquivoConfiguracao );
  try
    aa  := Config.ReadString('SS_SQLSERVER', 'HostName', '');

    Conexao_MSSQL.Params.Values['HostName']   := Config.ReadString('SS_SQLSERVER', 'HostName', '');
    Conexao_MSSQL.Params.Values['DriverName'] := Config.ReadString('SS_SQLSERVER', 'DriverName', '');
    Conexao_MSSQL.Params.Values['DaTaBaSe']   := Config.ReadString('SS_SQLSERVER', 'DaTaBaSe', '');
    Conexao_MSSQL.Params.Values['User_Name']  := Config.ReadString('SS_SQLSERVER', 'User_Name', '');
    Conexao_MSSQL.Params.Values['Password']   := Config.ReadString('SS_SQLSERVER', 'Password', '');
    Conexao_MSSQL.Connected := True;
  finally
    FreeAndNil(Config);
  end;}
end;

end.
