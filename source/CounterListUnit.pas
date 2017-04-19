unit CounterListUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
{$IFDEF VER140} Variants, {$ENDIF}
{$IFDEF CIL}
  Types, System.ComponentModel, Variants,
{$ELSE}
{$ENDIF}
  Grids, DBGridEh, Buttons, Db, DBTables, ExtCtrls, ComCtrls;

type
  TCounterListForm = class(TForm)
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Query1: TQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1ColWidthsChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure OnActivate(var msg: TWMActivate); message WM_ACTIVATE;
    { Private declarations }
  public
    function Execute(HostControl: TControl; var d1: String; var d2: String):Boolean;
    { Public declarations }
  end;

var
  CounterListForm: TCounterListForm;

implementation

{$R *.DFM}

{ TForm2 }

procedure AdjustDropDownForm(AControl : TControl; HostControl: TControl);
var
   WorkArea: TRect;
   HostP, PDelpta: TPoint;
begin
{$IFDEF CIL}
   SystemParametersInfo(SPI_GETWORKAREA,0,WorkArea,0);
{$ELSE}
   SystemParametersInfo(SPI_GETWORKAREA,0,@WorkArea,0);
{$ENDIF}
   HostP := HostControl.ClientToScreen(Point(0,0));
   PDelpta := AControl.ClientToScreen(Point(0,0));

   AControl.Left := HostP.x - 120;
   AControl.Top := HostP.y + HostControl.Height + 1;

   if (AControl.Width > WorkArea.Right - WorkArea.Left) then
     AControl.Width := WorkArea.Right - WorkArea.Left;

   if (AControl.Left + AControl.Width > WorkArea.Right) then
     AControl.Left := WorkArea.Right - AControl.Width;
   if (AControl.Left < WorkArea.Left) then
     AControl.Left := WorkArea.Left;


   if (AControl.Top + AControl.Height > WorkArea.Bottom) then
   begin
     if (HostP.y - WorkArea.Top > WorkArea.Bottom - HostP.y - HostControl.Height) then
       AControl.Top := HostP.y - AControl.Height;
   end;

   if (AControl.Top < WorkArea.Top) then
   begin
     AControl.Height := AControl.Height - (WorkArea.Top - AControl.Top);
     AControl.Top := WorkArea.Top;
   end;

   if (AControl.Top + AControl.Height > WorkArea.Bottom) then
   begin
     AControl.Height := WorkArea.Bottom - AControl.Top;
   end;

end;

function TCounterListForm.Execute(HostControl: TControl; var d1: String; var d2: String):Boolean;
begin
  Query1.ParamByName('CounterNo').Value := StrToInt(d1);
  AdjustDropDownForm(Self,HostControl);
  Query1.Active := True;
  Visible := True;
  ModalResult := mrCancel;
  while (Visible) do Application.ProcessMessages;
  Result := False;
  if ModalResult = mrOk then
  begin
    d2 := Query1.FieldByName('Len').AsString;
    Result := True;
  end;
  Query1.Active := False;  
end;

procedure TCounterListForm.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
  Close;
end;

procedure TCounterListForm.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TCounterListForm.DBGridEh1DblClick(Sender: TObject);
begin
  SpeedButton1Click(Sender);
end;

procedure TCounterListForm.OnActivate(var msg: TWMActivate);
begin
  inherited;
  if (msg.Active=WA_INACTIVE) then
    Close;
end;

procedure TCounterListForm.DBGridEh1ColWidthsChanged(Sender: TObject);
begin
  ClientWidth := DBGridEh1.Columns[0].Width + DBGridEh1.Columns[1].Width +
  (DBGridEh1.Width-DBGridEh1.ClientWidth) + Panel1.Width + 3;
end;

procedure TCounterListForm.FormShow(Sender: TObject);
begin
  DBGridEh1ColWidthsChanged(Sender);
end;

end.
