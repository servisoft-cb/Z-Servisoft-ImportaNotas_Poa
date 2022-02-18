unit uTela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, StdCtrls, DBCtrls, Grids,
  DBGrids, SMDBGrid, DB, DBClient, Provider, Xmlxform, Buttons, Mask, ToolEdit, RzTabs, ExtCtrls, RzPanel, XMLIntf, Spin,
  XMLDoc, oxmldom, StrUtils, CurrEdit, ComCtrls;


type
  TfTela = class(TForm)
    XMLTransformProvider1: TXMLTransformProvider;
    cdsCampoBom: TClientDataSet;
    cdsCBomDet: TClientDataSet;
    dsCampoBom: TDataSource;
    dsCBomDet: TDataSource;
    cdsCampoBomversao: TStringField;
    cdsCampoBomcNFSe: TStringField;
    cdsCampoBomnatOp: TStringField;
    cdsCampoBommod: TStringField;
    cdsCampoBomserie: TStringField;
    cdsCampoBomnNFSe: TStringField;
    cdsCampoBomdEmi: TStringField;
    cdsCampoBomdSaiEnt: TStringField;
    cdsCampoBomcMunFG: TStringField;
    cdsCampoBomrefNF: TStringField;
    cdsCampoBomanulada: TStringField;
    cdsCampoBomnotadebito: TStringField;
    cdsCampoBomdescDesconto: TStringField;
    cdsCampoBomdescCondEsp: TStringField;
    cdsCampoBomnumeroArt: TStringField;
    cdsCampoBomnumeroCei: TStringField;
    cdsCampoBomemit_CNPJ: TStringField;
    cdsCampoBomemit_xNome: TStringField;
    cdsCampoBomxFant: TStringField;
    cdsCampoBomend_xLgr: TStringField;
    cdsCampoBomend_nro: TStringField;
    cdsCampoBomend_xCpl: TStringField;
    cdsCampoBomend_xBairro: TStringField;
    cdsCampoBomend_cMun: TStringField;
    cdsCampoBomend_xMun: TStringField;
    cdsCampoBomend_UF: TStringField;
    cdsCampoBomend_CEP: TStringField;
    cdsCampoBomend_cPais: TStringField;
    cdsCampoBomend_xPais: TStringField;
    cdsCampoBomfone: TStringField;
    cdsCampoBomemit_IE: TStringField;
    cdsCampoBomIEST: TStringField;
    cdsCampoBomemit_IM: TStringField;
    cdsCampoBomTomS_CNPJ: TStringField;
    cdsCampoBomTomS_xNome: TStringField;
    cdsCampoBomender_xLgr: TStringField;
    cdsCampoBomender_nro: TStringField;
    cdsCampoBomender_xCpl: TStringField;
    cdsCampoBomender_xBairro: TStringField;
    cdsCampoBomender_cMun: TStringField;
    cdsCampoBomender_xMun: TStringField;
    cdsCampoBomender_UF: TStringField;
    cdsCampoBomender_CEP: TStringField;
    cdsCampoBomender_cPais: TStringField;
    cdsCampoBomender_xPais: TStringField;
    cdsCampoBomTomS_IE: TStringField;
    cdsCampoBomTomS_IM: TStringField;
    cdsCampoBomIMSTS: TStringField;
    cdsCampoBomPraca: TStringField;
    cdsCampoBomvReemb: TStringField;
    cdsCampoBomvBCISS: TStringField;
    cdsCampoBomvISS: TStringField;
    cdsCampoBomvBCSTISS: TStringField;
    cdsCampoBomvSTISS: TStringField;
    cdsCampoBomvServ: TStringField;
    cdsCampoBomvDesc1: TStringField;
    cdsCampoBomvOutro: TStringField;
    cdsCampoBomvtNF: TStringField;
    cdsCampoBomvtLiq: TStringField;
    cdsCampoBomnFat: TStringField;
    cdsCampoBomvOrig: TStringField;
    cdsCampoBomvDesc2: TStringField;
    cdsCampoBomvLiq: TStringField;
    cdsCampoBomnDup: TStringField;
    cdsCampoBomdVenc: TStringField;
    cdsCampoBomvDup: TStringField;
    cdsCampoBomxinf: TMemoField;
    cdsCampoBomdet: TDataSetField;
    mAuxiliar: TClientDataSet;
    mAuxiliarCab_CNPJ: TStringField;
    mAuxiliarCab_Opc_CalcImpCont: TStringField;
    mAuxiliarCab_Opc_CalcRet: TStringField;
    mAuxiliarDet_CNPJ_CPF: TStringField;
    mAuxiliarDet_Nome_Cliente: TStringField;
    mAuxiliarDet_Fantasia: TStringField;
    mAuxiliarDet_UF_Cli: TStringField;
    mAuxiliarDet_InscEstadual_Cli: TStringField;
    mAuxiliarDet_Endereco_Cli: TStringField;
    mAuxiliarDet_Bairro_Cli: TStringField;
    mAuxiliarDet_Cidade_Cli: TStringField;
    mAuxiliarDet_Cep_Cli: TStringField;
    mAuxiliarDet_CodMunicipio_SIAFI: TIntegerField;
    mAuxiliarDet_DDD_Cli: TIntegerField;
    mAuxiliarDet_Fone_Cli: TStringField;
    mAuxiliarDet_Conta_CTB_Cli: TStringField;
    mAuxiliarDet_Hist_CTB_Cli: TIntegerField;
    mAuxiliarDet_Conta_CTB_Forn: TStringField;
    mAuxiliarDet_Hist_CTB_Forn: TIntegerField;
    mAuxiliarDet_Produto_Rural: TStringField;
    mAuxiliarDet_Pais: TStringField;
    mAuxiliarDet_Num_End: TStringField;
    mAuxiliarDet_Complemento_Cli: TStringField;
    mAuxiliarDet_Suframa: TStringField;
    mAuxiliarDet_CodPais: TIntegerField;
    mAuxiliarDet_NatJuridica: TStringField;
    mAuxiliarDet_CodMunicipio_IBGE: TStringField;
    mAuxiliarNot_DtLancamento: TDateField;
    mAuxiliarNot_Nota_Inicial: TIntegerField;
    mAuxiliarNot_Nota_Final: TIntegerField;
    mAuxiliarNot_DtEmissao: TDateField;
    mAuxiliarNot_Modelo: TStringField;
    mAuxiliarNot_Serie: TStringField;
    mAuxiliarNot_SubSerie: TStringField;
    mAuxiliarNot_CFOP: TStringField;
    mAuxiliarNot_CFOP_Variacao: TIntegerField;
    mAuxiliarNot_Classificacao1: TIntegerField;
    mAuxiliarNot_Classificacao2: TIntegerField;
    mAuxiliarNot_CNPJCPF_Dest: TStringField;
    mAuxiliarNot_Vlr_Contabil: TFloatField;
    mAuxiliarNot_Base_Pis: TFloatField;
    mAuxiliarNot_Base_Cofins: TFloatField;
    mAuxiliarNot_Base_CSLL: TFloatField;
    mAuxiliarNot_Base_IRPJ: TFloatField;
    mAuxiliarNot_Base_ICMS_A: TFloatField;
    mAuxiliarNot_Base_ICMS_B: TFloatField;
    mAuxiliarNot_Base_ICMS_C: TFloatField;
    mAuxiliarNot_Base_ICMS_D: TFloatField;
    mAuxiliarNot_Aliq_ICMS_A: TFloatField;
    mAuxiliarNot_Aliq_ICMS_B: TFloatField;
    mAuxiliarNot_Aliq_ICMS_C: TFloatField;
    mAuxiliarNot_Aliq_ICMS_D: TFloatField;
    mAuxiliarNot_Vlr_ICMS_A: TFloatField;
    mAuxiliarNot_Vlr_ICMS_B: TFloatField;
    mAuxiliarNot_Vlr_ICMS_C: TFloatField;
    mAuxiliarNot_Vlr_ICMS_D: TFloatField;
    mAuxiliarNot_Isentas_ICMS: TFloatField;
    mAuxiliarNot_Outras_ICMS: TFloatField;
    mAuxiliarNot_Base_IPI: TFloatField;
    mAuxiliarNot_Vlr_IPI: TFloatField;
    mAuxiliarNot_Isentas_IPI: TFloatField;
    mAuxiliarNot_Outras_IPI: TFloatField;
    mAuxiliarNot_Vlr_SubstTributaria: TFloatField;
    mAuxiliarNot_Base_ST: TFloatField;
    mAuxiliarNot_ICMS_ST: TFloatField;
    mAuxiliarNot_Diferidas: TFloatField;
    mAuxiliarNot_Base_ISS: TFloatField;
    mAuxiliarNot_Aliq_ISS: TFloatField;
    mAuxiliarNot_Vlr_ISS: TFloatField;
    mAuxiliarNot_Isentas_ISS: TFloatField;
    mAuxiliarNot_IRRF_Retido: TFloatField;
    mAuxiliarNot_Obs_LivroFiscal: TStringField;
    mAuxiliarNot_Especie: TStringField;
    mAuxiliarNot_VendaAVista: TStringField;
    mAuxiliarNot_CFOP_ST: TStringField;
    mAuxiliarNot_Base_PisCofins_ST: TFloatField;
    mAuxiliarNot_Modalidade_Frete: TStringField;
    mAuxiliarNot_Pis_Retido: TFloatField;
    mAuxiliarNot_Cofins_Retido: TFloatField;
    mAuxiliarNot_CSLL_Retido: TFloatField;
    mAuxiliarNot_DtRecebimento: TDateField;
    mAuxiliarNot_Operacao_CTB: TIntegerField;
    mAuxiliarNot_Vlr_Materiais: TFloatField;
    mAuxiliarNot_Vlr_SubEmpreitada: TFloatField;
    mAuxiliarNot_Cod_Servico: TIntegerField;
    mAuxiliarNot_Pais: TStringField;
    mAuxiliarNot_Obs_LivroFiscal_2: TStringField;
    dsmAuxiliar: TDataSource;
    mCidade: TClientDataSet;
    dsmCidade: TDataSource;
    mCidadeNomeCidade: TStringField;
    mCidadeCodSIAFI: TStringField;
    mCidadeCodIBGE: TStringField;
    mCidadeUF: TStringField;
    Panel3: TPanel;
    Label3: TLabel;
    DirectoryEdit1: TDirectoryEdit;
    OpenDialog: TOpenDialog;
    Diretorio: TLabel;
    edtDiretorio: TDirectoryEdit;
    chkSub: TCheckBox;
    RzPageControl1: TRzPageControl;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    MemLista: TMemo;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    TabSheet3: TRzTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    TabSheet4: TRzTabSheet;
    RzGroupBox3: TRzGroupBox;
    SMDBGrid4: TSMDBGrid;
    Label1: TLabel;
    ComboBox1: TComboBox;
    cdsNFSe: TClientDataSet;
    cdsNFSeNumero: TIntegerField;
    cdsNFSeCodigoVerificacao: TStringField;
    cdsNFSeDataEmissao: TStringField;
    cdsNFSeIdentificacaoRps: TADTField;
    cdsNFSeIdentificacaoRpsNumero1: TIntegerField;
    cdsNFSeIdentificacaoRpsSerie: TStringField;
    cdsNFSeIdentificacaoRpsTipo: TIntegerField;
    cdsNFSeDataEmissaoRps: TStringField;
    cdsNFSeNaturezaOperacao: TIntegerField;
    cdsNFSeRegimeEspecialTributacao: TIntegerField;
    cdsNFSeOptanteSimplesNacional: TIntegerField;
    cdsNFSeIncentivadorCultural: TIntegerField;
    cdsNFSeCompetencia: TStringField;
    cdsNFSeOutrasInformacoes: TStringField;
    cdsNFSeServico: TADTField;
    cdsNFSeServicoValores: TADTField;
    cdsNFSeServicoValoresValorServicos: TFloatField;
    cdsNFSeServicoValoresValorDeducoes: TFloatField;
    cdsNFSeServicoValoresValorPis: TFloatField;
    cdsNFSeServicoValoresValorCofins: TFloatField;
    cdsNFSeServicoValoresValorInss: TFloatField;
    cdsNFSeServicoValoresValorIr: TFloatField;
    cdsNFSeServicoValoresValorCsll: TFloatField;
    cdsNFSeServicoValoresIssRetido: TIntegerField;
    cdsNFSeServicoValoresValorIss: TFloatField;
    cdsNFSeServicoValoresOutrasRetencoes: TFloatField;
    cdsNFSeServicoValoresBaseCalculo: TFloatField;
    cdsNFSeServicoValoresAliquota: TFloatField;
    cdsNFSeServicoValoresValorLiquidoNfse: TFloatField;
    cdsNFSeServicoValoresValorIssRetido: TFloatField;
    cdsNFSeServicoValoresDescontoCondicionado: TFloatField;
    cdsNFSeServicoValoresDescontoIncondicionado: TFloatField;
    cdsNFSeServicoItemListaServico: TStringField;
    cdsNFSeServicoCodigoCnae: TIntegerField;
    cdsNFSeServicoCodigoTributacaoMunicipio: TStringField;
    cdsNFSeServicoDiscriminacao: TStringField;
    cdsNFSeServicoMunicipioPrestacaoServico: TIntegerField;
    cdsNFSeNfseSubstituida: TIntegerField;
    cdsNFSeValorCredito: TFloatField;
    cdsNFSePrestadorServico: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestador: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpj: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCpf: TStringField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCnpj: TStringField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorInscricaoMunicipal: TStringField;
    cdsNFSePrestadorServicoRazaoSocial: TStringField;
    cdsNFSePrestadorServicoNomeFantasia: TStringField;
    cdsNFSePrestadorServicoEndereco: TADTField;
    cdsNFSePrestadorServicoEnderecoEndereco: TStringField;
    cdsNFSePrestadorServicoEnderecoNumero2: TStringField;
    cdsNFSePrestadorServicoEnderecoComplemento: TStringField;
    cdsNFSePrestadorServicoEnderecoBairro: TStringField;
    cdsNFSePrestadorServicoEnderecoCidade: TIntegerField;
    cdsNFSePrestadorServicoEnderecoEstado: TStringField;
    cdsNFSePrestadorServicoEnderecoCep: TIntegerField;
    cdsNFSePrestadorServicoContato: TADTField;
    cdsNFSePrestadorServicoContatoTelefone: TStringField;
    cdsNFSePrestadorServicoContatoEmail: TStringField;
    cdsNFSeTomadorServico: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomador: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpj: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf: TStringField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj: TStringField;
    cdsNFSeTomadorServicoIdentificacaoTomadorInscricaoMunicipal: TStringField;
    cdsNFSeTomadorServicoRazaoSocial: TStringField;
    cdsNFSeTomadorServicoEndereco: TADTField;
    cdsNFSeTomadorServicoEnderecoEndereco: TStringField;
    cdsNFSeTomadorServicoEnderecoNumero2: TStringField;
    cdsNFSeTomadorServicoEnderecoComplemento: TStringField;
    cdsNFSeTomadorServicoEnderecoBairro: TStringField;
    cdsNFSeTomadorServicoEnderecoCidade: TIntegerField;
    cdsNFSeTomadorServicoEnderecoEstado1: TStringField;
    cdsNFSeTomadorServicoEnderecoCep: TIntegerField;
    cdsNFSeTomadorServicoContato: TADTField;
    cdsNFSeTomadorServicoContatoTelefone: TStringField;
    cdsNFSeTomadorServicoContatoEmail: TStringField;
    cdsNFSeIntermediarioServico: TADTField;
    cdsNFSeIntermediarioServicoRazaoSocial: TStringField;
    cdsNFSeIntermediarioServicoCpfCnpj: TADTField;
    cdsNFSeIntermediarioServicoCpfCnpjCpf: TStringField;
    cdsNFSeIntermediarioServicoCpfCnpjCnpj: TStringField;
    cdsNFSeIntermediarioServicoInscricaoMunicipal: TStringField;
    cdsNFSeOrgaoGerador: TADTField;
    cdsNFSeOrgaoGeradorCodigoMunicipio: TIntegerField;
    cdsNFSeOrgaoGeradorUf: TStringField;
    dsNFSe: TDataSource;
    dbgNFSeToCds: TDBGrid;
    SMDBGrid3: TSMDBGrid;
    mAuxiliarCpl_ChaveNFSe: TStringField;
    mAuxiliarCpl_Vlr_Inss_Retido: TFloatField;
    mAuxiliarcpl_ISS_Retido: TStringField;
    cdsCampoBomTomS_CPF: TStringField;
    CheckBox1: TCheckBox;
    Label10: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label11: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    RzGroupBox1: TRzGroupBox;
    SMDBGrid2: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    SMDBGrid1: TSMDBGrid;
    Panel5: TPanel;
    Label2: TLabel;
    FilenameEdit1: TFilenameEdit;
    btnCarregaXML: TBitBtn;
    Panel2: TPanel;
    btnCarregarXML: TBitBtn;
    mAuxiliarcpl_Vlr_Desconto: TFloatField;
    TS_Nova_Geracao: TRzTabSheet;
    DBGrid: TDBGrid;
    OpenDialog1: TOpenDialog;
    dsNovaGeracao: TDataSource;
    Panel4: TPanel;
    Button2: TButton;
    Button1: TButton;
    Label12: TLabel;
    ckCampoBom_Novo: TCheckBox;
    btnNFSePOA: TButton;
    ckPis: TCheckBox;
    Label13: TLabel;
    ComboBox2: TComboBox;
    ckCofins: TCheckBox;
    ckCSLL: TCheckBox;
    ckIRPJ: TCheckBox;
    procedure btnCarregaXMLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzGroupBox3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCarregarXMLClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnNFSePOAClick(Sender: TObject);
  private
    { Private declarations }
    FCds: TClientDataSet;
    
    vGravar : Boolean;
    tArquivo : TextFile;
    sRegistro : String;
    vContador : Integer;

    vVlrContabil, vBasePIS, vBaseCofins, vBaseCSLL, vBaseIRPJ : Real;
    vBaseISS, vVlrISS, vVlrISSIsentas, vVlrIRRFISS : Real;

    procedure ListarArquivos(Diretorio: string; Sub:Boolean);

    function TemAtributo(Attr, Val: Integer): Boolean;

    procedure Carrega_XML(Arquivo : String);

    procedure Gerar_CampoBom;
    procedure Gerar_NH_SL;

    function Replace(Str, Ant, Novo: string): string;

    procedure prc_Montar_Header; //Tipo 0
    procedure prc_Montar_Emitente; //Tipo 4
    procedure prc_Montar_NotasFiscais; //Tipo 1
    procedure prc_Montar_DadosComplementares; //Tipo 5
    procedure prc_Montar_Trailler; //Tipo 3

    procedure prc_Gravar_mCidade(Cidade,UF,CODSIAFI : String);

    procedure NFSe_CarregarNotas(AXML: TStream; ACds: TClientDataSet);

    procedure Carregar_XML(Arquivo : String);
    procedure prc_Le_FCds;
    procedure prc_Gravar_mAuxiliar;
    procedure prc_Gravar_POA_mAuxiliar;

    procedure prc_Campo_Bom_Novo(Arquivo : String);
    procedure prc_Porto_Alegre(Arquivo : String);
    function PegaTimeZone: string;

  public
    { Public declarations }
  end;

