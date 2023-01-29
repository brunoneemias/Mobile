unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, FMX.Objects, FMX.MultiView, FMX.StdCtrls,
  FMX.Controls.Presentation, Unit4, Unit3;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    btnMenu: TButton;
    MultiView1: TMultiView;
    Image1: TImage;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    Frame31: TFrame3;
    Frame41: TFrame4;
    ListBoxItem3: TListBoxItem;
    Image2: TImage;
    Label1: TLabel;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses Unit2;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  form2.show;
  MultiView1.HideMaster;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
  frame31.Visible := True;
  frame41.Visible := False;
  MultiView1.HideMaster;
end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin
  frame31.Visible := False;
  frame41.Visible := True;
  MultiView1.HideMaster;
end;

end.
