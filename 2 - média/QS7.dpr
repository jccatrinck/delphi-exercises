program QS7;
   
{$APPTYPE CONSOLE}

uses
  Classes,
  SysUtils,
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas';

{$R *.RES}

var
  Maquina: TMaquina;
  TrocoList: TList;
  I: Integer;

begin
  Maquina := TMaquina.Create;
  TrocoList := Maquina.MontarTroco(125.15);

  for I := 0 to TrocoList.Count-1 do
  begin
    Writeln(TTroco(TrocoList[I]).Quantidade, 'x ', Format('%.2f', [CValorCedula[TTroco(TrocoList[I]).Tipo]]));
  end;
  Readln; 
end.