var
  fTela: TfTela;

implementation

uses uUtilPadrao, UDMLancamentos_EBS, uXMLClientDataSet,
  uXMLClientDataSet_NFSe_CampoBom, uXMLClientDataSet_NFSe_NH, 
  uXMLClientDataSet_NFSe_PortoAlegre;

{$R *.dfm}

procedure TfTela.btnCarregaXMLClick(Sender: TObject);
begin
  mAuxiliar.EmptyDataSet;
  Carrega_XML(FilenameEdit1.FileName);
  if trim(cdsCampoBomdEmi.AsString) = '' then
    Carrega_XML(FilenameEdit1.FileName);

  if cdsCampoBom.IsEmpty then
    exit;

  Gerar_CampoBom;

  {cdsCampoBom.Close;
  cdsSaoLeopoldo.Close;
  cdsNovoHamburgo.Close;
  case ComboBox1.ItemIndex of
    0: begin
         SMDBGrid1.DataSource := dsCampoBom;
         XMLTransformProvider1.TransformRead.TransformationFile := 'campo_bom.xtr';
         cdsCampoBom.Open;
       end;
    1: begin
         SMDBGrid1.DataSource := dsNovoHamburgo;
         XMLTransformProvider1.TransformRead.TransformationFile := 'novo_hamburgo.xtr';
         cdsNovoHamburgo.Open;
       end;
    2: begin
         SMDBGrid1.DataSource := dsSaoLeopoldo;
         XMLTransformProvider1.TransformRead.TransformationFile := 'sao_leopoldo.xtr';
         cdsSaoLeopoldo.Open;
       end;
  end;
  XMLTransformProvider1.XMLDataFile := FilenameEdit1.FileName;}
end;

procedure TfTela.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex := 3;
end;

procedure TfTela.BitBtn2Click(Sender: TObject);
var
  vTexto : String;
