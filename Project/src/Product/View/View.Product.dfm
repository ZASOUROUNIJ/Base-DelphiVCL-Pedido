object FormProduct: TFormProduct
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 299
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object pnlBackground: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 299
    Align = alClient
    TabOrder = 0
    object edtID: TEdit
      Left = 0
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtDescription: TEdit
      Left = 112
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Des'
    end
    object edtSellPrice: TEdit
      Left = 239
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '1'
    end
    object btnAdd: TButton
      Left = 366
      Top = 14
      Width = 75
      Height = 25
      Caption = 'ADD'
      TabOrder = 3
      OnClick = btnAddClick
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 56
      Width = 441
      Height = 201
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object btnRetrieveAll: TButton
      Left = 0
      Top = 256
      Width = 89
      Height = 33
      Caption = 'TODOS'
      TabOrder = 5
    end
  end
end
