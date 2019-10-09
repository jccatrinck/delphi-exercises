unit uMemo;

interface

uses
  uComponente;

type

  TMemo = class(TComponente)
  protected
    procedure Reposicionar(aX, aY: Integer); override;
    procedure Redimensionar(aAltura, aLargura: Integer); override;
  end;

implementation   

{ TMemo }

procedure TMemo.Redimensionar(aAltura, aLargura: Integer);
begin    
  inherited;
  if Parent.Altura > 0 then
    Self.Altura := (Self.Altura*aAltura) div Parent.Altura;
  if Parent.Largura > 0 then
    Self.Largura := (Self.Largura*aLargura) div Parent.Largura;
end;

procedure TMemo.Reposicionar(aX, aY: Integer);
begin
  inherited;
  Self.X := Self.X+aX-Parent.X;
  Self.Y := Self.Y+aY-Parent.Y;
end;

end.

