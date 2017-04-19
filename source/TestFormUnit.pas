unit TestFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OoMisc, AdPort, AdPacket, StdCtrls, StrUtils, ComObj, ExtCtrls, ComCtrls;


type
  LastCommand = (T, G, C, X, K, Y, O, N, M, Z, R, V, L, A);

  TTestForm = class(TForm)
    ApdComPort1: TApdComPort;
    ApdDataPacket1: TApdDataPacket;
    Label1: TLabel;
    edAddr: TEdit;
    btSaveTrace: TButton;
    lbAnswer: TLabel;
    btT: TButton;
    btG: TButton;
    btC: TButton;
    btX: TButton;
    btK: TButton;
    btY: TButton;
    btO: TButton;
    btN: TButton;
    btM: TButton;
    btZ: TButton;
    btR: TButton;
    btV: TButton;
    btL: TButton;
    btA: TButton;
    edVN: TEdit;
    edLN: TEdit;
    edNewAddr: TEdit;
    ed_T: TEdit;
    ed_G: TEdit;
    ed_C: TEdit;
    ed_X: TEdit;
    ed_K: TEdit;
    ed_Y: TEdit;
    ed_O: TEdit;
    ed_N: TEdit;
    ed_V: TEdit;
    ed_L: TEdit;
    procedure btSaveTraceClick(Sender: TObject);
    procedure btTClick(Sender: TObject);
    procedure btGClick(Sender: TObject);
    procedure btCClick(Sender: TObject);
    procedure btXClick(Sender: TObject);
    procedure btKClick(Sender: TObject);
    procedure btYClick(Sender: TObject);
    procedure btOClick(Sender: TObject);
    procedure btNClick(Sender: TObject);
    procedure btMClick(Sender: TObject);
    procedure btVClick(Sender: TObject);
    procedure btLClick(Sender: TObject);
    procedure btZClick(Sender: TObject);
    procedure btRClick(Sender: TObject);
    procedure btAClick(Sender: TObject);
    procedure ApdDataPacket1StringPacket(Sender: TObject; Data: String);
    procedure FormShow(Sender: TObject);
  private
    function TestSumm(Data : string) : boolean;
  public
    { Public declarations }
  end;

var
  TestForm: TTestForm;
  LastCmd : LastCommand;

implementation

{$R *.dfm}

function TTestForm.TestSumm(Data : string) : boolean;
var
  Summ, Count : integer;
begin
  Summ := 0;
  for Count := 1 to 7 do Summ := Summ + Ord(Data[Count]);
  if RightStr(Format('%X', [Summ]), 2) = RightStr(Data, 2) then Result := True else Result := False;
end;

procedure TTestForm.btSaveTraceClick(Sender: TObject);
begin
  ApdComPort1.Tracing := tlDump;
  ApdComPort1.Tracing := tlOn;
end;

procedure TTestForm.btTClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'T' + #13);
  LastCmd := T;
end;

procedure TTestForm.btGClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'G' + #13);
  LastCmd := G;
end;

procedure TTestForm.btCClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'C' + #13);
  LastCmd := C;
end;

procedure TTestForm.btXClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'X' + #13);
  LastCmd := X;
end;

procedure TTestForm.btKClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'K' + #13);
  LastCmd := K;
end;

procedure TTestForm.btYClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'Y' + #13);
  LastCmd := Y;
end;

procedure TTestForm.btOClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'O' + #13);
  LastCmd := O;
end;

procedure TTestForm.btNClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'N' + #13);
  LastCmd := N;
end;

procedure TTestForm.btMClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'M' + #13);
  LastCmd := M;
end;

procedure TTestForm.btVClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'V' + edVN.Text + #13);
  LastCmd := V;
end;

procedure TTestForm.btLClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'L' + edLN.Text + #13);
  LastCmd := L;
end;

procedure TTestForm.btZClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'Z' + #13);
  LastCmd := Z;
end;

procedure TTestForm.btRClick(Sender: TObject);
begin
  ApdComPort1.PutString('&' + edAddr.Text + 'R' + #13);
  LastCmd := R;
end;

procedure TTestForm.btAClick(Sender: TObject);
begin
  ApdComPort1.PutString('&FFA' + edNewAddr.Text + #13);
  LastCmd := A;
end;

procedure TTestForm.ApdDataPacket1StringPacket(Sender: TObject;
  Data: String);
begin
  lbAnswer.Caption := Data;
  if Data[1] + Data[2] = edAddr.Text then
    begin
      Delete(Data, 1, 3);
      case LastCmd of
        T: if TestSumm(Data) then ed_T.Text := LeftStr(Data, 7);
        G: if TestSumm(Data) then ed_G.Text := LeftStr(Data, 7);
        C: if TestSumm(Data) then ed_C.Text := LeftStr(Data, 7);
        X: if TestSumm(Data) then ed_X.Text := LeftStr(Data, 7);
        K: if TestSumm(Data) then ed_K.Text := LeftStr(Data, 7);
        Y: if TestSumm(Data) then ed_Y.Text := LeftStr(Data, 7);
        O: if TestSumm(Data) then ed_O.Text := LeftStr(Data, 7);
        N: if TestSumm(Data) then ed_N.Text := LeftStr(Data, 7);
        V: if TestSumm(Data) then ed_V.Text := LeftStr(Data, 7);
        L: if TestSumm(Data) then ed_L.Text := LeftStr(Data, 7);
      end;
    end;
end;

procedure TTestForm.FormShow(Sender: TObject);
begin
  try
    ApdComPort1.Open := True;
  except
    MessageBox(0, 'Не могу открыть порт COM1', 'Ошибка', mb_OK+MB_TASKMODAL);
  end;
end;

end.
