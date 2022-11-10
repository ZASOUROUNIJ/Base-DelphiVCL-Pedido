unit View.Product;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormProduct = class(TForm)
    pnlBackground: TPanel;
    edtID: TEdit;
    edtDescription: TEdit;
    edtSellPrice: TEdit;
    btnAdd: TButton;
    DBGrid1: TDBGrid;
    btnRetrieveAll: TButton;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
    //Fconnection : iConnection;
  public
    { Public declarations }
  end;

var
  FormProduct: TFormProduct;

implementation

uses
  Controller.Product;

{$R *.dfm}

procedure TFormProduct.btnAddClick(Sender: TObject);
begin
  TControllerProduct.New
  .Add( edtDescription.Text, StrToFloat( edtSellPrice.Text) );
end;

end.
