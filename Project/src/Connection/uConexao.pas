unit uConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;
            
type
  Tconexao = class
  private
    FConnection : TFDConnection;

    procedure configurarConexao;
     
  public
    constructor Create;
    destructor Destroy; override;

    function GetConnection : TFDConnection;
    function CriarQuery : TFDQuery;
  
  end;
  const
    DBName    = '\OOP.db';
    BDPath = 'C:\Projetos\Cursos\Base-DelphiVCL-Pedido\Project\DB' + DBName;

implementation

{ Tconexao }

procedure Tconexao.configurarConexao;
begin
  if not FConnection.Connected then
  begin
    FConnection.Params.DriverID := 'SQLite';
    FConnection.Params.Database := BDPath;
    FConnection.Params.Add('LockingMode=Normal');
    FConnection.DriverName :='SQLite';
    FConnection.LoginPrompt := false;
    try
      FConnection.Open();
      FConnection.Connected := true;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error: ' + sLineBreak + E.Message);
      end;
    end;
  end;
end;

constructor Tconexao.Create;
begin
  FConnection := TFDConnection.Create(nil);
  Self.configurarConexao();
end;

function Tconexao.CriarQuery: TFDQuery;
var
  vQuery : TFDQuery;
begin
  vQuery := TFDQuery.Create(nil);
  vQuery.Connection := FConnection;
  Result := vQuery;  
end;

destructor Tconexao.Destroy;
begin
  FreeAndNil(FConnection);

  inherited;
end;

function Tconexao.GetConnection: TFDConnection;
begin
  Result := FConnection;
end;

end.
