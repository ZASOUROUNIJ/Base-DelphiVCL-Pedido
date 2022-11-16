unit Model.Product.DAO.Interfaces;

interface

uses
  Model.Product, Model.Product.Interfaces;

type
  iModelProductDAOInterfaces = interface
    ['{20931457-82B0-46AA-AEDC-C6A02D12D7C8}']
    procedure Add (aValue : iModelProductInterfaces);

  end;

implementation

end.
