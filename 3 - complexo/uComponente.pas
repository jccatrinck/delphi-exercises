unit uComponente;

interface

uses
  Classes ;

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class(TObject)
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FParent: TComponente;
    procedure SetX(aX: Integer);
    procedure SetY(aY: Integer);
    procedure SetAltura(aAltura: Integer);
    procedure SetLargura(aLargura: Integer);
  protected       
    FComponentes: TComponenteArray;
    procedure Reposicionar(aX, aY: Integer); virtual;
    procedure Redimensionar(aAltura, aLargura: Integer); virtual;
  public
    property Parent: TComponente read FParent write FParent;
    property X: Integer read FX write SetX;
    property Y: Integer read FY write SetY;
    property Altura: Integer read FAltura write SetAltura; 
    property Largura: Integer read FLargura write SetLargura;
    constructor Create;
    procedure AdicionaComponente(aComponente: TComponente); virtual; abstract;
    procedure RemoveComponente(aComponente: TComponente); virtual; abstract;
  end;

implementation

{ TComponente } 

constructor TComponente.Create;
begin
  FAltura := 1;
  FLargura := 1;
end;

procedure TComponente.SetAltura(aAltura: Integer);
var
  I: Integer;
begin
  for I := Low(FComponentes) to High(FComponentes) do
    FComponentes[I].Redimensionar(aAltura, FLargura);
  FAltura := aAltura;
end;

procedure TComponente.SetLargura(aLargura: Integer);
var
  I: Integer;
begin
  for I := Low(FComponentes) to High(FComponentes) do
    FComponentes[I].Redimensionar(FAltura, aLargura);
  FLargura := aLargura;
end;

procedure TComponente.SetX(aX: Integer);
var
  I: Integer;
begin
  for I := Low(FComponentes) to High(FComponentes) do
    FComponentes[I].Reposicionar(aX, FY);

  FX := aX;
end;

procedure TComponente.SetY(aY: Integer);
var
  I: Integer;
begin
  for I := Low(FComponentes) to High(FComponentes) do
    FComponentes[I].Reposicionar(FX, aY);

  FY := aY;
end;

procedure TComponente.Redimensionar(aAltura, aLargura: Integer);
begin
  // TO-DO: Fire related event
end;

procedure TComponente.Reposicionar(aX, aY: Integer);
begin
  // TO-DO: Fire related event
end;

end.

