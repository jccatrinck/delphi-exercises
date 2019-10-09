unit uFrame;

interface

uses
  uComponente;

type

  TFrame = class(TComponente)
  protected
    procedure Reposicionar(aX, aY: Integer); override;
    procedure Redimensionar(aAltura, aLargura: Integer); override;
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure RemoveComponente(aComponente: TComponente); override;
  end;

  {
  Deverá ter sua largura e sua altura redimensionados proporcionalmente as
  novas largura e altura do Formulario além de ser reposicionado nas coordenadas
  x e y proporcionais as novas dimensões do Formulario;
  }

implementation

{ TFrame }

procedure TFrame.Redimensionar(aAltura, aLargura: Integer);
begin    
  inherited;
  if Parent.Altura > 0 then
    Self.Altura := (Self.Altura*aAltura) div Parent.Altura;
  if Parent.Largura > 0 then
    Self.Largura := (Self.Largura*aLargura) div Parent.Largura;
end;

procedure TFrame.Reposicionar(aX, aY: Integer);
begin
  inherited;
  Self.X := Self.X+aX-Parent.X;
  Self.Y := Self.Y+aY-Parent.Y;
end;

procedure TFrame.AdicionaComponente(aComponente: TComponente);
begin
  aComponente.Parent := Self;
  SetLength(FComponentes, Length(FComponentes)+1);
  FComponentes[High(FComponentes)] := aComponente;
end;

procedure TFrame.RemoveComponente(aComponente: TComponente);
var
  I, J: Integer;
begin
  for I := Low(FComponentes) to High(FComponentes) do
  begin
    if FComponentes[I] = aComponente then
    begin
      for J := I to High(FComponentes)-1 do
        FComponentes[I] := FComponentes[I+1];

      SetLength(FComponentes, Length(FComponentes)-1);
    end;
  end;
end;

end.

