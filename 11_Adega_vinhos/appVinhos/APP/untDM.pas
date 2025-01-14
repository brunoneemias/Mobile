unit untDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, system.IOUtils;

type
  TDM = class(TDataModule)
    FDCon: TFDConnection;
    fdqVinhos: TFDQuery;
    Driver: TFDPhysSQLiteDriverLink;
    fdqVinhosMarca: TStringField;
    fdqVinhosTipo: TStringField;
    fdqVinhosUvas: TStringField;
    fdqVinhosAno: TIntegerField;
    fdqVinhosOrigem: TStringField;
    fdqVinhosClassificacao: TIntegerField;
    procedure FDConBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses untPrincial;

{$R *.dfm}

procedure TDM.FDConBeforeConnect(Sender: TObject);
begin
// Essa comando � para compilar no celular
//deixar essa linha comentada para rodar no windowns
   //
   FDCon.Params.Values['Database']
   := Tpath.Combine(TPath.GetDocumentsPath, 'BDVinhos.db');

end;

end.
