object DM: TDM
  OldCreateOrder = False
  Height = 519
  Width = 397
  object FDCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Fsociety\OneDrive\Documents\Courses\System dev' +
        'elopment technician\Module 2\Programa'#231#227'o Mobile\Trabalhos\appHot' +
        'el\BDHotel.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 16
    Top = 24
  end
  object FDQhotel: TFDQuery
    Connection = FDCon
    SQL.Strings = (
      'select * from tbHoteis')
    Left = 160
    Top = 24
  end
  object driver: TFDPhysSQLiteDriverLink
    Left = 312
    Top = 24
  end
end
