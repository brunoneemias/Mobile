unit untPrincial;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.ListView,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.TabControl, FMX.ListBox,
  FMX.Edit, FMX.Layouts;

type
  TfrmPrincipal = class(TForm)
    tbcPrincipal: TTabControl;
    tabVinhos: TTabItem;
    tabDetalhes: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Button1: TButton;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    ToolBar2: TToolBar;
    Label2: TLabel;
    Button2: TButton;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    btnSalvar: TButton;
    btnExcluir: TButton;
    procedure ListView1DeleteItem(Sender: TObject; AIndex: Integer);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Button1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses untDM;



procedure TfrmPrincipal.btnExcluirClick(Sender: TObject);
begin
  dm.fdqVinhos.Delete;
  tbcPrincipal.Previous();
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
begin
  dm.fdqVinhos.Post;
  tbcPrincipal.Previous();
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  dm.fdqVinhos.Append;
  tbcPrincipal.Next();
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  tbcPrincipal.Previous();
end;

procedure TfrmPrincipal.ListView1DeleteItem(Sender: TObject; AIndex: Integer);
begin
 dm.fdqVinhos.Delete;
end;

procedure TfrmPrincipal.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  tbcPrincipal.Next();
end;

end.
