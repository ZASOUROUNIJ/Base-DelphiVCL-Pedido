object DataModuleCentral: TDataModuleCentral
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 350
  Width = 319
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Projetos\Cursos\Base-DelphiVCL-Pedido\Project\DB\OOP' +
        '.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Left = 48
    Top = 40
  end
  object mtbMemoTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 240
  end
  object dsDataSource1: TDataSource
    Left = 48
    Top = 112
  end
  object fdqQuery1: TFDQuery
    Connection = FDConnection1
    Left = 48
    Top = 176
  end
end