begin
  if MessageDlg('Confirma a importação?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  cdsNFSe.Close;
  cdsNFSe.CreateDataSet;

  Memo1.Lines.Clear;
  mAuxiliar.EmptyDataSet;

  memLista.Lines.Clear;

  ListarArquivos(edtDiretorio.Text, chkSub.Checked);

//  if ComboBox1.ItemIndex > 0 then
  if (ComboBox1.ItemIndex in [1,2]) then
  begin
    cdsNFSe.First;
    while not cdsNFSe.Eof do
    begin
      Gerar_NH_SL;

      cdsNFSe.Next;
    end;

  end;

  ShowMessage('Arquivo ' + vTexto +  ' Gerado!');
end;

procedure TfTela.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
  i : Integer;
  vQtd_Geral, vQtd_Ok, vQtd_Erro : Integer;
begin
  vQtd_Geral := 0;
  vQtd_Ok    := 0;
  vQtd_Erro  := 0;

  Ret := FindFirst(Diretorio+'\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio+'\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
        vGravar := True;
        memLista.Lines.Add(Diretorio+'\'+F.Name);
        vQtd_Geral := vQtd_Geral + 1;
        try
          i := 0;
          while i < 3 do
          begin
            i := i + 1;
            Carrega_XML(Diretorio+'\'+F.Name);
            if (ComboBox1.ItemIndex = 3) and not(FCds.IsEmpty) then
              i := 3
            else if (ComboBox1.ItemIndex = 0) and (ckCampoBom_Novo.Checked) and not(FCds.IsEmpty) then
              i := 3
            else
            if (ComboBox1.ItemIndex = 0) and not(cdsCampoBom.IsEmpty) then
              i := 3
            else
//            if (ComboBox1.ItemIndex > 0) and not(cdsNFSe.IsEmpty) then
            if (ComboBox1.ItemIndex in [1,2]) and not(cdsNFSe.IsEmpty) then
              i := 3;
          end;
          if (ComboBox1.ItemIndex = 3) then
            vGravar := not(FCds.IsEmpty)
          else if (ComboBox1.ItemIndex = 0) and (ckCampoBom_Novo.Checked) then
            vGravar := not(FCds.IsEmpty)
          else
          if (ComboBox1.ItemIndex = 0) and not(ckCampoBom_Novo.Checked) then
            vGravar := not(cdsCampoBom.IsEmpty)
          else
            vGravar := not(cdsNFSe.IsEmpty);
        except
          vGravar := False;
        end;
        if not vGravar then
        begin
          vQtd_Erro := vQtd_Erro + 1;
          Memo1.Lines.Add(Diretorio+'\'+F.Name);
        end
        else
        begin
          vQtd_Ok := vQtd_Ok + 1;
          if ComboBox1.ItemIndex = 0 then
          begin
            if ckCampoBom_Novo.Checked then

            else
              Gerar_CampoBom;
          end;
        end;
      end;
        Ret := FindNext(F);
    end;
  finally
    FindClose(F);
  end;

  Label7.Caption := FormatFloat('0',vQtd_Erro);
  Label8.Caption := FormatFloat('0',vQtd_Ok);
  Label9.Caption := FormatFloat('0',vQtd_Geral);
end;

procedure TfTela.Carrega_XML(Arquivo: String);
var
  sXML : TMemoryStream;
  sList: TStringList;
begin
  cdsCampoBom.Close;
//  if ComboBox1.ItemIndex > 0 then
  if (ComboBox1.ItemIndex in [1,2]) then
  begin
    sList := TStringList.Create;
    sXML  := TMemoryStream.Create;

    try
      sList.LoadFromFile(Arquivo);
      sList.SaveToStream(sXML);

      try
        NFSe_CarregarNotas(sXML, cdsNFSe);
        vGravar := True;
      except
        vGravar := False;
      end;

    finally
      FreeAndNil(sXML);
      FreeAndNil(sList);
    end;

  end
  else if (ComboBox1.ItemIndex = 0) then
  begin
    cdsCampoBom.Close;
    try
      if ckCampoBom_Novo.Checked then
        prc_Campo_Bom_Novo(Arquivo)
      else
      begin
        XMLTransformProvider1.XMLDataFile := Arquivo;
        SMDBGrid1.DataSource := dsCampoBom;
        XMLTransformProvider1.TransformRead.TransformationFile := 'campo_bom.xtr';
        cdsCampoBom.Open;
        XMLTransformProvider1.XMLDataFile := Arquivo;
      end;
      vGravar := True;
    except
      on e: Exception do
      begin
        vGravar := False;
        raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
      end;
    end;
  end
  else
  begin
    try
      prc_Porto_Alegre(Arquivo);
    except
      on e: Exception do
      begin
        vGravar := False;
        raise Exception.Create('Erro ao abrir o arquivo: ' + #13 + e.Message);
      end;
    end;
  end;
end;

function TfTela.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfTela.Gerar_CampoBom;
var
  vAux : String;
  vVlrAux : Real;
  vVlrDesconto : Real;
begin
  mAuxiliar.Insert;

  mAuxiliarCab_CNPJ.AsString                := cdsCampoBomemit_CNPJ.AsString;
  //mAuxiliarCab_Opc_CalcImpCont.AsString     := '1'; //0=Cálc. de PIS COFINS é pego dos campos    1=Feito automático
  mAuxiliarCab_Opc_CalcImpCont.AsString     := IntToStr(ComboBox2.ItemIndex);
  mAuxiliarCab_Opc_CalcRet.AsString         := '1';
  //Detalhe
  if trim(cdsCampoBomTomS_CNPJ.AsString) <> '' then
    mAuxiliarDet_CNPJ_CPF.AsString            := cdsCampoBomTomS_CNPJ.AsString
  else
    mAuxiliarDet_CNPJ_CPF.AsString            := cdsCampoBomTomS_CPF.AsString;
  mAuxiliarDet_Nome_Cliente.AsString        := cdsCampoBomTomS_xNome.AsString;
  mAuxiliarDet_Fantasia.AsString            := '';
  mAuxiliarDet_UF_Cli.AsString              := cdsCampoBomender_UF.AsString;
  mAuxiliarDet_InscEstadual_Cli.AsString    := cdsCampoBomTomS_IE.AsString;
  mAuxiliarDet_Endereco_Cli.AsString        := cdsCampoBomender_xLgr.AsString;
  mAuxiliarDet_Num_End.AsString             := cdsCampoBomender_nro.AsString;
  mAuxiliarDet_Bairro_Cli.AsString          := cdsCampoBomender_xBairro.AsString;
  mAuxiliarDet_Cidade_Cli.AsString          := cdsCampoBomender_xMun.AsString;
  mAuxiliarDet_Cep_Cli.AsString             := cdsCampoBomender_CEP.AsString;
  mAuxiliarDet_CodMunicipio_IBGE.AsString   := cdsCampoBomender_cMun.AsString;

  vAux := TirarAcento(mAuxiliarDet_Cidade_Cli.AsString);
  vAux := UpperCase(vAux);
  if mCidade.Locate('NomeCidade',vAux,[loCaseInsensitive]) then
    mAuxiliarDet_CodMunicipio_SIAFI.AsString := mCidadeCodSIAFI.AsString
  else
    mAuxiliarDet_CodMunicipio_SIAFI.AsInteger := 0;
  mAuxiliarDet_DDD_Cli.AsInteger            := 0;
  mAuxiliarDet_Fone_Cli.AsString            := cdsCampoBomfone.AsString;
  mAuxiliarDet_Conta_CTB_Cli.AsString       := '0';
  mAuxiliarDet_Hist_CTB_Cli.AsInteger       := 0;
  mAuxiliarDet_Conta_CTB_Forn.AsString      := '0';
  mAuxiliarDet_Hist_CTB_Forn.AsInteger      := 0;
  mAuxiliarDet_Produto_Rural.AsString       := 'N';
  mAuxiliarDet_Pais.AsString                := cdsCampoBomender_xPais.AsString;
  mAuxiliarDet_Complemento_Cli.AsString     := cdsCampoBomender_xCpl.AsString;
  mAuxiliarDet_Suframa.AsString             := '';
  //mAuxiliarDet_CodPais.AsInteger            := cdsCampoBomender_cPais.AsInteger;
  mAuxiliarDet_CodPais.AsInteger            := 1058;
  mAuxiliarDet_NatJuridica.AsString         := '1';
  mAuxiliarNot_DtLancamento.AsDateTime      := Date;
  mAuxiliarNot_Nota_Inicial.AsInteger       := cdsCampoBomnNFSe.AsInteger;
  mAuxiliarNot_Nota_Final.AsInteger         := cdsCampoBomnNFSe.AsInteger;
  if trim(cdsCampoBomdEmi.AsString) <> '' then
  begin
    vAux                                    := copy(cdsCampoBomdEmi.AsString,9,2) + '/' + copy(cdsCampoBomdEmi.AsString,6,2) + '/' + copy(cdsCampoBomdEmi.AsString,1,4);
    mAuxiliarNot_DtEmissao.AsDateTime       := StrToDate(vAux);
  end;
  mAuxiliarNot_DtLancamento.AsDateTime      := mAuxiliarNot_DtEmissao.AsDateTime;
  mAuxiliarNot_Modelo.AsString              := cdsCampoBommod.AsString;
  mAuxiliarNot_Serie.AsString               := cdsCampoBomserie.AsString;
  mAuxiliarNot_SubSerie.AsString            := '';
  mAuxiliarNot_CFOP.AsString                := '0';
  mAuxiliarNot_CFOP_Variacao.AsInteger      := 0;
  mAuxiliarNot_Classificacao1.AsInteger     := 0;
  mAuxiliarNot_Classificacao2.AsInteger     := 0;
  if trim(cdsCampoBomTomS_CNPJ.AsString) <> '' then
    mAuxiliarNot_CNPJCPF_Dest.AsString        := cdsCampoBomTomS_CNPJ.AsString
  else
    mAuxiliarNot_CNPJCPF_Dest.AsString        := cdsCampoBomTomS_CPF.AsString;

  //mAuxiliarNot_Vlr_Contabil.AsFloat         := cdsCampoBomvServ.AsFloat;
  vAux := Replace(cdsCampoBomvServ.AsString,'.',',');
  mAuxiliarNot_Vlr_Contabil.AsFloat         := StrToFloat(FormatFloat('0.00',StrToFloat(vAux)));
  if ckPis.Checked then
    mAuxiliarNot_Base_Pis.AsFloat           := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_Pis.AsFloat           := 0;
  //Feito para Porto Alegre   06/07/2015
  if ckCofins.Checked then
    mAuxiliarNot_Base_Cofins.AsFloat        := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_Cofins.AsFloat        := StrToFloat(FormatFloat('0.00',0));

  if ckCSLL.Checked then
    mAuxiliarNot_Base_CSLL.AsFloat          := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_CSLL.AsFloat          := 0;
  if ckIRPJ.Checked then
    mAuxiliarNot_Base_IRPJ.AsFloat          := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_IRPJ.AsFloat          := 0;
  {if CheckBox1.Checked then
  begin
    if not CheckBox2.Checked then
      mAuxiliarNot_Base_Pis.AsFloat           := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat));
    mAuxiliarNot_Base_Cofins.AsFloat        := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat));
    if CurrencyEdit1.Value > 0 then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.00',(mAuxiliarNot_Vlr_Contabil.AsFloat * CurrencyEdit1.Value / 100)));
      mAuxiliarNot_Base_IRPJ.AsFloat        := StrToFloat(FormatFloat('0.00',vVlrAux));
    end;
    if CurrencyEdit2.Value > 0 then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.00',(mAuxiliarNot_Vlr_Contabil.AsFloat * CurrencyEdit2.Value / 100)));
      mAuxiliarNot_Base_CSLL.AsFloat        := StrToFloat(FormatFloat('0.00',vVlrAux));
    end;
  end;}
  mAuxiliarNot_Base_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Vlr_ICMS_A.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_B.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_C.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_D.AsFloat           := 0;
  mAuxiliarNot_Isentas_ICMS.AsFloat         := 0;
  mAuxiliarNot_Outras_ICMS.AsFloat          := 0;
  mAuxiliarNot_Base_IPI.AsFloat             := 0;
  mAuxiliarNot_Vlr_IPI.AsFloat              := 0;
  mAuxiliarNot_Isentas_IPI.AsFloat          := 0;
  mAuxiliarNot_Outras_IPI.AsFloat           := 0;
  mAuxiliarNot_Vlr_SubstTributaria.AsFloat  := 0;
  mAuxiliarNot_Base_ST.AsFloat              := 0;
  mAuxiliarNot_ICMS_ST.AsFloat              := 0;
  mAuxiliarNot_Diferidas.AsFloat            := 0;
  //mAuxiliarNot_Base_ISS.AsFloat             := StrToFloat(cdsCampoBomvBCISS.AsString);
  vAux := Replace(cdsCampoBomvBCISS.AsString,'.',',');
  if vAux = '0,00' then
    vAux := Replace(cdsCampoBomvServ.AsString,'.',',');
  mAuxiliarNot_Base_ISS.AsFloat             := StrToFloat(vAux);

  //mAuxiliarNot_Aliq_ISS.AsFloat             := cdsCBomDet.FieldByName('pISS').AsFloat;
  vAux := Replace(cdsCBomDet.FieldByName('pISS').AsString,'.',',');
  mAuxiliarNot_Aliq_ISS.AsFloat             := StrToFloat(vAux);

  //mAuxiliarNot_Vlr_ISS.AsFloat              := StrToFloat(cdsCampoBomvISS.AsString);
  vAux := Replace(cdsCampoBomvISS.AsString,'.',',');
  mAuxiliarNot_Vlr_ISS.AsFloat              := StrToFloat(vAux);

  mAuxiliarNot_Isentas_ISS.AsFloat          := 0;
  mAuxiliarNot_IRRF_Retido.AsFloat          := 0;
  mAuxiliarNot_Obs_LivroFiscal.AsString     := '';
  mAuxiliarNot_Especie.AsString             := 'NFSE';
  mAuxiliarNot_VendaAVista.AsString         := 'N';
  mAuxiliarNot_CFOP_ST.AsString             := '0';
  mAuxiliarNot_Base_PisCofins_ST.AsFloat    := 0;
  mAuxiliarNot_Modalidade_Frete.AsString    := '0';
  mAuxiliarNot_Pis_Retido.AsFloat           := 0;
  mAuxiliarNot_Cofins_Retido.AsFloat        := 0;
  mAuxiliarNot_CSLL_Retido.AsFloat          := 0;
  mAuxiliarNot_DtRecebimento.AsDateTime     := Date;
  mAuxiliarNot_Operacao_CTB.AsInteger       := 0;
  mAuxiliarNot_Vlr_Materiais.AsFloat        := 0;
  mAuxiliarNot_Vlr_SubEmpreitada.AsFloat    := 0;
  mAuxiliarNot_Cod_Servico.AsInteger        := 1;
  mAuxiliarNot_Pais.AsString                := cdsCampoBomend_xPais.AsString;
  mAuxiliarNot_Obs_LivroFiscal_2.AsString   := '';
  vVlrAux      := 0;
  vVlrDesconto := 0;
  cdsCBomDet.First;
  while not cdsCBomDet.Eof do
  begin
    if trim(cdsCBomDet.FieldByName('vRetINSS').AsString) <> '' then
    begin
      //vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + cdsCBomDet.FieldByName('vRetINSS').AsFloat));
      vAux    := Replace(cdsCBomDet.FieldByName('vRetINSS').AsString,'.',',');
      vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + StrToFloat(vAux)));
    end;
    if trim(cdsCBomDet.FieldByName('vDesc').AsString) <> '' then
    begin
      //vVlrDesconto := StrToFloat(FormatFloat('0.00',vVlrDesconto + cdsCBomDet.FieldByName('vDesc').AsFloat));
      vAux         := Replace(cdsCBomDet.FieldByName('vDesc').AsString,'.',',');
      vVlrDesconto := StrToFloat(FormatFloat('0.00',vVlrDesconto + StrToFloat(vAux)));
    end;
    cdsCBomDet.Next;
  end;
  if StrToFloat(FormatFloat('0.00',vVlrDesconto)) > 0 then
    mAuxiliarNot_Vlr_Contabil.AsFloat  := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat - vVlrDesconto));
  mAuxiliarCpl_Vlr_Inss_Retido.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  mAuxiliarcpl_Vlr_Desconto.AsFloat    := StrToFloat(FormatFloat('0.00',vVlrDesconto));
  mAuxiliarCpl_ChaveNFSe.AsString      := cdsCampoBomrefNF.AsString;
  mAuxiliarcpl_ISS_Retido.AsString     := 'N';
  mAuxiliar.Post;
end;

function TfTela.Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

procedure TfTela.BitBtn1Click(Sender: TObject);
var
  vNomeArq : String;
begin
//Não usar  = ver com Cleomar
  if trim(DirectoryEdit1.Text) = '' then
  begin
    ShowMessage('*** Não foi informado o local para gravar o arquivo!');
    exit;
  end;

  sRegistro := '';
  vNomeArq  := DirectoryEdit1.Text;
  if Copy(vNomeArq,(Length(vNomeArq)),1) <> '\' then
    vNomeArq := vNomeArq + '\';

  AssignFile(tArquivo,vNomeArq + 'NOTASAI.TXT');
  ReWrite(tArquivo);

  vContador      := 0;
  vVlrContabil   := 0;
  vBasePIS       := 0;
  vBaseCofins    := 0;
  vBaseCSLL      := 0;
  vBaseIRPJ      := 0;
  vBaseISS       := 0;
  vVlrISS        := 0;
  vVlrISSIsentas := 0;
  vVlrIRRFISS    := 0;

  prc_Montar_Header;

  mAuxiliar.First;
  while not mAuxiliar.Eof do
  begin
    vVlrContabil   := vVlrContabil + mAuxiliarNot_Vlr_Contabil.AsFloat;
    vBasePIS       := vBasePIS + mAuxiliarNot_Base_Pis.AsFloat;
    vBaseCofins    := vBaseCofins + mAuxiliarNot_Base_Cofins.AsFloat;
    vBaseCSLL      := vBaseCSLL + mAuxiliarNot_Base_CSLL.AsFloat; 
    vBaseIRPJ      := vBaseIRPJ + mAuxiliarNot_Base_IRPJ.AsFloat; 
    vBaseISS       := vBaseISS + mAuxiliarNot_Base_ISS.AsFloat;
    vVlrISS        := vVlrISS + mAuxiliarNot_Vlr_ISS.AsFloat; 
    vVlrISSIsentas := vVlrISSIsentas + mAuxiliarNot_Isentas_ISS.AsFloat; 
    vVlrIRRFISS    := vVlrIRRFISS + mAuxiliarNot_IRRF_Retido.AsFloat;

    prc_Montar_Emitente; //Tipo 4
    prc_Montar_NotasFiscais; //Tipo 1
    prc_Montar_DadosComplementares; //Tipo 5

    mAuxiliar.Next;
  end;

  prc_Montar_Trailler;

  CloseFile(tArquivo);

  ShowMessage('*** Final da geração!');
end;

procedure TfTela.prc_Montar_Header;
var
  Texto1, Texto2 : String;
  ano,mes,dia: Word;
begin
  //Tipo Registro   Tamanho 1 - 1 a 1
  Texto1 := '0';
  //Data de Geração   Tamanho 8 - 2 a 9
  DecodeDate(Date,ano,mes,dia);
  Texto1 := Texto1 + Monta_Numero(IntToStr(Dia),2);
  Texto1 := Texto1 + Monta_Numero(IntToStr(Mes),2);
  Texto1 := Texto1 + Monta_Numero(IntToStr(Ano),4);
  //CNPJ da empresa   Tamanho 18 - 10 a 27
  Texto1 := Texto1 + Monta_Numero(copy(mAuxiliarCab_CNPJ.AsString,1,2),2) + '.';
  Texto1 := Texto1 + Monta_Numero(copy(mAuxiliarCab_CNPJ.AsString,3,3),3) + '.';
  Texto1 := Texto1 + Monta_Numero(copy(mAuxiliarCab_CNPJ.AsString,6,3),3) + '/';
  Texto1 := Texto1 + Monta_Numero(copy(mAuxiliarCab_CNPJ.AsString,9,4),4) + '-';
  Texto1 := Texto1 + Monta_Numero(copy(mAuxiliarCab_CNPJ.AsString,13,2),2);
  //Opção Bases    Tamanho 1 - 28 a 28
  Texto1 := Texto1 + Monta_Numero(mAuxiliarCab_Opc_CalcImpCont.AsString,1);
  //Origem     Tamanho 3 - 29 a 31
  Texto1 := Texto1 + Formatar_Campo('',3);
  //Opção Retenção Tamanho 1 - 28 a 28
  Texto1 := Texto1 + Monta_Numero(mAuxiliarCab_Opc_CalcRet.AsString,1);
  //Brancos Tamanho 443 - 33 a 474
  Texto1 := Texto1 + Formatar_Campo('',443);
  //Uso  Tamanho 20 - 475 a 494
  Texto1 := Texto1 + Formatar_Campo('',20);
  //Sequência   Tamanho 6 - 495 a 500
  vContador := vContador + 1;
  Texto1    := Texto1 + Monta_Numero(IntToStr(vContador),6);
  Writeln(tArquivo,texto1);
end;

procedure TfTela.prc_Montar_Emitente;
var
  texto1, texto2 : String;
