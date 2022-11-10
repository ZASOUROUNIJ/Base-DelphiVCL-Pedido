unit Model.Product.DAO;

interface

uses
  Model.Product.DAO.Interfaces,
  Model.Product;

type
  TModelProductDAO = class (TInterfacedObject, iModelProductDAOInterfaces)
    private
    public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelProductDAOInterfaces;
    procedure Add (aValue : TProduct);
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TModelProductDAO }

procedure TModelProductDAO.Add(aValue: TProduct);
begin
  showmessage ('teste parametros Tproduct'+sLineBreak+
  aValue.Description+ sLineBreak+
  IntToStr(aValue.Id)+ sLineBreak+
  FloatToStr(aValue.SellPrice));
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
