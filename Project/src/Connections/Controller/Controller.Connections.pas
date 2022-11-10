unit Controller.Connections;

interface

uses
  Controller.Connections.Interfaces;

type
  TControllerConnections = class (TinterfacedObject, iControllerConnectionsInterfaces)
    private
    public
    constructor Create;
    destructor Destroy; overload;
    class function New : iControllerConnectionsInterfaces;
    function connection : iControllerConnectionsInterfaces;
  end;

implementation

{ TControllerConnections }

function TControllerConnections.connection: iControllerConnectionsInterfaces;
begin

end;

constructor TControllerConnections.Create;
begin

end;

destructor TControllerConnections.Destroy;
begin

end;

class function TControllerConnections.New: iControllerConnectionsInterfaces;
begin
 Result := self.Create;
end;

end.
