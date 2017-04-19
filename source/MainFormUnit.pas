unit MainFormUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants,
  StdCtrls, DBCtrls, ExtCtrls, Grids, DBGridEh, ComCtrls, Db, DBTables,
  Buttons, DBGrids, PrViewEh, PrnDbgeh, ToolWin, Menus, DBGridEhImpExp,
  Mask, DBLookupEh, DBCtrlsEh, ImgList, EhLibBDE, PropStorageEh, AdPacket,
  OoMisc, AdPort, StrUtils, ComObj;

type
  TMainForm = class(TForm)
    DBGridEh2: TDBGridEh;
    Database1: TDatabase;
    DataSource1: TDataSource;
    Table1: TTable;
    Database2: TDatabase;
    Timer1: TTimer;
    ApdComPort1: TApdComPort;
    ApdDataPacket1: TApdDataPacket;
    SelectDocSpisanieQuery: TQuery;
    UpdateCounterQuery: TQuery;
    Edit1: TEdit;
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawFooterCell(Sender: TObject; DataCol,
      Row: Integer; Column: TColumnEh; Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure Query1UpdateRecord(DataSet: TDataSet;  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure Timer1Timer(Sender: TObject);
    procedure ApdDataPacket1StringPacket(Sender: TObject; Data: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    function TestSumm(Data : string) : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  CurrentCounter : integer;

implementation

uses TapeListUnit, DocListUnit, CounterListUnit;

{$R *.DFM}

procedure TMainForm.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Rect.Top = DBGridEh2.CellRect(DBGridEh2.Col,DBGridEh2.Row).Top) and (not (gdFocused in State) or not DBGridEh2.Focused) then
    DBGridEh2.Canvas.Brush.Color := clAqua;
  DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TMainForm.DBGridEh2DrawFooterCell(Sender: TObject; DataCol,
  Row: Integer; Column: TColumnEh; Rect: TRect; State: TGridDrawState);
begin
  DBGridEh2.DefaultDrawFooterCell(Rect,DataCol,Row,Column,State);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  CurrentCounter := 1;
end;

procedure TMainForm.DBGridEh2EditButtonClick(Sender: TObject);
var
  d1,d2,d3 : String;
  ResOpen : boolean;
  Ole1C, DocSpisanie : OleVariant;
begin
  if DBGridEh2.SelectedField = DBGridEh2.Columns[2].Field then
    begin
      if DocListForm.Execute(DBGridEh2.InplaceEditor,d1,d2) then
        begin
          Table1.Edit;
          Table1.Fields.FieldByName('DocDate').AsString := d1;
          Table1.Fields.FieldByName('DocNo').AsString := d2;
        end;
    end;
  if DBGridEh2.SelectedField = DBGridEh2.Columns[5].Field then
    begin
      if TapeListForm.Execute(DBGridEh2.InplaceEditor,d1,d2,d3) then
        begin
          Table1.Edit;
          Table1.Fields.FieldByName('RollNo').AsString := d1;
          Table1.Fields.FieldByName('RollDate').AsString := d2;
          Table1.Fields.FieldByName('RollDocNo').AsString := d3;
        end;
    end;
  if DBGridEh2.SelectedField = DBGridEh2.Columns[6].Field then
    begin
      d1 := Table1.Fields.FieldByName('CounterNo').AsString;
      if CounterListForm.Execute(DBGridEh2.InplaceEditor,d1,d2) then
        begin
          Table1.Edit;
          Table1.Fields.FieldByName('Len').AsString := d2;
        end;
    end;
    Table1.Refresh;
  if DBGridEh2.SelectedField = DBGridEh2.Columns[6].Field then
    begin
      if MessageDlg('Провести изменённый документ (счётчик ' + d1 + ')?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Ole1C := Unassigned;
          try
            Ole1C := CreateOleObject('V77.Application');
            ResOpen := Ole1C.Initialize(Ole1C.RMTrade, '/DF:\1CV77\ATCDEMO /NАдмин /P', '');
          except
          end;
          if ResOpen then
            begin
{              DocSpisanie := Ole1C.CreateObject('Документ.СписаниеВПроизводство');
              SelectDocSpisanieQuery.SQL.Clear;
              SelectDocSpisanieQuery.SQL.Add('select * from ... where ...;');
              SelectDocSpisanieQuery.Open;
              DocSpisanie.ВыбратьПоНомеру(SelectDocSpisanieQuery.FieldByName('NUM').asString, SelectDocSpisanieQuery.FieldByName('DATA').asDateTime);
              SelectDocSpisanieQuery.Close;
              DOCSpisanie.УстановитьАтрибут('ДлинаСчетчик', ....);
              if DocSpisanie.Записать<>1 then MessageBox(0, 'Не могу записать', 'Ошибка', mb_OK+MB_TASKMODAL);
              if DocSpisanie.Провести<>1 then MessageBox(0, 'Не могу провести', 'Ошибка', mb_OK+MB_TASKMODAL);}
            end else MessageBox(0, 'Не могу открыть 1С', 'Ошибка', mb_OK+MB_TASKMODAL);
          Ole1C := Unassigned;          
        end;
    end;
end;

procedure TMainForm.Query1UpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
//
end;

function TMainForm.TestSumm(Data : string) : boolean;
var
  Summ, Count : integer;
begin
  Summ := 0;
  for Count := 1 to 7 do Summ := Summ + Ord(Data[Count]);
  if RightStr(Format('%X', [Summ]), 2) = RightStr(Data, 2) then Result := True else Result := False;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  ApdComPort1.PutString('&0' + IntToStr(CurrentCounter) + 'T' + #13);
//  if CurrentCounter < 6 then Inc(CurrentCounter) else CurrentCounter := 1;
end;

procedure TMainForm.ApdDataPacket1StringPacket(Sender: TObject; Data: String);
var
  CurrentLen : integer;
begin
  if StrToInt(Data[1] + Data[2]) = CurrentCounter then
    begin
      Delete(Data, 1, 3);
      if TestSumm(Data) then
        CurrentLen := StrToInt(LeftStr(Data, 7));
        begin
          UpdateCounterQuery.Close;
          UpdateCounterQuery.SQL.Clear;
          UpdateCounterQuery.SQL.Add('select Len from Temp where (CounterNo = ' + IntToStr(CurrentCounter) + ') and (Fin = 0);');
          UpdateCounterQuery.Open;
          if UpdateCounterQuery.FieldByName('Len').AsInteger < CurrentLen then
            begin
              UpdateCounterQuery.Close;
              UpdateCounterQuery.SQL.Clear;
              UpdateCounterQuery.SQL.Add('update Temp Set Dat = Now, Len = ' + IntToStr(CurrentLen) + ' where (CounterNo = ' + IntToStr(CurrentCounter) + ') and (Fin = 0);');
              UpdateCounterQuery.ExecSQL;
              UpdateCounterQuery.Close;
            end else
            begin
              UpdateCounterQuery.Close;
              UpdateCounterQuery.SQL.Clear;
              UpdateCounterQuery.SQL.Add('update Temp Set Fin = 1 where (CounterNo = ' + IntToStr(CurrentCounter) + ') and (Fin = 0);');
              UpdateCounterQuery.ExecSQL;
              UpdateCounterQuery.Close;
              UpdateCounterQuery.SQL.Clear;
              UpdateCounterQuery.SQL.Add('insert into Temp values (Now, ' + IntToStr(CurrentCounter) + ', ' + IntToStr(CurrentLen) + ', 0)');
              UpdateCounterQuery.ExecSQL;
              UpdateCounterQuery.Close;
            end;
        end;
      UpdateCounterQuery.Close;
      UpdateCounterQuery.SQL.Clear;
      UpdateCounterQuery.SQL.Add('commit;');
      UpdateCounterQuery.ExecSQL;
      UpdateCounterQuery.Close;
      Edit1.Text := IntToStr(StrToInt(LeftStr(Data, 7)));
    end;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
  ApdDataPacket1.Enabled := False;
  ApdComPort1.Open := False;
  Table1.Active := False;
  Database1.Connected := False;
  Database2.Connected := False;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  Database1.Connected := True;
  Database2.Connected := True;
  Table1.Active := True;
  try
    ApdComPort1.Open := True;
    Timer1.Enabled := True;
  except
    MessageBox(0, 'Не могу открыть порт COM1', 'Ошибка', mb_OK+MB_TASKMODAL);
  end;
end;

initialization

end.


