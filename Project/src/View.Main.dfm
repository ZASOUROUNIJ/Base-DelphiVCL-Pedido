object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object pnlBackGround: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 231
    Align = alClient
    Color = clPurple
    ParentBackground = False
    TabOrder = 0
    object btnProduct: TButton
      Left = 56
      Top = 24
      Width = 73
      Height = 49
      Caption = 'Produtos'
      TabOrder = 0
      OnClick = btnProductClick
    end
    object btnCustomer: TButton
      Left = 256
      Top = 24
      Width = 75
      Height = 49
      Caption = 'Clientes'
      TabOrder = 1
    end
    object btnPurchaseOrder: TButton
      Left = 160
      Top = 24
      Width = 73
      Height = 49
      Caption = 'Pedidos'
      TabOrder = 2
    end
  end
end
