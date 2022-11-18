unit Model.Product.DAO;

interface

uses
  Model.Product.DAO.Interfaces,
  Model.Product, Model.Product.Interfaces, FireDAC.Comp.Client;

type
  TModelProductDAO = class (TInterfacedObject, iModelProductDAOInterfaces)
    private
    FQuery : TFDQuery;
    public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelProductDAOInterfaces;
    procedure Add (aValue : iModelProductInterfaces);
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils, ControllerConexao;

{ TModelProductDAO }

procedure TModelProductDAO.Add(aValue: iModelProductInterfaces);
begin
  FQuery := TConexaoControl.getInstancia().Conexao.CriarQuery;

  try
    FQuery.ExecSQL(
      'INSERT INTO produto (descricao, preco_de_venda) VALUES (:descricao,:preco_de_venda)',
      [aValue.Description,aValue.SellPrice]
    );
  except
    on E: Exception do
      raise Exception.Create('Ops! Algo aconteceu: ' + E.Message);
  end;
end;

constructor TModelProductDAO.Create;
begin

end;

destructor TModelProductDAO.Destroy;
begin

end;

class function TModelProductDAO.New: iModelProductDAOInterfaces;
begin
  Result := Self.Create;
end;

end.
