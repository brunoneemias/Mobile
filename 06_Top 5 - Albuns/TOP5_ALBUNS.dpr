program TOP5_ALBUNS;

uses
  System.StartUpCopy,
  FMX.Forms,
  untPrincipal in 'untPrincipal.pas' {Form1},
  untAstroWorld in 'untAstroWorld.pas' {Form2},
  untMaquinaDoTempo in 'untMaquinaDoTempo.pas' {Form3},
  untPr�vias in 'untPr�vias.pas' {Form4},
  untBobby in 'untBobby.pas' {Form5},
  untToken in 'untToken.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
