program QS6;

{$APPTYPE CONSOLE}

uses
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas';

{$R *.RES}

var
  Substitui: TSubstitui;

begin
  Substitui := TSubstitui.Create;
  Writeln(Substitui.Substituir('O rato roeu a roupa do rei de roma', 'ro', 'teste'));
  Readln;
end.

