program QC2;
   
{$APPTYPE CONSOLE}

uses
  SysUtils,
  uComponente in 'uComponente.pas',
  uFrame in 'uFrame.pas',
  uBotao in 'uBotao.pas',
  uMemo in 'uMemo.pas',
  uLabel in 'uLabel.pas';

{$R *.RES}

var
  Frame1, Frame2: TFrame;
  btn: TBotao;
  mmo: TMemo;
  lbl: TLabel;

procedure MostrarDadosComponente(aComponente: TComponente);
begin
  Writeln('ClassName: ', aComponente.ClassName);
  Writeln('X, Y: ', aComponente.X, ', ', aComponente.Y);
  Writeln('Altura, Largura: ', aComponente.Altura, ', ', aComponente.Largura);
  Writeln;
end;

begin
  try
    Frame1 := TFrame.Create;
    Frame1.X := 0;
    Frame1.Y := 0;
    Frame1.Altura := 1000;
    Frame1.Largura := 1000;

    Frame2 := TFrame.Create;
    Frame2.X := 0;
    Frame2.Y := 0;
    Frame2.Altura := 1000;   
    Frame2.Largura := 1000;
                   
    btn := TBotao.Create;
    btn.X := 900;
    btn.Y := 995;
    btn.Altura := 5;
    btn.Largura := 100;

    mmo := TMemo.Create;
    mmo.X := 0;
    mmo.Y := 10;
    mmo.Altura := 985;
    mmo.Largura := 1000;  

    lbl := TLabel.Create;
    lbl.X := 0;
    lbl.Y := 0;
    lbl.Altura := 10;
    lbl.Largura := 255;

    Frame2.AdicionaComponente(btn);
    Frame2.AdicionaComponente(mmo);
    Frame2.AdicionaComponente(lbl);

    Frame1.AdicionaComponente(Frame2);

    Writeln('Antes');  
    Writeln;
    MostrarDadosComponente(Frame2);
    MostrarDadosComponente(btn);
    MostrarDadosComponente(mmo);
    MostrarDadosComponente(lbl);
                          
    Frame1.X := 10;
    Frame1.Y := 10;
    Frame1.Altura := 100;
    Frame1.Largura := 10000;

    Writeln('Depois');
    Writeln;
    MostrarDadosComponente(Frame2);
    MostrarDadosComponente(btn);
    MostrarDadosComponente(mmo);
    MostrarDadosComponente(lbl);



    Readln;
  except
    on E : Exception do
    begin
      Writeln(E.message);  
      Readln;
    end; 
  end;
end.