begin
  //Tipo Registro   Tamanho 1 - 1 a 1
  Texto1 := '4';
  //CNPJ do Cliente   Tamanho 18 - 2 a 19
  texto2 := '';
  if Length(mAuxiliarDet_CNPJ_CPF.AsString) > 11 then
  begin
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,1,2),2) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,3,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,6,3),3) + '/';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,9,4),4) + '-';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,13,2),2);
  end
  else
  begin
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,1,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,4,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,7,3),3) + '-';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarDet_CNPJ_CPF.AsString,10,2),2);
  end;
  texto1 := texto1 + Formatar_Campo(texto2,18);
  //Razão Social   Tamanho 40 - 20 a 59
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Nome_Cliente.AsString,40);
  //Fantasia   Tamanho 20 - 60 a 79
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Fantasia.AsString,20);
  //Estado   Tamanho 2 - 80 a 81
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_UF_Cli.AsString,2);
  //Inscrição   Tamanho 20 - 82 a 101
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_InscEstadual_Cli.AsString,20);
  //Endereço   Tamanho 40 - 102 a 141
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Endereco_Cli.AsString,40);
  //Bairro   Tamanho 20 - 142 a 161
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Bairro_Cli.AsString,20);
  //Cidade   Tamanho 20 - 162 a 181
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Cidade_Cli.AsString,20);
  //CEP   Tamanho 8 - 182 a 189
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_Cep_Cli.AsString,8);
  //Código Municipio SIAFI   Tamanho 4 - 190 a 193
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_CodMunicipio_SIAFI.AsString,4);
  //DDD    Tamanho 3 - 194 a 196 
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_DDD_Cli.AsString,3);
  //Fone   Tamanho 10 - 197 a 206
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_Fone_Cli.AsString,10);
  //Conta Cliente   Tamanho 6 - 207 a 212
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_Conta_CTB_Cli.AsString,6);
  //Histórico Cliente   Tamanho 3 - 213 a 215
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_Hist_CTB_Cli.AsString,3);
  //Conta Fornecedor   Tamanho 6 - 216 a 221
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_Conta_CTB_Forn.AsString,6);
  //Histórico Cliente   Tamanho 3 - 222 a 224
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_Hist_CTB_Forn.AsString,3);
  //Produto rural    Tamanho 1 - 225 a 225
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Produto_Rural.AsString,1);
  //Identificação Exterior    Tamanho 18 - 226 a 243
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Pais.AsString,18);
  //Número do endereço    Tamanho 5 - 244 a 248
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_Num_End.AsString,5);
  //Complemento    Tamanho 20 - 249 a 268
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Complemento_Cli.AsString,20);
  //Suframa  Tamanho 9 - 269 a 277
  texto1 := texto1 + Formatar_Campo(mAuxiliarDet_Suframa.AsString,9);
  //Código do Pais  Tamanho 5 - 278 a 282
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_CodPais.AsString,5);
  //Natureza juridica   Tamanho 1 - 283 a 283
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_NatJuridica.AsString,1);
  //Municipio IBGE   Tamanho 7 - 284 a 290
  texto1 := texto1 + Monta_Numero(mAuxiliarDet_CodMunicipio_IBGE.AsString,7);
  //Brancos   Tamanho 199 - 291 a 489
  texto1 := texto1 + Formatar_Campo('',199);
  //Uso da EBS   Tamanho 5 - 490 a 494
  texto1 := texto1 + Formatar_Campo('',5);
  //Número do Registro   Tamanho 6 - 495 a 500
  vContador := vContador + 1;
  Texto1    := Texto1 + Monta_Numero(IntToStr(vContador),6);
  Writeln(tArquivo,texto1);
end;

procedure TfTela.prc_Montar_NotasFiscais;
var
  texto1, texto2 : String;
begin
  //Tipo Registro   Tamanho 1 - 1 a 1
  Texto1 := '1';
  //Data Lançamento   Tamanho 8 - 2 a 9
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_DtLancamento.AsString,8);
  //Número Inicial   Tamanho 6 - 10 a 15
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Nota_Inicial.AsString,6);
  //Número Final   Tamanho 6 - 16 a 21
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Nota_Final.AsString,6);
  //Data de Emissão   Tamanho 8 - 22 a 29
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_DtEmissao.AsString,8);
  //Brancos   Tamanho 3 - 30 a 32
  Texto1 := Texto1 + Formatar_Campo('',3);
  //Modelo   Tamanho 2 - 33 a 34
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Modelo.AsString,2);
  //Série   Tamanho 3 - 35 a 37
  Texto1 := Texto1 + Formatar_Campo(mAuxiliarNot_Serie.AsString,3);
  //Sub-Série   Tamanho 3 - 38 a 40
  Texto1 := Texto1 + Formatar_Campo(mAuxiliarNot_SubSerie.AsString,3);
  //Natureza Operação (CFOP)   Tamanho 4 - 41 a 44
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_CFOP.AsString,4);
  //Variação Natureza Operação (CFOP)   Tamanho 2 - 45 a 46
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_CFOP_Variacao.AsString,2);
  //Classificação 1 para integração contabil   Tamanho 2 - 47 a 48
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Classificacao1.AsString,2);
  //Classificação 2 para integração contabil   Tamanho 2 - 49 a 50
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Classificacao2.AsString,2);
  //CNPJ/CPF do destinatário   Tamanho 18 - 51 a 68
  texto2 := '';
  if Length(mAuxiliarNot_CNPJCPF_Dest.AsString) > 11 then
  begin
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,1,2),2) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,3,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,6,3),3) + '/';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,9,4),4) + '-';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,13,2),2);
  end
  else
  begin
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,1,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,4,3),3) + '.';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,7,3),3) + '-';
    Texto2 := Texto2 + Monta_Numero(copy(mAuxiliarNot_CNPJCPF_Dest.AsString,10,2),2);
  end;
  texto1 := texto1 + Formatar_Campo(texto2,18);
  //Valor Contábil   Tamanho 12 - 69 a 80
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat),12);
  //Base PIS   Tamanho 12 - 81 a 92
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_Pis.AsFloat),12);
  //Base Cofins   Tamanho 12 - 93 a 104
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_Cofins.AsFloat),12);
  //Base CSLL   Tamanho 12 - 105 a 116
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_CSLL.AsFloat),12);
  //Base IRPJ   Tamanho 12 - 117 a 128
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_IRPJ.AsFloat),12);
  //Brancos  Tamanho 8 - 129 a 136
  Texto1 := Texto1 + Formatar_Campo('',8);
  //Base ICMS A  Tamanho 12 - 137 a 148
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_ICMS_A.AsFloat),12);
  //Aliquota ICMS A  Tamanho 4 - 149 a 152
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Aliq_ICMS_A.AsFloat),4);
  //Valor ICMS A  Tamanho 12 - 153 a 164
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_ICMS_A.AsFloat),12);
  //Base ICMS B  Tamanho 12 - 165 a 176
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_ICMS_B.AsFloat),12);
  //Aliquota ICMS B  Tamanho 4 - 177 a 180
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Aliq_ICMS_B.AsFloat),4);
  //Valor ICMS B  Tamanho 12 - 181 a 192
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_ICMS_B.AsFloat),12);
  //Base ICMS C  Tamanho 12 - 193 a 204
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_ICMS_C.AsFloat),12);
  //Aliquota ICMS C  Tamanho 4 - 205 a 208
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Aliq_ICMS_C.AsFloat),4);
  //Valor ICMS C  Tamanho 12 - 209 a 220
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_ICMS_C.AsFloat),12);
  //Base ICMS D  Tamanho 12 - 221 a 232
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_ICMS_D.AsFloat),12);
  //Aliquota ICMS D  Tamanho 4 - 233 a 236
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Aliq_ICMS_D.AsFloat),4);
  //Valor ICMS D  Tamanho 12 - 237 a 248
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_ICMS_D.AsFloat),12);
  //Valor de isentas de ICMS   Tamanho 12 - 249 a 260
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Isentas_ICMS.AsFloat),12);
  //Valor de outras de ICMS   Tamanho 12 - 261 a 272
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Outras_ICMS.AsFloat),12);
  //Base IPI   Tamanho 12 - 273 a 284
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_IPI.AsFloat),12);
  //Valor IPI   Tamanho 12 - 285 a 296
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_IPI.AsFloat),12);
  //Valor de isentas de IPI   Tamanho 12 - 297 a 308
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Isentas_IPI.AsFloat),12);
  //Valor de outras de IPI   Tamanho 12 - 309 a 320
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Outras_ICMS.AsFloat),12);
  //Valor de mercadorias com substituição tributária    Tamanho 12 - 321 a 332
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_SubstTributaria.AsFloat),12);
  //Base da substituição tributária    Tamanho 12 - 333 a 344
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_ST.AsFloat),12);
  //ICMS da substituição tributária    Tamanho 12 - 345 a 356
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_ICMS_ST.AsFloat),12);
  //Valor de mercadorias Diferidas    Tamanho 12 - 357 a 368
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Diferidas.AsFloat),12);
  //Base ISS   Tamanho 12 - 369 a 380
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_ISS.AsFloat),12);
  //Aliquota ISS   Tamanho 4 - 381 a 384
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Aliq_ISS.AsFloat),4);
  //Valor ISS   Tamanho 12 - 385 a 396
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_ISS.AsFloat),12);
  //Valor Isentas ISS   Tamanho 12 - 397 a 408
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Isentas_ISS.AsFloat),12);
  //Valor IRRF Retido  Tamanho 12 - 409 a 420
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_IRRF_Retido.AsFloat),12);
  //Observações   Tamanho 50 - 421 a 470
  Texto1 := Texto1 + Formatar_Campo(mAuxiliarNot_Obs_LivroFiscal.AsString,50);
  //Espécie  Tamanho 5 - 471 a 475
  Texto1 := Texto1 + Formatar_Campo(mAuxiliarNot_Especie.AsString,5);
  //Venda a Vista  Tamanho 1 - 476 a 476
  Texto1 := Texto1 + Formatar_Campo(mAuxiliarNot_VendaAVista.AsString,1);
  //Natureza Operação ST (CFOP) Tamanho 4 - 477 a 480
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_CFOP_ST.AsString,4);
  //Base Pis/Cofins ST   Tamanho 8 - 481 a 488
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Base_PisCofins_ST.AsFloat),8);
  //Modalidade do frete  Tamanho 1 - 489 a 489
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Modalidade_Frete.AsString,1);
  //Pis Retido  Tamanho 12 - 490 a 501
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Pis_Retido.AsFloat),12);
  //Cofins Retido  Tamanho 12 - 502 a 513
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Cofins_Retido.AsFloat),12);
  //CSLL Retido  Tamanho 12 - 514 a 525
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_CSLL_Retido.AsFloat),12);
  //Data de recebimento  Tamanho 8 - 526 a 533
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_DtRecebimento.AsString,8);
  //Operação contábil  Tamanho 4 - 534 a 537
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Operacao_CTB.AsString,4);
  //Valor de materiais na prestação de serviços  Tamanho 12 - 538 a 549
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_Materiais.AsFloat),12);
  //Valor de subempreitada  Tamanho 12 - 550 a 561
  Texto1 := Texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarNot_Vlr_SubEmpreitada.AsFloat),12);
  //Código do serviço  Tamanho 4 - 562 a 565
  Texto1 := Texto1 + Monta_Numero(mAuxiliarNot_Cod_Servico.AsString,4);
  //CliFor  Tamanho 6 - 566 a 571
  Texto1 := Texto1 + Monta_Numero('0',6);
  //Identificação Exterior   Tamanho 18 - 572 a 589
  Texto1 := Texto1 + Formatar_Campo(mAuxiliarNot_Pais.AsString,18);
  //Uso da EBS   Tamanho 5 - 590 a 594
  Texto1 := Texto1 + Formatar_Campo('',5);
  //Sequencia   Tamanho 6 - 595 a 600
  vContador := vContador + 1;
  Texto1    := Texto1 + Monta_Numero(IntToStr(vContador),6);
  //Número da nota inicial 2   Tamanho 9 - 601 a 609
  Texto1    := Texto1 + Monta_Numero('0',9);
  //Número da nota final 2   Tamanho 9 - 610 a 618
  Texto1    := Texto1 + Monta_Numero('0',9);
  //Observação 2     Tamanho 50 - 619 a 669
  Texto1    := Texto1 + Formatar_Campo(mAuxiliarNot_Obs_LivroFiscal_2.AsString,50);
  Writeln(tArquivo,texto1);
end;

procedure TfTela.prc_Montar_Trailler;
var
  texto1, texto2 : String;
begin
  //Tipo Registro   Tamanho 1 - 1 a 1
  Texto1 := '3';
  //Valor contábil   Tamanho 12 - 2 a 13
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vVlrContabil),12);
  //Base Pis   Tamanho 12 - 14 a 25
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vBasePIS),12);
  //Base Cofins  Tamanho 12 - 26 a 37
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vBaseCofins),12);
  //Base CSLL  Tamanho 12 - 38 a 49
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vBaseCSLL),12);
  //Base IRPJ  Tamanho 12 - 50 a 61
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vBaseIRPJ),12);
  //Base ICMS A  Tamanho 12 - 62 a 73
  Texto1 := texto1 + Monta_Numero('0',12);
  //Valor ICMS A  Tamanho 12 - 74 a 85
  Texto1 := texto1 + Monta_Numero('0',12);
  //Base ICMS B  Tamanho 12 - 86 a 97
  Texto1 := texto1 + Monta_Numero('0',12);
  //Valor ICMS B  Tamanho 12 - 98 a 109
  Texto1 := texto1 + Monta_Numero('0',12);
  //Base ICMS C  Tamanho 12 - 110 a 121
  Texto1 := texto1 + Monta_Numero('0',12);
  //Valor ICMS C  Tamanho 12 - 122 a 133
  Texto1 := texto1 + Monta_Numero('0',12);
  //Base ICMS D  Tamanho 12 - 134 a 145
  Texto1 := texto1 + Monta_Numero('0',12);
  //Valor ICMS D  Tamanho 12 - 146 a 157
  Texto1 := texto1 + Monta_Numero('0',12);
  //Isentas ICMS Tamanho 12 - 158 a 169
  Texto1 := texto1 + Monta_Numero('0',12);
  //Outras ICMS  Tamanho 12 - 170 a 181
  Texto1 := texto1 + Monta_Numero('0',12);
  //Base IPI  Tamanho 12 - 182 a 193
  Texto1 := texto1 + Monta_Numero('0',12);
  //Valor IPI  Tamanho 12 - 194 a 205
  Texto1 := texto1 + Monta_Numero('0',12);
  //Isentas IPI  Tamanho 12 - 206 a 217
  Texto1 := texto1 + Monta_Numero('0',12);
  //Outras IPI  Tamanho 12 - 218 a 229
  Texto1 := texto1 + Monta_Numero('0',12);
  //Mercadorias ST  Tamanho 12 - 230 a 241
  Texto1 := texto1 + Monta_Numero('0',12);
  //Base ST  Tamanho 12 - 242 a 253
  Texto1 := texto1 + Monta_Numero('0',12);
  //ICMS ST  Tamanho 12 - 254 a 265
  Texto1 := texto1 + Monta_Numero('0',12);
  //Diferidas  Tamanho 12 - 266 a 277
  Texto1 := texto1 + Monta_Numero('0',12);
  //Base ISS  Tamanho 12 - 278 a 289
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vBaseISS),12);
  //Valor ISS  Tamanho 12 - 290 a 301
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vVlrISS),12);
  //Isentas ISS  Tamanho 12 - 302 a 313
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vVlrISSIsentas),12);
  //IRRF ISS  Tamanho 12 - 314 a 325
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',vVlrIRRFISS),12);
  //Brancos  Tamanho 169 - 326 a 494
  Texto1 := texto1 + Formatar_Campo('',169);
  //Sequência   Tamanho 6 - 495 a 500
  vContador := vContador + 1;
  Texto1    := Texto1 + Monta_Numero(IntToStr(vContador),6);
  Writeln(tArquivo,texto1);
