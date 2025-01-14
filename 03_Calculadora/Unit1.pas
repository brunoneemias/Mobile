unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    btnSoma: TButton;
    btnSub: TButton;
    btnMulti: TButton;
    btnDiv: TButton;
    btnLimpar: TButton;
    btnSair: TButton;
    txtN1: TEdit;
    txtN2: TEdit;
    lblResult: TLabel;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  soma, sub, divi, multi, n1, n2: double;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm1.btnDivClick(Sender: TObject);
begin
        n1 := strtofloat(txtN1.Text);
        n2 := strtofloat(txtN2.Text);

        if (n2<>0) then
        begin
          divi := n1 / n2;
          lblResult.Text := floattostr(divi);
        end else
        begin
          lblResult.Text := 'N2 n�o pode ser 0';
        end;

end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  n1:= 0;
  n2:=0;
  soma:=0;
  multi:=0;
  divi:=0;
  sub:=0;
  lblResult.Text:= '';
  txtN1.Text:= '';
  txtN2.Text:= '';

end;

procedure TForm1.btnMultiClick(Sender: TObject);
begin
     n1 := strtofloat(txtN1.Text);
     n2 := strtofloat(txtN2.Text);

     multi := n1 * n2;

     lblResult.Text := floattostr(multi);

end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  n1 := strtofloat(txtN1.Text);
  n2 := strtofloat(txtN2.Text);

  soma := n1 + n2;

  lblResult.Text := floattostr(soma);
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
   n1 := strtofloat(txtN1.Text);
   n2 := strtofloat(txtN2.Text);

   if (n1>n2) then
      sub := (n1 - n2)
   else if(n1<n2) then
      sub := (n2 - n1);

    lblResult.Text := floattostr(sub);

end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
