object dmDatabase_EBS: TdmDatabase_EBS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 288
  Top = 224
  Height = 397
  Width = 335
  object Conexao_MSSQL: TSQLConnection
    ConnectionName = 'SS_SQLSERVER'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=Cleomar-pc\ebs'
      'DataBase=EBS_Cordilheira_18812_Kaciclean'
      'User_Name=sa'
      'Password=cORDILHEIR@2008'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False')
    VendorLib = 'oledb'
    Left = 56
    Top = 88
  end
end
