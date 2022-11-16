unit Model.Product;

interface

uses
  Model.Product.Interfaces;

type
  TProduct = class (TInterfacedObject, iModelProductInterfaces)
    private
    Fid : integer;
    FDescription : string;
    FSellPrice : float32;

    public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelProductInterfaces;
    function Id (aValue : integer) : iModelProductInterfaces; overload;
    function Id : Integer; overload;
    function Description (aValue : string) : iModelProductInterfaces; overload;
    function Description : string; overload;
    function SellPrice (Avalue : Float32) : iModelProductInterfaces; overload;
    function SellPrice : float32; overload;
  end;

implementation

{ TModelProduct }

constructor TProduct.Create;
begin
  Fid := -1;
  FDescription := '';
  FSellPrice := 0;
end;

function TProduct.Description(aValue: string): iModelProductInterfaces;
begin
  Result := Self;
  FDescription := aValue;
end;

function TProduct.Description: string;
begin
  Result := FDescription;
end;

destructor TProduct.Destroy;
begin

  inherited;
end;

function TProduct.Id: Integer;
begin
  Result := Fid;
end;

function TProduct.Id(aValue: integer): iModelProductInterfaces;
begin
  Result := Self;
  Fid := aValue;
end;

class function TProduct.New: iModelProductInterfaces;
begin
  Result := Self.Create;
end;

function TProduct.SellPrice(Avalue: Float32): iModelProductInterfaces;
begin
  Result := Self;
  FSellPrice := Avalue;
end;

function TProduct.SellPrice: float32;
begin
  Result := FSellPrice;
end;

end.
