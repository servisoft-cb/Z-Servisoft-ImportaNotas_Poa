program ImportaNotas;

uses
  Forms,
  uTela in 'uTela.pas' {fTela},
  uUtilPadrao in 'uUtilPadrao.pas',
  DmdDatabase_EBS in 'DmdDatabase_EBS.pas' {dmDatabase_EBS: TDataModule},
  UDMLancamentos_EBS in 'UDMLancamentos_EBS.pas' {DMLancamentos_EBS: TDataModule},
  uXMLClientDataSet in 'uXMLClientDataSet.pas',
  uXMLClientDataSet_NFSe_CampoBom in 'uXMLClientDataSet_NFSe_CampoBom.pas',
  uXMLClientDataSet_NFSe_NH in 'uXMLClientDataSet_NFSe_NH.pas',
  uXMLClientDataSet_NFSe_PortoAlegre in 'uXMLClientDataSet_NFSe_PortoAlegre.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDatabase_EBS, dmDatabase_EBS);
  Application.CreateForm(TDMLancamentos_EBS, DMLancamentos_EBS);
  Application.CreateForm(TfTela, fTela);
  Application.Run;
end.
