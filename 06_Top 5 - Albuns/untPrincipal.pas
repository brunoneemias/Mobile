unit untPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure ListBoxItem6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses untAstroWorld, untMaquinaDoTempo, untPrévias, untBobby, untToken;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm1.ListBoxItem4Click(Sender: TObject);
begin
  Form5.Show
end;

procedure TForm1.ListBoxItem6Click(Sender: TObject);
begin
  Form6.Show;
end;

end.
