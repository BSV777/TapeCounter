program TapeCounter;

uses
  Forms,
  DocListUnit in 'DocListUnit.pas' {DocListForm},
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  TapeListUnit in 'TapeListUnit.pas' {TapeListForm},
  CounterListUnit in 'CounterListUnit.pas' {CounterListForm},
  TestFormUnit in 'TestFormUnit.pas' {TestForm},
  SysUtils;

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '—чЄтчик ленты';
  if (ParamCount > 0) and (LowerCase(ParamStr(1)) = '/t') then
    begin
      Application.CreateForm(TTestForm, TestForm);
    end else
    begin
      Application.CreateForm(TMainForm, MainForm);
      Application.CreateForm(TDocListForm, DocListForm);
      Application.CreateForm(TTapeListForm, TapeListForm);
      Application.CreateForm(TCounterListForm, CounterListForm);
    end;
  Application.Run;
end.
