unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Layouts, FMX.ExtCtrls,
  System.ImageList, FMX.ImgList;

type
  TForm1 = class(TForm)
    btnAtualizar: TButton;
    GridPanelLayout1: TGridPanelLayout;
    btnPlay: TButton;
    btnPause: TButton;
    txtAposta: TEdit;
    Label1: TLabel;
    lblRS: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    txtSaldo: TEdit;
    ImageList1: TImageList;
    ImageViewer1: TImageViewer;
    img2: TImageViewer;
    img3: TImageViewer;
    img1: TImageViewer;
    procedure btnPlayClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n1, n2, n3 : integer;
  ganho, perda, saldo, aposta : real;
  s: TSizeF;

implementation

{$R *.fmx}

procedure TForm1.btnAtualizarClick(Sender: TObject);
begin
  saldo := 0;
  aposta:= 0;
  txtAposta.Text := '00.00';
  txtSaldo.Text := '00.00';
  s.Create(60,60);
  img1.Bitmap := ImageList1.Bitmap(s,0);
  img2.Bitmap := ImageList1.Bitmap(s,0);
  img3.Bitmap := ImageList1.Bitmap(s,0);
  btnPlay.Enabled := true;
  txtSaldo.SetFocus;
end;

procedure TForm1.btnPauseClick(Sender: TObject);
begin
  txtAposta.Enabled := True;
  btnAtualizar.Enabled := True;
  timer1.Enabled := false;
  timer2.Enabled := false;
  timer3.Enabled := false;

  if (n1=n2) and (n2=n3) then
  begin
    saldo:= saldo + (5*aposta);
    ganho := (5*aposta);
    txtSaldo.Text := FloatToStr(saldo);
    Showmessage('Voc� ganhou R$' + floattostr(ganho));
  end
  else if (n1=n2) or (n1=n3) or (n2=n3) then
    begin
      saldo:= saldo + (2*aposta);
      ganho := (2*aposta);
      txtSaldo.Text := FloatToStr(saldo);
      Showmessage('Voc� ganhou R$' + floattostr(ganho));
    end
    else
    begin
      saldo:= saldo - aposta;
      txtSaldo.Text := FloatToStr(saldo);
      Showmessage('Voc� perdeu R$' + floattostr(aposta));
    end;

end;

procedure TForm1.btnPlayClick(Sender: TObject);
var
test : integer;
begin
try //Tratamento de erro
    test:=1;
    saldo := StrToFloat(txtSaldo.Text);
    test:=2;
    aposta := StrToFloat(txtAposta.Text);
    test :=3;
  except
    if(test=1) then
     begin
      Showmessage('O valor de saldo � inv�lido!');
       txtSaldo.Opacity := 1;
       txtSaldo.SetFocus;
     end
     else if (test=2) then
      begin
        Showmessage('O valor da aposta � inv�lido!');
        txtAposta.SetFocus;
      end;
  end;

  if (test = 3) then
  begin
  if (saldo <= 0) then
  begin
    Showmessage('Saldo Insuficiente!');
    txtSaldo.SetFocus;
  end

  else if (aposta <=0) then
  begin
    Showmessage('Aposta Inv�lida!');
    txtAposta.SetFocus;
  end

  else if (saldo < aposta) then
  begin
       Showmessage('Aposta maior que o saldo!');
       txtAposta.SetFocus;
  end

  else
  begin
    txtAposta.Enabled := false;
    btnAtualizar.Enabled := false;
    btnPause.Enabled := true;

    timer1.Enabled := true;
    timer2.Enabled := true;
    timer3.Enabled := true;

  end;

  end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  saldo := 0;
  txtSaldo.SetFocus;
  btnPause.Enabled := false;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  randomize;
  n1:= random(10);
  s.Create(60,60);
  img1.Bitmap := ImageList1.Bitmap(s,n1);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  randomize;
  n2:= random(10);
  s.Create(60,60);
  img2.Bitmap := ImageList1.Bitmap(s,n2);

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  randomize;
  n3:= random(10);
  s.Create(60,60);
  img3.Bitmap := ImageList1.Bitmap(s,n3);
end;

end.
