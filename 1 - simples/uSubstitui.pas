unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  I, J: Integer;
begin
  Result := '';

  I := 1;
  repeat

    J := 1;
    repeat
      if aStr[I+J-1] <> aVelho[J] then
        Break;
      J := J+1;
    until (J > Length(aVelho));

    if (J > Length(aVelho)) then
    begin
      I := I+Length(aVelho)-1;

      Result := Result+aNovo;
    end
    else
      Result := Result+aStr[I];

    I := I+1;
  until (I > Length(aStr));
end;
  
end.