end;


procedure TfTela.RzGroupBox3Exit(Sender: TObject);
begin
  if mCidade.State in [dsEdit,dsInsert] then
    mCidade.Post;
end;

procedure TfTela.FormShow(Sender: TObject);
begin
  //TabSheet4.TabVisible := False;
  TabSheet5.TabVisible := False;
  TabSheet6.TabVisible := False;

  prc_Gravar_mCidade('CAMPO BOM','RS','8577');
  prc_Gravar_mCidade('NOVO HAMBURGO','RS','8771');
  prc_Gravar_mCidade('SAO LEOPOLDO','RS','8877');
  prc_Gravar_mCidade('SAPIRANGA','RS','8899');
  prc_Gravar_mCidade('ESTEIO','RS','8651');
  prc_Gravar_mCidade('DOIS IRMAOS','RS','8625');
  prc_Gravar_mCidade('ESTANCIA VELHA','RS','8649');
  prc_Gravar_mCidade('NOVA HARTZ','RS','7379');
  prc_Gravar_mCidade('SAPUCAIA DO SUL','RS','8901');
  prc_Gravar_mCidade('IVOTI','RS','8717');
  prc_Gravar_mCidade('CANOAS','RS','8589');
  prc_Gravar_mCidade('PORTO ALEGRE','RS','8801');
  prc_Gravar_mCidade('ALVORADA','RS','8511');
  prc_Gravar_mCidade('VIAMAO','RS','8963');
  prc_Gravar_mCidade('PAROBE','RS','9825');
  prc_Gravar_mCidade('IGREJINHA','RS','8703');
  prc_Gravar_mCidade('TAQUARA','RS','8927');
  prc_Gravar_mCidade('ARARICA','RS','0952');
  prc_Gravar_mCidade('CACHOEIRINHA','RS','8561');
  prc_Gravar_mCidade('ACEGUA','RS','1118');
  prc_Gravar_mCidade('AGUDO','RS','8501');
  prc_Gravar_mCidade('ALEGRETE','RS','8507');
  prc_Gravar_mCidade('ALTO FELIZ','RS','6045');
  prc_Gravar_mCidade('ALVORADA','RS','8511');
  prc_Gravar_mCidade('AMETISTA DO SUL','RS','5969');
  prc_Gravar_mCidade('ANTA GORDA','RS','8513');
  prc_Gravar_mCidade('ANTONIO PRADO','RS','8515');
  prc_Gravar_mCidade('ARAMBARE','RS','5779');
  prc_Gravar_mCidade('ARROIO DO MEIO','RS','1122');
  prc_Gravar_mCidade('ARROIO DO SAL','RS','8489');
  prc_Gravar_mCidade('ARROIO DOS RATOS','RS','8521');
  prc_Gravar_mCidade('CACHOEIRA DO SUL','RS','8559');
  prc_Gravar_mCidade('CAMAQUA','RS','8569');
  prc_Gravar_mCidade('BOM PRINCIPIO','RS','9823');
  prc_Gravar_mCidade('BOM RETIRO DO SUL','RS','8547');
  prc_Gravar_mCidade('BUTIA','RS','8553');
  prc_Gravar_mCidade('CAMBARA DO SUL','RS','8571');
  prc_Gravar_mCidade('CANDELARIA','RS','8581');
  prc_Gravar_mCidade('CANELA','RS','8585');
  prc_Gravar_mCidade('CAPAO DA CANOA','RS','8915');
  prc_Gravar_mCidade('CAPELA DE SANTANA','RS','8443');
  prc_Gravar_mCidade('CAXIAS DO SUL','RS','8599');
  prc_Gravar_mCidade('CHARQUEADAS','RS','8693');
  prc_Gravar_mCidade('ELDORADO DO SUL','RS','8423');
  prc_Gravar_mCidade('ESTRELA','RS','8653');
  prc_Gravar_mCidade('FELIZ','RS','8659');
  prc_Gravar_mCidade('FLORES DA CUNHA','RS','8661');
  prc_Gravar_mCidade('GLORINHA','RS','8407');
  prc_Gravar_mCidade('GRAMADO','RS','8681');
  prc_Gravar_mCidade('GRAVATAI','RS','8683');
  prc_Gravar_mCidade('GUAIBA','RS','8685');
  prc_Gravar_mCidade('GUAPORE','RS','8687');
  prc_Gravar_mCidade('HARMONIA','RS','8403');
  prc_Gravar_mCidade('IGREJINHA','RS','8703');
  prc_Gravar_mCidade('ROLANTE','RS','8823');
  prc_Gravar_mCidade('SANTO ANTONIO DA PATRULHA','RS','8855');
  prc_Gravar_mCidade('SAO FRANCISCO DE PAULA','RS','8867');
  prc_Gravar_mCidade('SAO VENDELINO','RS','7293');
  prc_Gravar_mCidade('TAPES','RS','8925');
  prc_Gravar_mCidade('CRUZ ALTA','RS','8619');
end;

procedure TfTela.prc_Gravar_mCidade(Cidade,UF,CODSIAFI : String);
begin
  mCidade.Insert;
  mCidadeNomeCidade.AsString := Cidade;
  mCidadeUF.AsString         := UF;
  mCidadeCodSIAFI.AsString   := CODSIAFI;
  mCidadeCodIBGE.AsString    := '';
  mCidade.Post;
end;

procedure TfTela.Gerar_NH_SL;
var
  vAux : String;
begin
  mAuxiliar.Insert;

  mAuxiliarCab_CNPJ.AsString                := cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCnpj.AsString;
  mAuxiliarCab_Opc_CalcImpCont.AsString     := IntToStr(ComboBox2.ItemIndex);
  mAuxiliarCab_Opc_CalcRet.AsString         := '1';
  //Detalhe
  if trim(cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj.AsString) <> '' then
    mAuxiliarDet_CNPJ_CPF.AsString          := cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj.AsString
  else
    mAuxiliarDet_CNPJ_CPF.AsString          :=  cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf.AsString;
  mAuxiliarDet_Nome_Cliente.AsString        := cdsNFSeTomadorServicoRazaoSocial.AsString;
  mAuxiliarDet_Fantasia.AsString            := '';
  mAuxiliarDet_UF_Cli.AsString              := cdsNFSeTomadorServicoEnderecoEstado1.AsString;
  mAuxiliarDet_InscEstadual_Cli.AsString    := '';
  mAuxiliarDet_Endereco_Cli.AsString        := cdsNFSeTomadorServicoEnderecoEndereco.AsString;
  mAuxiliarDet_Num_End.AsString             := cdsNFSeTomadorServicoEnderecoNumero2.AsString;
  mAuxiliarDet_Bairro_Cli.AsString          := cdsNFSeTomadorServicoEnderecoBairro.AsString;
  mAuxiliarDet_Cidade_Cli.AsString          := '';
  mAuxiliarDet_Cep_Cli.AsString             := cdsNFSeTomadorServicoEnderecoCep.AsString;
  if DMLancamentos_EBS.cdsMunicipioG.Locate('cd_municipio_concla',cdsNFSeTomadorServicoEnderecoCidade.AsString,[loCaseInsensitive]) then
  begin
    mAuxiliarDet_Cidade_Cli.AsString         := DMLancamentos_EBS.cdsMunicipioGnome.AsString;
    mAuxiliarDet_CodMunicipio_SIAFI.AsString := DMLancamentos_EBS.cdsMunicipioGcd_municipio_ibge.AsString;
  end;
  mAuxiliarDet_DDD_Cli.AsInteger            := 0;
  mAuxiliarDet_Fone_Cli.AsString            := cdsNFSeTomadorServicoContatoTelefone.AsString;
  mAuxiliarDet_Conta_CTB_Cli.AsString       := '0';
  mAuxiliarDet_Hist_CTB_Cli.AsInteger       := 0;
  mAuxiliarDet_Conta_CTB_Forn.AsString      := '0';
  mAuxiliarDet_Hist_CTB_Forn.AsInteger      := 0;
  mAuxiliarDet_Produto_Rural.AsString       := 'N';
  mAuxiliarDet_Pais.AsString                := 'BRASIL';
  mAuxiliarDet_Complemento_Cli.AsString     := cdsNFSeTomadorServicoEnderecoComplemento.AsString;
  mAuxiliarDet_Suframa.AsString             := '';
  mAuxiliarDet_CodPais.AsInteger            := 1058;
  mAuxiliarDet_NatJuridica.AsString         := '1';
  mAuxiliarDet_CodMunicipio_IBGE.AsString   := cdsNFSeTomadorServicoEnderecoCidade.AsString;
  mAuxiliarNot_Nota_Inicial.AsInteger       := cdsNFSeNumero.AsInteger;
  mAuxiliarNot_Nota_Final.AsInteger         := cdsNFSeNumero.AsInteger;
  if trim(cdsNFSeDataEmissao.AsString) <> '' then
  begin
    vAux                                    := copy(cdsNFSeDataEmissao.AsString,9,2) + '/' + copy(cdsNFSeDataEmissao.AsString,6,2) + '/' + copy(cdsNFSeDataEmissao.AsString,1,4);
    mAuxiliarNot_DtEmissao.AsDateTime       := StrToDate(vAux);
  end;
  mAuxiliarNot_DtLancamento.AsDateTime      := mAuxiliarNot_DtEmissao.AsDateTime;
  mAuxiliarNot_Modelo.AsString              := '1';
  mAuxiliarNot_Serie.AsString               := 'U';
  mAuxiliarNot_SubSerie.AsString            := '';
  mAuxiliarNot_CFOP.AsString                := '0';
  mAuxiliarNot_CFOP_Variacao.AsInteger      := 0;
  mAuxiliarNot_Classificacao1.AsInteger     := 0;
  mAuxiliarNot_Classificacao2.AsInteger     := 0;
  if trim(cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj.AsString) <> '' then
    mAuxiliarNot_CNPJCPF_Dest.AsString      := cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj.AsString
  else
    mAuxiliarNot_CNPJCPF_Dest.AsString      := cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf.AsString;
  //vAux := Replace(cdsNFSeServicoValoresValorServicos.AsString,'.',',');
  //mAuxiliarNot_Vlr_Contabil.AsFloat         := StrToFloat(vAux);
  mAuxiliarNot_Vlr_Contabil.AsFloat         := cdsNFSeServicoValoresValorServicos.AsFloat;
  if StrToFloat(FormatFloat('0.00',cdsNFSeServicoValoresValorPis.AsFloat)) > 0 then
    mAuxiliarNot_Base_Pis.AsFloat           := cdsNFSeServicoValoresValorServicos.AsFloat;
  if StrToFloat(FormatFloat('0.00',cdsNFSeServicoValoresValorCofins.AsFloat)) > 0 then
    mAuxiliarNot_Base_Cofins.AsFloat        := cdsNFSeServicoValoresValorServicos.AsFloat;
  if StrToFloat(FormatFloat('0.00',cdsNFSeServicoValoresValorCsll.AsFloat)) > 0 then
    mAuxiliarNot_Base_CSLL.AsFloat          := cdsNFSeServicoValoresValorServicos.AsFloat;
  if StrToFloat(FormatFloat('0.00',cdsNFSeServicoValoresValorIr.AsFloat)) > 0 then
    mAuxiliarNot_Base_IRPJ.AsFloat          := cdsNFSeServicoValoresValorServicos.AsFloat;
  mAuxiliarNot_Base_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Vlr_ICMS_A.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_B.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_C.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_D.AsFloat           := 0;
  mAuxiliarNot_Isentas_ICMS.AsFloat         := 0;
  mAuxiliarNot_Outras_ICMS.AsFloat          := 0;
  mAuxiliarNot_Base_IPI.AsFloat             := 0;
  mAuxiliarNot_Vlr_IPI.AsFloat              := 0;
  mAuxiliarNot_Isentas_IPI.AsFloat          := 0;
  mAuxiliarNot_Outras_IPI.AsFloat           := 0;
  mAuxiliarNot_Vlr_SubstTributaria.AsFloat  := 0;
  mAuxiliarNot_Base_ST.AsFloat              := 0;
  mAuxiliarNot_ICMS_ST.AsFloat              := 0;
  mAuxiliarNot_Diferidas.AsFloat            := 0;
  mAuxiliarNot_Base_ISS.AsFloat             := cdsNFSeServicoValoresBaseCalculo.AsFloat;
  mAuxiliarNot_Aliq_ISS.AsFloat             := cdsNFSeServicoValoresAliquota.AsFloat;
  mAuxiliarNot_Vlr_ISS.AsFloat              := cdsNFSeServicoValoresValorIss.AsFloat;
  mAuxiliarNot_Isentas_ISS.AsFloat          := 0;
  mAuxiliarNot_IRRF_Retido.AsFloat          := 0;
  mAuxiliarNot_Obs_LivroFiscal.AsString     := '';
  mAuxiliarNot_Especie.AsString             := 'NFSE';
  mAuxiliarNot_VendaAVista.AsString         := 'N';
  mAuxiliarNot_CFOP_ST.AsString             := '0';
  mAuxiliarNot_Base_PisCofins_ST.AsFloat    := 0;
  mAuxiliarNot_Modalidade_Frete.AsString    := '0';
  mAuxiliarNot_Pis_Retido.AsFloat           := 0;
  mAuxiliarNot_Cofins_Retido.AsFloat        := 0;
  mAuxiliarNot_CSLL_Retido.AsFloat          := 0;
  mAuxiliarNot_DtRecebimento.AsDateTime     := Date;
  mAuxiliarNot_Operacao_CTB.AsInteger       := 0;
  mAuxiliarNot_Vlr_Materiais.AsFloat        := 0;
  mAuxiliarNot_Vlr_SubEmpreitada.AsFloat    := 0;
  mAuxiliarNot_Cod_Servico.AsInteger        := 1;
  mAuxiliarNot_Pais.AsString                := 'BRASIL';
  mAuxiliarNot_Obs_LivroFiscal_2.AsString   := '';
  mAuxiliarCpl_ChaveNFSe.AsString           := '';
  mAuxiliarCpl_Vlr_Inss_Retido.AsFloat      := cdsNFSeServicoValoresValorInss.AsFloat;
  mAuxiliarcpl_Vlr_Desconto.AsFloat         := StrToFloat(FormatFloat('0.00',cdsNFSeServicoValoresDescontoCondicionado.AsFloat + cdsNFSeServicoValoresDescontoIncondicionado.AsFloat));
  if cdsNFSeServicoValoresIssRetido.AsInteger = 1 then
    mAuxiliarcpl_ISS_Retido.AsString        := 'S'
  else
    mAuxiliarcpl_ISS_Retido.AsString        := 'N';
  mAuxiliar.Post;
