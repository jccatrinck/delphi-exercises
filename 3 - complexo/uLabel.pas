unit uLabel;

interface

uses
  uComponente;

type

  TLabel = class(TComponente)  
  protected
    procedure Reposicionar(aX, aY: Integer); override;
  end;

  {
  nao deverá ser redimensionado mas deverá ser reposicionado nas coordenadas
  x e y de acordo com as novas dimensoes do Formulario;
- T: Igual ao TMemo.
  }

implementation

{ TLabel }

procedure TLabel.Reposicionar(aX, aY: Integer);
begin     
  inherited;
  Self.X := Self.X+aX-Parent.X;
  Self.Y := Self.Y+aY-Parent.Y;
end;

end.

