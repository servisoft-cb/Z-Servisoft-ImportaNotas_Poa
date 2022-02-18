unit UDMLancamentos_EBS;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMLancamentos_EBS = class(TDataModule)
    sdsMunicipioG: TSQLDataSet;
    dspMunicipioG: TDataSetProvider;
    cdsMunicipioG: TClientDataSet;
    dsMunicipioG: TDataSource;
    sdsMunicipioGestado: TStringField;
    sdsMunicipioGcd_municipio: TIntegerField;
    sdsMunicipioGnome: TStringField;
    sdsMunicipioGstatus: TStringField;
    sdsMunicipioGcd_municipio_ibge: TStringField;
    sdsMunicipioGcd_municipio_estado: TIntegerField;
    sdsMunicipioGcd_municipio_concla: TIntegerField;
    cdsMunicipioGestado: TStringField;
    cdsMunicipioGcd_municipio: TIntegerField;
    cdsMunicipioGnome: TStringField;
    cdsMunicipioGstatus: TStringField;
    cdsMunicipioGcd_municipio_ibge: TStringField;
    cdsMunicipioGcd_municipio_estado: TIntegerField;
    cdsMunicipioGcd_municipio_concla: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctLancamento : String;

    procedure prc_abrir_cdsLancamento(Mes, Ano, Cod_Empresa : Word ; DMA : Boolean);

  end;

var
  DMLancamentos_EBS: TDMLancamentos_EBS;

implementation

uses DmdDatabase_EBS, DateUtils;

{$R *.dfm}

procedure TDMLancamentos_EBS.DataModuleCreate(Sender: TObject);
begin
  //cdsMunicipioG.Open;
end;

procedure TDMLancamentos_EBS.prc_abrir_cdsLancamento(Mes, Ano, Cod_Empresa : Word ; DMA : Boolean);
begin
end;

end.
