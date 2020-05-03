unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    SQLConnection1: TSQLConnection;
    btnTest: TButton;
    Memo1: TMemo;
    procedure btnTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses
  uServiceClient, uMembers;

procedure TFrmMain.btnTestClick(Sender: TObject);
var
  ServerMethods: TServerMethodsClient;
  Members: TMembers;
begin
  if not SQLConnection1.Connected then
    SQLConnection1.Connected := True;

  ServerMethods := TServerMethodsClient.Create(SQLConnection1.DBXConnection);
  Memo1.Lines.Add(ServerMethods.EchoString('qwerty'));
  Memo1.Lines.Add(ServerMethods.ReverseString('qwerty'));

  Members := ServerMethods.GetMember(0);
  Memo1.Lines.Add(Members.FirstName + ' ' + Members.LastName + ', ' + Members.Age.ToString);

  Members := ServerMethods.GetMember(1);
  Memo1.Lines.Add(Members.FirstName + ' ' + Members.LastName + ', ' + Members.Age.ToString);

  Members := ServerMethods.GetMember(2);
  if Members <> nil then
    Memo1.Lines.Add(Members.FirstName + ' ' + Members.LastName + ', ' + Members.Age.ToString);
end;

end.
