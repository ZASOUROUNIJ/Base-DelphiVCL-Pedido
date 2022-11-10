unit Model.Product.Interfaces;

interface

type
  iModelProductInterfaces = interface
    ['{271CE422-1546-4FFA-AA82-9DA16E18CDA7}']

    function Id (aValue : integer) : iModelProductInterfaces; overload;
    function Id : Integer; overload;
    function Description (aValue : string) : iModelProductInterfaces; overload;
    function Description : string; overload;
    function SellPrice (Avalue : Float32) : iModelProductInterfaces; overload;
    function SellPrice : float32; overload;

  end;

implementation

end.
