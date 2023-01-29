unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    ToolBar1: TToolBar;
    btnVoltar: TButton;
    Label1: TLabel;
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses Unit1;

procedure TForm2.btnVoltarClick(Sender: TObject);
begin
  Form1.Show;
end;

end.
