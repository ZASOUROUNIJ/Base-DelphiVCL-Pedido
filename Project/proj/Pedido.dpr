program Pedido;

uses
  Vcl.Forms,
  View.Main in '..\src\View.Main.pas' {FormMain},
  View.Product in '..\src\Product\View\View.Product.pas' {FormProduct},
  Model.Connections.Firedac in '..\src\Connections\Model\Model.Connections.Firedac.pas',
  Model.Connections.Interfaces in '..\src\Connections\Model\Model.Connections.Interfaces.pas',
  Model.Connections in '..\src\Connections\Model\Model.Connections.pas',
  Model.Connections.Firedac.Query in '..\src\Connections\Model\Model.Connections.Firedac.Query.pas',
  Model.Product in '..\src\Product\Model\Model.Product.pas',
  Model.Product.Interfaces in '..\src\Product\Model\Model.Product.Interfaces.pas',
  Controller.Product in '..\src\Product\Controller\Controller.Product.pas',
  Controller.Product.Interfaces in '..\src\Product\Controller\Controller.Product.Interfaces.pas',
  Model.Product.DAO in '..\src\Product\Model\Model.Product.DAO.pas',
  Model.Product.DAO.Interfaces in '..\src\Product\Model\Model.Product.DAO.Interfaces.pas',
  Controller.Connections in '..\src\Connections\Controller\Controller.Connections.pas',
  Controller.Connections.Interfaces in '..\src\Connections\Controller\Controller.Connections.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormProduct, FormProduct);
  Application.Run;
end.
