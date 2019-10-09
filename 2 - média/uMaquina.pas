unit uMaquina;

interface

uses
  uIMaquina, Classes, uTroco;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

uses
  Math;

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  Tipo: TCedula;
  Quantidade: Integer;
  Restante: Double;
begin 
  Result := TList.Create;

  Restante := aTroco;

  for Tipo := ceNota100 to ceMoeda1 do
  begin
    Quantidade := Math.Floor(Restante / CValorCedula[Tipo]);

    Restante := Restante-CValorCedula[Tipo]*Quantidade;

    if (Quantidade > 0) then
        Result.Add(TTroco.Create(Tipo, Quantidade));
  end;
end;

end.

