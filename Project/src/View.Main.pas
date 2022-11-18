unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    pnlBackGround: TPanel;
    btnProduct: TButton;
    btnCustomer: TButton;
    btnPurchaseOrder: TButton;
    procedure btnProductClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses
  View.Product;

{$R *.dfm}

procedure TFormMain.btnProductClick(Sender: TObject);
begin
  formproduct := TFormProduct.Create(self);
  formproduct.ShowModal;
  formproduct.Free;
end;

end.
