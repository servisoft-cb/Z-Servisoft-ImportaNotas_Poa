object DMLancamentos_EBS: TDMLancamentos_EBS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 148
  Top = 134
  Height = 522
  Width = 679
  object sdsMunicipioG: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select *'#13#10'from dbo.MunicipioG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 192
    Top = 120
    object sdsMunicipioGestado: TStringField
      FieldName = 'estado'
      Required = True
      FixedChar = True
      Size = 2
    end
    object sdsMunicipioGcd_municipio: TIntegerField
      FieldName = 'cd_municipio'
      Required = True
    end
    object sdsMunicipioGnome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 50
    end
    object sdsMunicipioGstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object sdsMunicipioGcd_municipio_ibge: TStringField
      FieldName = 'cd_municipio_ibge'
      FixedChar = True
      Size = 4
    end
    object sdsMunicipioGcd_municipio_estado: TIntegerField
      FieldName = 'cd_municipio_estado'
    end
    object sdsMunicipioGcd_municipio_concla: TIntegerField
      FieldName = 'cd_municipio_concla'
    end
  end
  object dspMunicipioG: TDataSetProvider
    DataSet = sdsMunicipioG
    Left = 248
    Top = 120
  end
  object cdsMunicipioG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMunicipioG'
    Left = 312
    Top = 120
    object cdsMunicipioGestado: TStringField
      FieldName = 'estado'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsMunicipioGcd_municipio: TIntegerField
      FieldName = 'cd_municipio'
      Required = True
    end
    object cdsMunicipioGnome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 50
    end
    object cdsMunicipioGstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object cdsMunicipioGcd_municipio_ibge: TStringField
      FieldName = 'cd_municipio_ibge'
      FixedChar = True
      Size = 4
    end
    object cdsMunicipioGcd_municipio_estado: TIntegerField
      FieldName = 'cd_municipio_estado'
    end
    object cdsMunicipioGcd_municipio_concla: TIntegerField
      FieldName = 'cd_municipio_concla'
    end
  end
  object dsMunicipioG: TDataSource
    DataSet = cdsMunicipioG
    Left = 376
    Top = 120
  end
end
