object DM: TDM
  OldCreateOrder = False
  Height = 321
  Width = 417
  object FDCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Fsociety\OneDrive\Documents\Courses\System dev' +
        'elopment technician\Module 2\Programa'#231#227'o Mobile\05 - May\25-05\a' +
        'ppVinhos\BD\BDVinhos.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConBeforeConnect
    Left = 56
    Top = 40
  end
  object fdqVinhos: TFDQuery
    Active = True
    Connection = FDCon
    SQL.Strings = (
      'select * from tbVinho')
    Left = 176
    Top = 40
    object fdqVinhosMarca: TStringField
      FieldName = 'Marca'
      Origin = 'Marca'
      Size = 50
    end
    object fdqVinhosTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Size = 50
    end
    object fdqVinhosUvas: TStringField
      FieldName = 'Uvas'
      Origin = 'Uvas'
      Size = 50
    end
    object fdqVinhosAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'Ano'
    end
    object fdqVinhosOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'Origem'
      Size = 50
    end
    object fdqVinhosClassificacao: TIntegerField
      FieldName = 'Classificacao'
      Origin = 'Classificacao'
    end
  end
  object Driver: TFDPhysSQLiteDriverLink
    Left = 312
    Top = 40
  end
end
