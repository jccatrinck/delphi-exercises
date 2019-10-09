unit uBotao;

interface

uses
  uComponente;

type

  TBotao = class(TComponente)
  protected
    procedure Reposicionar(aX, aY: Integer); override;
    procedure Redimensionar(aAltura, aLargura: Integer); override;
  end;

implementation

{ TBotao }

procedure TBotao.Redimensionar(aAltura, aLargura: Integer);
begin  
  inherited;   
  if Parent.Largura > 0 then
    Self.Largura := (Self.Largura*aLargura) div Parent.Largura;
end;

procedure TBotao.Reposicionar(aX, aY: Integer);
begin      
  inherited;
  Self.X := Self.X+aX-Parent.X;
  Self.Y := Self.Y+aY-Parent.Y;
end;

end.

