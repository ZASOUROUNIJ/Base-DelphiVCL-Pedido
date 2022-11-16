unit MainDataModule;

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
  TDataModuleCentral = class(TDataModule)
    FDConnection1: TFDConnection;
    mtbMemoTable: TFDMemTable;
    dsDataSource1: TDataSource;
    fdqQuery1: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FConnection : TFDConnection;
    procedure ConnectionConfig;

  public
    { Public declarations }
    class function New: TDataModuleCentral;
  end;

function funcDataModuleCentral : TDataModuleCentral;  

var
  DataModuleCentral: TDataModuleCentral;
  Finstance : TDataModuleCentral;
const
  DBName    = '\OOP.db';
  BDPath = 'C:\Projetos\Cursos\Base-DelphiVCL-Pedido\Project\DB\' + DBName;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModuleCentral }

function funcDataModuleCentral : TDataModuleCentral;
begin  
  if not Assigned(FInstance) then
    FInstance := TDataModuleCentral.Create(nil);

  Result := FInstance;
end;

procedure TDataModuleCentral.ConnectionConfig;
begin
  if not FDConnection1.Connected then
    with FDConnection1 do
    begin
      with Params do
      begin
        Clear;
        Add('DriverID=SQLite');
        Add('LockingMode=Normal');
        Add('Synchronous=Normal');
        Add('Database=' + BDPath);
      end;
      Open;

    end;
end;

procedure TDataModuleCentral.DataModuleCreate(Sender: TObject);
begin
  if not assigned(FConnection) then
    FConnection := FDConnection1.Create(nil);
  
  ConnectionConfig;
end;

procedure TDataModuleCentral.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FDConnection1);

  FInstance := nil;
end;

class function TDataModuleCentral.New: TDataModuleCentral;
begin
  if not Assigned(FInstance) then
    FInstance := TDataModuleCentral(inherited NewInstance);

  Result := Finstance;
end;

end.