end;

procedure TfTela.btnCarregarXMLClick(Sender: TObject);
var
  sXML: TMemoryStream;
  sList: TStringList;
begin
  if OpenDialog.Execute then
  begin
    sList := TStringList.Create;
    sXML  := TMemoryStream.Create;

    try
      sList.LoadFromFile(OpenDialog.FileName);
      sList.SaveToStream(sXML);

      cdsNFSe.Close;
      cdsNFSe.CreateDataSet;

      NFSe_CarregarNotas(sXML, cdsNFSe);
    finally
      FreeAndNil(sXML);
      FreeAndNil(sList);
    end;
  end;
end;

procedure TfTela.NFSe_CarregarNotas(AXML: TStream; ACds: TClientDataSet);

  procedure Processar_Nodes(AFields: TFields; ACompNfse: IXMLNode; APrefixo: string);
  var
    I: Integer;
    sCampo: string;
    xNode: IXMLNode;
    sThousandSeparator: Char;
    sDecimalSeparator: Char;
  begin
    for I := 0 to AFields.Count - 1 do
    begin
      sCampo := APrefixo + AFields[I].FieldName;
      if (sCampo[Length(sCampo)] in ['0'..'9']) then
        sCampo := Copy(sCampo, 1, Length(sCampo) - 1);

      xNode := ACompNfse.ChildNodes.FindNode(sCampo);
      if (xNode <> nil) then
      begin
        if (AFields[I] is TADTField) then
          Processar_Nodes(TADTField(AFields[I]).Fields, xNode, APrefixo)
        else if (AFields[I] is TIntegerField) then
          AFields[I].AsInteger := StrToIntDef(xNode.Text, 0)
        else if (AFields[I] is TFloatField) then
        begin
          sThousandSeparator := ThousandSeparator;
          sDecimalSeparator  := DecimalSeparator;
          try
            ThousandSeparator := ',';
            DecimalSeparator  := '.';
            AFields[I].AsFloat := StrToFloatDef(xNode.Text, 0);
          finally
            ThousandSeparator := sThousandSeparator;
            DecimalSeparator  := sDecimalSeparator;
          end;
        end
        else
          AFields[I].AsString := xNode.Text;
      end;
    end;
  end;

var
  xDoc: IXMLDocument;
  sXML: TStringStream;
  xNode, xAtt, xLista, xCompNfse: IXMLNode;
  cXML, sPrefixo: String;
  I: Integer;
begin
  sXML := TStringStream.Create('');
  try
    TMemoryStream(AXml).Position := 0;
    sXML.CopyFrom(AXml, AXml.Size);
    cXML := sXML.DataString;
  finally
    FreeAndNil(sXML);
  end;

  cXML := AnsiReplaceStr(cXML, 'utf-8', 'ISO-8859-1');
  if (cXML[1] = #239) then
    cXML := Copy(cXML, 4, Length(cXML)-3);
  xDoc := LoadXMLData(cXML);

  // Primeiro node
  xNode := xDoc.ChildNodes[1];

  if (xNode <> nil) then
  begin
    xAtt := xNode.AttributeNodes.FindNode('xmlns:tc');
    if (xAtt <> nil) then
      sPrefixo := 'tc:'
    else
      sPrefixo := '';

    // Verifica se existe lista
    xLista := xNode.ChildNodes.FindNode('ListaNfse');
    if (xLista <> nil) then
    begin
      // Percorre a lista
      for I := 0 to xLista.ChildNodes.Count - 1 do
      begin
        ACds.Append;
        xCompNfse := xLista.ChildNodes[I];
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(ACds.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        ACds.Post;
      end;
    end
    else
    begin
      // Procura o CompNfse
      xCompNfse := xNode.ChildNodes.FindNode('CompNfse');
      if (xCompNfse <> nil) then
      begin
        ACds.Append;
        // CompNfse.Nfse.InfNfse
        Processar_Nodes(ACds.Fields, xCompNfse.ChildNodes[0].ChildNodes[0], sPrefixo);
        ACds.Post;
      end;
    end;
  end;

end;

procedure TfTela.Carregar_XML(Arquivo: String);
begin

end;

procedure TfTela.prc_Montar_DadosComplementares;
var
  texto1, texto2 : String;
begin
  //Tipo Registro   Tamanho 1 - 1 a 1
  Texto1 := '5';
  //Valor Mercadorias   Tamanho 12 - 2 a 13
  Texto1 := Texto1 + Monta_Numero('0',12);
  //Desconto   Tamanho 12 - 14 a 25
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarcpl_Vlr_Desconto.AsFloat),12);
  //Frete   Tamanho 12 - 26 a 37
  Texto1 := Texto1 + Monta_Numero('0',12);
  //Despesas   Tamanho 12 - 38 a 49
  Texto1 := Texto1 + Monta_Numero('0',12);
  //Seguro   Tamanho 12 - 50 a 61
  Texto1 := Texto1 + Monta_Numero('0',12);
  //Peso Bruto   Tamanho 8 - 62 a 69
  Texto1 := Texto1 + Monta_Numero('0',8);
  //Peso Líquido   Tamanho 8 - 70 a 77
  Texto1 := Texto1 + Monta_Numero('0',8);
  //CNPJ/CPF Transportador   Tamanho 18 - 78 a 95
  Texto1 := Texto1 + Monta_Numero('0',18);
  //Meio de Transporte   Tamanho 1 - 96 a 96
  Texto1 := Texto1 + Monta_Numero('0',1);
  //Placa   Tamanho 15 - 97 a 111
  Texto1 := Texto1 + Formatar_Campo('',15);
  //Volumes   Tamanho 6 - 112 a 117
  Texto1 := Texto1 + Monta_Numero('0',6);
  //Espécie   Tamanho 10 - 118 a 127
  Texto1 := Texto1 + Formatar_Campo('',10);
  //Número RE   Tamanho 12 - 128 a 139
  Texto1 := Texto1 + Monta_Numero('0',12);
  //Número de Despacho Tamanho 11 - 140 a 150
  Texto1 := Texto1 + Monta_Numero('0',11);
  //País Destino   Tamanho 6 - 151 a 156
  Texto1 := Texto1 + Monta_Numero('0',6);
  //Moeda    Tamanho 6 - 157 a 162
  Texto1 := Texto1 + Monta_Numero('0',6);
  //Data Despacho    Tamanho 8 - 163 a 170
  Texto1 := Texto1 + Monta_Numero('0',8);
  //Valor Despacho    Tamanho 12 - 171 a 182
  Texto1 := Texto1 + Monta_Numero('0',12);
  //CNPJ/CPF Remetente    Tamanho 18 - 183 a 200
  Texto1 := Texto1 + Formatar_Campo('',18);
  //UF Destino     Tamanho 2 - 201 a 202
  Texto1 := Texto1 + Formatar_Campo('',2);
  //Identificação Exterior Remetente   Tamanho 18 - 203 a 220
  Texto1 := Texto1 + Formatar_Campo('',18);
  //Redespacho     Tamanho 1 - 221 a 221
  Texto1 := Texto1 + Formatar_Campo('N',1);
  //INSS Retido    Tamanho 12 - 222 a 233
  Texto1 := texto1 + Monta_Numero(FormatFloat('0.00',mAuxiliarCpl_Vlr_Inss_Retido.AsFloat),12);
  //FUNRURAL    Tamanho 12 - 234 a 245
  Texto1 := texto1 + Monta_Numero('0',12);
  //Chave NFe    Tamanho 44 - 246 a 289
  Texto1 := texto1 + Formatar_Campo(mAuxiliarCpl_ChaveNFSe.AsString,44);
  //ISS Retido    Tamanho 1 - 290 a 290
  Texto1 := texto1 + Formatar_Campo(mAuxiliarcpl_ISS_Retido.AsString,1);
  //ISS Devido Prestação  Tamanho 1 - 291 a 291
  Texto1 := texto1 + Formatar_Campo('N',1);
  //UF Prestação  Tamanho 2 - 292 a 293
  Texto1 := texto1 + Formatar_Campo('',2);
  //Municipio Prestação  Tamanho 7 - 294 a 300
  Texto1 := texto1 + Monta_Numero('',7);
  //UF Origem  Tamanho 2 - 301 a 302
  Texto1 := texto1 + Formatar_Campo('',2);
  //Municipio Origem  Tamanho 7 - 303 a 309
  Texto1 := texto1 + Monta_Numero('',7);
  //ICMS-ST Retido Antecipadamente  Tamanho 1 - 310 a 310
  Texto1 := texto1 + Formatar_Campo('N',1);
  //Inscrição Estadual Destinatário  Tamanho 20 - 311 a 330
  Texto1 := texto1 + Formatar_Campo('',20);
  //Tipo de Assinante Telecom Tamanho 1 - 331 a 331
  Texto1 := texto1 + Monta_Numero('0',1);
  //Tipo de Utilização Telecom Tamanho 1 - 332 a 332
  Texto1 := texto1 + Monta_Numero('0',1);
  //Número Terminal Telecom  Tamanho 10 - 333 a 342
  Texto1 := texto1 + Formatar_Campo('',10);
  //Número Fatura Telecom   Tamanho 9 - 343 a 351
  Texto1 := texto1 + Monta_Numero('0',9);
  //Consignatário  Tamanho 18 - 352 a 369
  Texto1 := texto1 + Formatar_Campo('',18);
  //Brancos  Tamanho 119 - 370 a 489
  Texto1 := texto1 + Formatar_Campo('',119);
  //Uso EBS  Tamanho 5 - 490 a 494
  Texto1 := texto1 + Formatar_Campo('',5);
  //Sequência   Tamanho 6 - 495 a 500
  vContador := vContador + 1;
  Texto1    := Texto1 + Monta_Numero(IntToStr(vContador),6);
  Writeln(tArquivo,texto1);
end;

procedure TfTela.CheckBox1Click(Sender: TObject);
begin
  Label10.Visible := CheckBox1.Checked;
  Label11.Visible := CheckBox1.Checked;
  CurrencyEdit1.Visible := CheckBox1.Checked;
  CurrencyEdit2.Visible := CheckBox1.Checked;
end;

procedure TfTela.Button1Click(Sender: TObject);
var
  NFSeCB: TXMLClientDataset;
begin
  if OpenDialog.Execute then
  begin
    if Assigned(FCds) then
      FreeAndNil(FCds);

    NFSeCB := TXMLClientDataset_NFSE_CampoBom.Create;
    try
      FCds := NFSeCB.CriarClientDataSet(OpenDialog.FileName);
      dsNovaGeracao.DataSet := FCds;
    finally
      FreeAndNil(NFSeCB);
    end;
  end;
end;

procedure TfTela.Button2Click(Sender: TObject);
begin
  Label12.Visible := False;
  mAuxiliar.EmptyDataSet;
  if OpenDialog.Execute then
    prc_Campo_Bom_Novo(OpenDialog.FileName);
end;

procedure TfTela.prc_Le_FCds;
begin
  FCds.First;
  while not FCds.Eof do
  begin
    if (ComboBox1.ItemIndex = 0) then
      prc_Gravar_mAuxiliar
    else
      prc_Gravar_POA_mAuxiliar;
    FCds.Next;
  end;
end;

procedure TfTela.prc_Gravar_mAuxiliar;
var
  vAux : String;
  vVlrAux : Real;
  vVlrDesconto : Real;
  Det: TDataSetField;
