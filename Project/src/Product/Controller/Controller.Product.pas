unit Controller.Product;

interface

uses
  Controller.Product.Interfaces, Model.Product, Model.Product.DAO, 
  Model.Product.DAO.Interfaces;

type
  TControllerProduct = class (TinterfacedObject, iControllerProductInterfaces)
    private
      FProductDAO : iModelProductDAOInterfaces;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerProductInterfaces;
      function Add (aStrValue : string; aFloatValue : Float32) : iControllerProductInterfaces;

  end;

implementation

uses
  Model.Product.Interfaces;

{ TControllerProduct }


function TControllerProduct.Add(aStrValue: string;
  aFloatValue: Float32): iControllerProductInterfaces;
var
  LProduct : iModelProductInterfaces;
begin
  Result := Self;
  LProduct := TProduct.New;  
  LProduct.Description(aStrValue);
  LProduct.SellPrice(aFloatValue);
  FProductDAO.Add(LProduct);

end;

constructor TControllerProduct.Create;
begin
  FProductDAO := TModelProductDAO.New;
end;

destructor TControllerProduct.Destroy;
begin

  inherited;
end;

class function TControllerProduct.New: iControllerProductInterfaces;
begin
  result := Self.Create;
end;

end.
