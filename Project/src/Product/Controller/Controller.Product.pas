unit Controller.Product;

interface

uses
  Controller.Product.Interfaces, Model.Product, Model.Product.DAO;

type
  TControllerProduct = class (TinterfacedObject, iControllerProductInterfaces)
    private
      FProductDAO : TModelProductDAO;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerProductInterfaces;
      function Add (aStrValue : string; aFloatValue : Float32) : iControllerProductInterfaces;

  end;

implementation

{ TControllerProduct }


function TControllerProduct.Add(aStrValue: string;
  aFloatValue: Float32): iControllerProductInterfaces;
var
  LProduct : Tproduct;
begin
  try  // fazer funcionar
    LProduct.Create;
    LProduct.Description(aStrValue);
    LProduct.SellPrice(aFloatValue);

    FProductDAO.Add(LProduct);
  finally
    LProduct.Free;
  end;

  Result := Self;
end;

constructor TControllerProduct.Create;
begin

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