begin
  mAuxiliar.Insert;

  mAuxiliarCab_CNPJ.AsString                := FCds.FieldByName('emit.CNPJ').AsString;
  mAuxiliarCab_Opc_CalcImpCont.AsString     := IntToStr(ComboBox2.ItemIndex);
  mAuxiliarCab_Opc_CalcRet.AsString         := '1';

  if FCds.FieldByName('ID.nNFS-e').AsString = '14236' then
    ShowMessage('aqui');
    
  //Detalhe
  if trim(FCds.FieldByName('TomS.CNPJ').AsString) <> '' then
    mAuxiliarDet_CNPJ_CPF.AsString          := FCds.FieldByName('TomS.CNPJ').AsString
  else
  begin
    mAuxiliarDet_CNPJ_CPF.AsString          := FCds.FieldByName('TomS.CPF').AsString;
    if mAuxiliarDet_CNPJ_CPF.AsString = '00000000000' then
      mAuxiliarDet_CNPJ_CPF.AsString := '11111111111111';
  end;
  mAuxiliarDet_Nome_Cliente.AsString        := FCds.FieldByName('TomS.xNome').AsString;
  mAuxiliarDet_Fantasia.AsString            := '';
  mAuxiliarDet_UF_Cli.AsString              := FCds.FieldByName('TomS.ender.UF').AsString;
  mAuxiliarDet_InscEstadual_Cli.AsString    := FCds.FieldByName('TomS.IE').AsString;
  mAuxiliarDet_Endereco_Cli.AsString        := FCds.FieldByName('TomS.ender.xLgr').AsString;
  mAuxiliarDet_Num_End.AsString             := FCds.FieldByName('TomS.ender.nro').AsString;
  mAuxiliarDet_Bairro_Cli.AsString          := FCds.FieldByName('TomS.ender.xBairro').AsString;
  mAuxiliarDet_Cidade_Cli.AsString          := FCds.FieldByName('TomS.ender.xMun').AsString;
  mAuxiliarDet_Cep_Cli.AsString             := FCds.FieldByName('TomS.ender.CEP').AsString;
  mAuxiliarDet_CodMunicipio_IBGE.AsString   := FCds.FieldByName('TomS.ender.cMun').AsString;

  vAux := TirarAcento(mAuxiliarDet_Cidade_Cli.AsString);
  vAux := UpperCase(vAux);
  if mCidade.Locate('NomeCidade',vAux,[loCaseInsensitive]) then
    mAuxiliarDet_CodMunicipio_SIAFI.AsString := mCidadeCodSIAFI.AsString
  else
    mAuxiliarDet_CodMunicipio_SIAFI.AsInteger := 0;
  mAuxiliarDet_DDD_Cli.AsInteger            := 0;
  mAuxiliarDet_Fone_Cli.AsString            := FCds.FieldByName('TomS.ender.fone').AsString;
  mAuxiliarDet_Conta_CTB_Cli.AsString       := '0';
  mAuxiliarDet_Hist_CTB_Cli.AsInteger       := 0;
  mAuxiliarDet_Conta_CTB_Forn.AsString      := '0';
  mAuxiliarDet_Hist_CTB_Forn.AsInteger      := 0;
  mAuxiliarDet_Produto_Rural.AsString       := 'N';
  mAuxiliarDet_Pais.AsString                := FCds.FieldByName('TomS.ender.xPais').AsString;
  mAuxiliarDet_Complemento_Cli.AsString     := FCds.FieldByName('TomS.ender.xCpl').AsString;
  mAuxiliarDet_Suframa.AsString             := '';
  //mAuxiliarDet_CodPais.AsInteger            := cdsCampoBomender_cPais.AsInteger;
  mAuxiliarDet_CodPais.AsInteger            := 1058;
  mAuxiliarDet_NatJuridica.AsString         := '1';
  mAuxiliarNot_DtLancamento.AsDateTime      := Date;
  mAuxiliarNot_Nota_Inicial.AsString        := FCds.FieldByName('ID.nNFS-e').AsString;
  mAuxiliarNot_Nota_Final.AsString          := FCds.FieldByName('ID.nNFS-e').AsString;
  mAuxiliarNot_DtEmissao.AsDateTime         := FCds.FieldByName('ID.dEmi').AsDateTime;
  mAuxiliarNot_DtLancamento.AsDateTime      := mAuxiliarNot_DtEmissao.AsDateTime;
  mAuxiliarNot_Modelo.AsString              := FCds.FieldByName('ID.mod').AsString;
  mAuxiliarNot_Serie.AsString               := FCds.FieldByName('ID.serie').AsString;
  mAuxiliarNot_SubSerie.AsString            := '';
  mAuxiliarNot_CFOP.AsString                := '0';
  mAuxiliarNot_CFOP_Variacao.AsInteger      := 0;
  mAuxiliarNot_Classificacao1.AsInteger     := 0;
  mAuxiliarNot_Classificacao2.AsInteger     := 0;
  if trim(FCds.FieldByName('TomS.CNPJ').AsString) <> '' then
    mAuxiliarNot_CNPJCPF_Dest.AsString        := FCds.FieldByName('TomS.CNPJ').AsString
  else
  begin
    mAuxiliarNot_CNPJCPF_Dest.AsString        := trim(FCds.FieldByName('TomS.CPF').AsString);
    //if mAuxiliarNot_CNPJCPF_Dest.AsString = '00000000000' then
      //mAuxiliarNot_CNPJCPF_Dest.AsString := '11111111111111';
  end;
  vAux := Replace(trim(FCds.FieldByName('total.vServ').AsString),'.',',');
  mAuxiliarNot_Vlr_Contabil.AsFloat       := StrToFloat(FormatFloat('0.00',StrToFloat(vAux)));
  mAuxiliarNot_Base_Pis.AsFloat           := 0;
  mAuxiliarNot_Base_Cofins.AsFloat        := 0;
  mAuxiliarNot_Base_CSLL.AsFloat          := 0;
  mAuxiliarNot_Base_IRPJ.AsFloat          := 0;
  if CheckBox1.Checked then
  begin
    mAuxiliarNot_Base_Pis.AsFloat         := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat));
    mAuxiliarNot_Base_Cofins.AsFloat      := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat));
    if CurrencyEdit1.Value > 0 then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.00',(mAuxiliarNot_Vlr_Contabil.AsFloat * CurrencyEdit1.Value / 100)));
      mAuxiliarNot_Base_IRPJ.AsFloat        := StrToFloat(FormatFloat('0.00',vVlrAux));
    end;
    if CurrencyEdit2.Value > 0 then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.00',(mAuxiliarNot_Vlr_Contabil.AsFloat * CurrencyEdit2.Value / 100)));
      mAuxiliarNot_Base_CSLL.AsFloat        := StrToFloat(FormatFloat('0.00',vVlrAux));
    end;
  end;
  mAuxiliarNot_Base_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Vlr_ICMS_A.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_B.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_C.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_D.AsFloat           := 0;
  mAuxiliarNot_Isentas_ICMS.AsFloat         := 0;
  mAuxiliarNot_Outras_ICMS.AsFloat          := 0;
  mAuxiliarNot_Base_IPI.AsFloat             := 0;
  mAuxiliarNot_Vlr_IPI.AsFloat              := 0;
  mAuxiliarNot_Isentas_IPI.AsFloat          := 0;
  mAuxiliarNot_Outras_IPI.AsFloat           := 0;
  mAuxiliarNot_Vlr_SubstTributaria.AsFloat  := 0;
  mAuxiliarNot_Base_ST.AsFloat              := 0;
  mAuxiliarNot_ICMS_ST.AsFloat              := 0;
  mAuxiliarNot_Diferidas.AsFloat            := 0;

  vAux := Replace(FCds.FieldByName('total.ISS.vBCISS').AsString,'.',',');
  if (vAux = '0,00') or (trim(vAux) = '') or (trim(vAux) = '0') then
    vAux := Replace(FCds.FieldByName('total.vServ').AsString,'.',',');
  mAuxiliarNot_Base_ISS.AsFloat             := StrToFloat(vAux);

  //vAux := Replace(Det.NestedDataSet.FieldByName('serv.pISS').AsString,'.',',');
  Det :=  FCds.FieldByName('det') as TDataSetField;
  Det.NestedDataSet.First;
  while not Det.NestedDataSet.Eof do
  begin
    vAux := Replace(Det.NestedDataSet.FieldByName('serv.pISS').AsString,'.',',');
    Det.NestedDataSet.Next;
  end;
  mAuxiliarNot_Aliq_ISS.AsFloat             := StrToFloat(vAux);

  vAux := Replace(FCds.FieldByName('total.ISS.vISS').AsString,'.',',');
  mAuxiliarNot_Vlr_ISS.AsFloat              := StrToFloat(vAux);

  mAuxiliarNot_Isentas_ISS.AsFloat          := 0;

  vAux := Replace(FCds.FieldByName('total.Ret.vRetIRF').AsString,'.',',');
  if trim(vAux) <> '' then
    mAuxiliarNot_IRRF_Retido.AsFloat          := StrToFloat(vAux)
  else
    mAuxiliarNot_IRRF_Retido.AsFloat          := 0;
  mAuxiliarNot_Obs_LivroFiscal.AsString     := '';
  mAuxiliarNot_Especie.AsString             := 'NFSE';
  mAuxiliarNot_VendaAVista.AsString         := 'N';
  mAuxiliarNot_CFOP_ST.AsString             := '0';
  mAuxiliarNot_Base_PisCofins_ST.AsFloat    := 0;
  mAuxiliarNot_Modalidade_Frete.AsString    := '0';

  vAux := Replace(FCds.FieldByName('total.Ret.vRetLei10833-PIS-PASEP').AsString,'.',',');
  if trim(vAux) <> '' then
    mAuxiliarNot_Pis_Retido.AsFloat          := StrToFloat(vAux)
  else
    mAuxiliarNot_Pis_Retido.AsFloat          := 0;

  vAux := Replace(FCds.FieldByName('total.Ret.vRetLei10833-COFINS').AsString,'.',',');
  if trim(vAux) <> '' then
    mAuxiliarNot_Cofins_Retido.AsFloat          := StrToFloat(vAux)
  else
    mAuxiliarNot_Cofins_Retido.AsFloat          := 0;
    
  vAux := Replace(FCds.FieldByName('total.Ret.vRetLei10833-CSLL').AsString,'.',',');
  if trim(vAux) <> '' then
    mAuxiliarNot_CSLL_Retido.AsFloat          := StrToFloat(vAux)
  else
    mAuxiliarNot_CSLL_Retido.AsFloat          := 0;

  mAuxiliarNot_DtRecebimento.AsDateTime     := Date;
  mAuxiliarNot_Operacao_CTB.AsInteger       := 0;
  mAuxiliarNot_Vlr_Materiais.AsFloat        := 0;
  mAuxiliarNot_Vlr_SubEmpreitada.AsFloat    := 0;
  mAuxiliarNot_Cod_Servico.AsInteger        := 1;
  mAuxiliarNot_Pais.AsString                := FCds.FieldByName('emit.end.xPais').AsString;
  mAuxiliarNot_Obs_LivroFiscal_2.AsString   := '';
  vVlrAux      := 0;
  vVlrDesconto := 0;

  vAux := Replace(trim(FCds.FieldByName('total.vDesc').AsString),'.',',');
  mAuxiliarcpl_Vlr_Desconto.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vAux)));
  if StrToFloat(FormatFloat('0.00',mAuxiliarcpl_Vlr_Desconto.AsFloat)) > 0 then
    mAuxiliarNot_Vlr_Contabil.AsFloat  := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat - mAuxiliarcpl_Vlr_Desconto.AsFloat));
  //vAux := Replace(trim(FCds.FieldByName('total.Ret.vRetINSS').AsString),'.',',');
  vAux := Replace(trim(FCds.FieldByName('total.Ret.vtRetINSS').AsString),'.',',');
  if trim(vAux) = '' then
    vAux := '0';
  mAuxiliarCpl_Vlr_Inss_Retido.AsFloat := StrToFloat(FormatFloat('0.00',StrToFloat(vAux)));
  mAuxiliarCpl_ChaveNFSe.AsString      := FCds.FieldByName('ID.refNF').AsString;
  mAuxiliarcpl_ISS_Retido.AsString     := 'N';
  mAuxiliar.Post;
end;

procedure TfTela.prc_Campo_Bom_Novo(Arquivo: String);
var
  NFSeCB: TXMLClientDataset;
begin
  if trim(Arquivo) = '' then
    exit;
  if Assigned(FCds) then
    FreeAndNil(FCds);
  NFSeCB := TXMLClientDataset_NFSE_CampoBom.Create;
  try
    FCds := NFSeCB.CriarClientDataSet(Arquivo);
    dsNovaGeracao.DataSet := FCds;

    if FCds.RecordCount > 0 then
    begin
      FCds.Last;
      if trim(FCds.FieldByName('ID.nNFS-e').AsString) = '' then
        FCds.Delete;
    end;
    Label12.Visible := True;
    Label12.Caption := 'Total de ' + IntToStr(FCds.RecordCount) + ' Notas';
  finally
    FreeAndNil(NFSeCB);
  end;

  prc_Le_FCds;

end;

procedure TfTela.btnNFSePOAClick(Sender: TObject);
var
  XmlCds: TXMLClientDataset;
begin
  if OpenDialog.Execute then
  begin
    if Assigned(FCds) then
      FreeAndNil(FCds);

    XmlCds := TXCDS_NFSe_POA_Retorno.Create;
    try
      FCds := XmlCds.CriarClientDataSet(OpenDialog.FileName);
      dsNovaGeracao.DataSet := FCds;
    finally
      FreeAndNil(XmlCds);
    end;
  end;
end;

procedure TfTela.prc_Porto_Alegre(Arquivo: String);
var
  XmlCds: TXMLClientDataset;
begin
  if trim(Arquivo) = '' then
    exit;
    
  if Assigned(FCds) then
    FreeAndNil(FCds);

  XmlCds := TXCDS_NFSe_POA_Retorno.Create;
  try
    FCds := XmlCds.CriarClientDataSet(Arquivo);
    dsNovaGeracao.DataSet := FCds;

    if FCds.RecordCount > 0 then
    begin
      FCds.Last;
      if trim(FCds.FieldByName('Numero').AsString) = '' then
        FCds.Delete;
    end;
    Label12.Visible := True;
    Label12.Caption := 'Total de ' + IntToStr(FCds.RecordCount) + ' Notas';
  finally
    FreeAndNil(XmlCds);
  end;

  // carregar dados
  prc_Le_FCds;
end;

procedure TfTela.prc_Gravar_POA_mAuxiliar;
var
  vAux : String;
  vVlrAux : Real;
  vVlrDesconto : Real;
  Det: TDataSetField;
  vNumNotaAux : String;
  vAux2 : String;
  vAux3 : Real;
begin
  mAuxiliar.Insert;

  mAuxiliarCab_CNPJ.AsString                := FCds.FieldByName('PrestadorServico.IdentificacaoPrestador.Cnpj').AsString;
  mAuxiliarCab_Opc_CalcImpCont.AsString     := IntToStr(ComboBox2.ItemIndex);
  mAuxiliarCab_Opc_CalcRet.AsString         := '1';

  if FCds.FieldByName('IdentificacaoRps.Numero').AsString = '14236' then
    ShowMessage('aqui');

  //Detalhe
  if trim(FCds.FieldByName('TomadorServico.IdentificacaoTomador.CpfCnpj.Cnpj').AsString) <> '' then
    mAuxiliarDet_CNPJ_CPF.AsString          := FCds.FieldByName('TomadorServico.IdentificacaoTomador.CpfCnpj.Cnpj').AsString
  else
  begin
    mAuxiliarDet_CNPJ_CPF.AsString          := FCds.FieldByName('TomadorServico.IdentificacaoTomador.CpfCnpj.Cpf').AsString;
    if mAuxiliarDet_CNPJ_CPF.AsString = '00000000000' then
      mAuxiliarDet_CNPJ_CPF.AsString := '11111111111111';
  end;
  mAuxiliarDet_Nome_Cliente.AsString        := FCds.FieldByName('TomadorServico.RazaoSocial').AsString;
  mAuxiliarDet_Fantasia.AsString            := '';
  mAuxiliarDet_UF_Cli.AsString              := FCds.FieldByName('TomadorServico.Endereco.UF').AsString;
  mAuxiliarDet_InscEstadual_Cli.AsString    := FCds.FieldByName('TomadorServico.IdentificacaoTomador.InscricaoMunicipal').AsString;
  mAuxiliarDet_Endereco_Cli.AsString        := FCds.FieldByName('TomadorServico.Endereco.Endereco').AsString;
  mAuxiliarDet_Num_End.AsString             := FCds.FieldByName('TomadorServico.Endereco.Numero').AsString;
  mAuxiliarDet_Bairro_Cli.AsString          := FCds.FieldByName('TomadorServico.Endereco.Bairro').AsString;

  // busca o nome do município não sei se está certo

  //if DMLancamentos_EBS.cdsMunicipioG.Locate('cd_municipio_ibge',FCds.FieldByName('TomadorServico.Endereco.CodigoMunicipio').AsString,[loCaseInsensitive]) then
  //begin
  //  mAuxiliarDet_Cidade_Cli.AsString          :=  DMLancamentos_EBS.cdsMunicipioGnome.AsString;
  //end;

  mAuxiliarDet_Cep_Cli.AsString             := FCds.FieldByName('TomadorServico.Endereco.CEP').AsString;
  mAuxiliarDet_CodMunicipio_IBGE.AsString   := FCds.FieldByName('TomadorServico.Endereco.CodigoMunicipio').AsString;

  vAux := TirarAcento(mAuxiliarDet_Cidade_Cli.AsString);
  vAux := UpperCase(vAux);
  if mCidade.Locate('NomeCidade',vAux,[loCaseInsensitive]) then
    mAuxiliarDet_CodMunicipio_SIAFI.AsString := mCidadeCodSIAFI.AsString
  else
    mAuxiliarDet_CodMunicipio_SIAFI.AsInteger := 0;
    
  mAuxiliarDet_DDD_Cli.AsInteger            := 0;
  mAuxiliarDet_Fone_Cli.AsString            := FCds.FieldByName('TomadorServico.Contato.Telefone').AsString;
  mAuxiliarDet_Conta_CTB_Cli.AsString       := '0';
  mAuxiliarDet_Hist_CTB_Cli.AsInteger       := 0;
  mAuxiliarDet_Conta_CTB_Forn.AsString      := '0';
  mAuxiliarDet_Hist_CTB_Forn.AsInteger      := 0;
  mAuxiliarDet_Produto_Rural.AsString       := 'N';
  mAuxiliarDet_Pais.AsString                := 'Brasil'; // << não vem no xml tive que colocar fixo
  mAuxiliarDet_Complemento_Cli.AsString     := FCds.FieldByName('TomadorServico.Endereco.Complemento').AsString;
  mAuxiliarDet_Suframa.AsString             := '';
  //mAuxiliarDet_CodPais.AsInteger            := cdsCampoBomEndereco_cPais.AsInteger;
  mAuxiliarDet_CodPais.AsInteger            := 1058;
  mAuxiliarDet_NatJuridica.AsString         := '1';
  mAuxiliarNot_DtLancamento.AsDateTime      := Date;
  //mAuxiliarNot_Nota_Final.AsString          := FCds.FieldByName('IdentificacaoRps.Numero').AsString;
  //mAuxiliarNot_Nota_Inicial.AsString        := FCds.FieldByName('IdentificacaoRps.Numero').AsString;
  vAux := FCds.FieldByName('Numero').AsString;
  vNumNotaAux := copy(vaux,3,2);
  delete(vAux,1,4);
  vAux := FormatFloat('0000',StrToFloat(vAux));
  vNumNotaAux := vNumNotaAux + vAux;
  //mAuxiliarNot_Nota_Inicial.AsString        := FCds.FieldByName('Numero').AsString;
  //mAuxiliarNot_Nota_Final.AsString          := FCds.FieldByName('Numero').AsString;
  mAuxiliarNot_Nota_Inicial.AsString        := vNumNotaAux;
  mAuxiliarNot_Nota_Final.AsString          := vNumNotaAux;

  mAuxiliarNot_DtEmissao.AsDateTime         := FCds.FieldByName('Competencia').AsDateTime;

  mAuxiliarNot_DtLancamento.AsDateTime      := mAuxiliarNot_DtEmissao.AsDateTime;
  mAuxiliarNot_Modelo.AsString              := FCds.FieldByName('IdentificacaoRps.Tipo').AsString;
  if trim(mAuxiliarNot_Modelo.AsString) = '' then
    mAuxiliarNot_Modelo.AsString := '01';
  mAuxiliarNot_Serie.AsString               := FCds.FieldByName('IdentificacaoRps.Serie').AsString;
  if trim(mAuxiliarNot_Serie.AsString) = '' then
    mAuxiliarNot_Serie.AsString        := 'U';
  mAuxiliarNot_SubSerie.AsString            := '';
  mAuxiliarNot_CFOP.AsString                := '0';
  mAuxiliarNot_CFOP_Variacao.AsInteger      := 0;
  mAuxiliarNot_Classificacao1.AsInteger     := 0;
  mAuxiliarNot_Classificacao2.AsInteger     := 0;
  if trim(FCds.FieldByName('TomadorServico.IdentificacaoTomador.CpfCnpj.Cnpj').AsString) <> '' then
    mAuxiliarNot_CNPJCPF_Dest.AsString        := FCds.FieldByName('TomadorServico.IdentificacaoTomador.CpfCnpj.Cnpj').AsString
  else
  begin
    mAuxiliarNot_CNPJCPF_Dest.AsString        := trim(FCds.FieldByName('TomadorServico.IdentificacaoTomador.CpfCnpj.Cpf').AsString);
    //if mAuxiliarNot_CNPJCPF_Dest.AsString = '00000000000' then
      //mAuxiliarNot_CNPJCPF_Dest.AsString := '11111111111111';
  end;
  //vAux := Replace(trim(FCds.FieldByName('Servico.Valores.ValorLiquidoNfse').AsString),'.',',');
  //Alterado conforme a Shala no dia 22/01/2016
  //vAux := Replace(trim(FCds.FieldByName('Servico.Valores.ValorServicos').AsString),'.',',');
  vAux := Replace(FCds.FieldByName('Servico.Valores.BaseCalculo').AsString,'.',',');
  if (vAux = '0,00') or (trim(vAux) = '') or (trim(vAux) = '0') then
    vAux := Replace(FCds.FieldByName('Servico.Valores.ValorServicos').AsString,'.',',');
  mAuxiliarNot_Vlr_Contabil.AsFloat       := StrToFloat(FormatFloat('0.00',StrToFloat(vAux)));
  if ckPis.Checked then
    mAuxiliarNot_Base_Pis.AsFloat           := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_Pis.AsFloat           := 0;
  if ckCofins.Checked then
    mAuxiliarNot_Base_Cofins.AsFloat        := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_Cofins.AsFloat        := 0;
  if ckCSLL.Checked then
    mAuxiliarNot_Base_CSLL.AsFloat        := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_CSLL.AsFloat          := 0;
  if ckIRPJ.Checked then
    mAuxiliarNot_Base_IRPJ.AsFloat          := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat))
  else
    mAuxiliarNot_Base_IRPJ.AsFloat          := 0;
  {if CheckBox1.Checked then
  begin
  //aqui
    if not CheckBox2.Checked then
      mAuxiliarNot_Base_Pis.AsFloat         := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat));
    mAuxiliarNot_Base_Cofins.AsFloat      := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat));
    if CurrencyEdit1.Value > 0 then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.00',(mAuxiliarNot_Vlr_Contabil.AsFloat * CurrencyEdit1.Value / 100)));
      mAuxiliarNot_Base_IRPJ.AsFloat        := StrToFloat(FormatFloat('0.00',vVlrAux));
    end;
    if CurrencyEdit2.Value > 0 then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.00',(mAuxiliarNot_Vlr_Contabil.AsFloat * CurrencyEdit2.Value / 100)));
      mAuxiliarNot_Base_CSLL.AsFloat        := StrToFloat(FormatFloat('0.00',vVlrAux));
    end;
  end;}
  mAuxiliarNot_Base_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Base_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_A.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_B.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_C.AsFloat          := 0;
  mAuxiliarNot_Aliq_ICMS_D.AsFloat          := 0;
  mAuxiliarNot_Vlr_ICMS_A.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_B.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_C.AsFloat           := 0;
  mAuxiliarNot_Vlr_ICMS_D.AsFloat           := 0;
  mAuxiliarNot_Isentas_ICMS.AsFloat         := 0;
  mAuxiliarNot_Outras_ICMS.AsFloat          := 0;
  mAuxiliarNot_Base_IPI.AsFloat             := 0;
  mAuxiliarNot_Vlr_IPI.AsFloat              := 0;
  mAuxiliarNot_Isentas_IPI.AsFloat          := 0;
  mAuxiliarNot_Outras_IPI.AsFloat           := 0;
  mAuxiliarNot_Vlr_SubstTributaria.AsFloat  := 0;
  mAuxiliarNot_Base_ST.AsFloat              := 0;
  mAuxiliarNot_ICMS_ST.AsFloat              := 0;
  mAuxiliarNot_Diferidas.AsFloat            := 0;

  vAux := Replace(FCds.FieldByName('Servico.Valores.BaseCalculo').AsString,'.',',');
  if (vAux = '0,00') or (trim(vAux) = '') or (trim(vAux) = '0') then
    vAux := Replace(FCds.FieldByName('Servico.Valores.ValorServicos').AsString,'.',',');
  mAuxiliarNot_Base_ISS.AsFloat             := StrToFloat(vAux);

//  //vAux := Replace(Det.NestedDataSet.FieldByName('serv.pISS').AsString,'.',',');
//  Det :=  FCds.FieldByName('det') as TDataSetField;
//  Det.NestedDataSet.First;
//  while not Det.NestedDataSet.Eof do
//  begin
//    vAux := Replace(Det.NestedDataSet.FieldByName('serv.pISS').AsString,'.',',');
//    Det.NestedDataSet.Next;
//  end;
  vAux3 := FCds.FieldByName('Servico.Valores.Aliquota').AsFloat;
  if StrToFloat(FormatFloat('0.00',vAux3)) >= 0 then
    vAux3 := StrToFloat(FormatFloat('0.00',vAux3 * 100));
  //mAuxiliarNot_Aliq_ISS.AsFloat             := FCds.FieldByName('Servico.Valores.Aliquota').AsFloat;
  mAuxiliarNot_Aliq_ISS.AsFloat             := StrToFloat(FormatFloat('0.00',vAux3));
  mAuxiliarNot_Vlr_ISS.AsFloat              := FCds.FieldByName('Servico.Valores.ValorIss').AsFloat;
  mAuxiliarNot_Isentas_ISS.AsFloat          := 0;
  mAuxiliarNot_IRRF_Retido.AsFloat          := FCds.FieldByName('Servico.Valores.ValorIR').AsFloat;
  mAuxiliarNot_Obs_LivroFiscal.AsString     := '';
  mAuxiliarNot_Especie.AsString             := 'NFSE';
  mAuxiliarNot_VendaAVista.AsString         := 'N';
  mAuxiliarNot_CFOP_ST.AsString             := '0';
  mAuxiliarNot_Base_PisCofins_ST.AsFloat    := 0;
  mAuxiliarNot_Modalidade_Frete.AsString    := '0';
  mAuxiliarNot_Pis_Retido.AsFloat           := FCds.FieldByName('Servico.Valores.ValorPIS').AsFloat;
  mAuxiliarNot_Cofins_Retido.AsFloat        := FCds.FieldByName('Servico.Valores.ValorCOFINS').AsFloat;
  mAuxiliarNot_CSLL_Retido.AsFloat          := FCds.FieldByName('Servico.Valores.ValorCSLL').AsFloat;
  mAuxiliarNot_DtRecebimento.AsDateTime     := Date;
  mAuxiliarNot_Operacao_CTB.AsInteger       := 0;
  mAuxiliarNot_Vlr_Materiais.AsFloat        := 0;
  mAuxiliarNot_Vlr_SubEmpreitada.AsFloat    := 0;
  mAuxiliarNot_Cod_Servico.AsInteger        := 1;
  mAuxiliarNot_Pais.AsString                := 'Brasil';
  mAuxiliarNot_Obs_LivroFiscal_2.AsString   := '';
  vVlrAux      := 0;
  vVlrDesconto := 0;

  mAuxiliarcpl_Vlr_Desconto.AsFloat := FCds.FieldByName('Servico.Valores.DescontoCondicionado').AsFloat;
  if StrToFloat(FormatFloat('0.00',mAuxiliarcpl_Vlr_Desconto.AsFloat)) > 0 then
    mAuxiliarNot_Vlr_Contabil.AsFloat  := StrToFloat(FormatFloat('0.00',mAuxiliarNot_Vlr_Contabil.AsFloat - mAuxiliarcpl_Vlr_Desconto.AsFloat));
  //vAux := Replace(trim(FCds.FieldByName('total.Ret.vRetINSS').AsString),'.',',');

  mAuxiliarCpl_Vlr_Inss_Retido.AsFloat := FCds.FieldByName('Servico.Valores.ValorInss').AsFloat;
  mAuxiliarCpl_ChaveNFSe.AsString      := FCds.FieldByName('Numero').AsString; // << não sei se é este o campo correto
  mAuxiliarcpl_ISS_Retido.AsString     := 'N';
  mAuxiliar.Post;
end;

function TfTela.PegaTimeZone: string;
var
  TimeZone: TTimeZoneInformation;
begin
  GetTimeZoneInformation(TimeZone);
  Result := FormatFloat('00', TimeZone.Bias div -60) + ':00';
end;

end.
