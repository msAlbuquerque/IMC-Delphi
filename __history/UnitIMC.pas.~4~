unit UnitIMC;

interface
  type
    TCalculadora_IMC = class(TObject)
    Peso:double;
    Altura:double;
    IMC:double;
    Classifica:string;
    function Calcular_IMC(Peso,Altura:Double):Double;
    function Retornar_IMC(IMC:Double):String;
  end;

implementation


{ TCalculadora_IMC }

function TCalculadora_IMC.Calcular_IMC(Peso, Altura: Double): Double;
begin
  IMC:=(Peso /(Altura*Altura));
  Result:= IMC;
end;

function TCalculadora_IMC.Retornar_IMC(IMC: Double): String;
begin
  if IMC < 18.5 then
    Classifica := 'Abaixo do Peso'
  else
    if IMC <= 24.9 then
      Classifica := 'Peso Normal'
    else
      if IMC <= 29.9 then
        Classifica := 'Sobrepeso'
      else
        if IMC <= 34.9 then
          Classifica := 'Obesidade Grau I'
        else
          if IMC <= 39.9 then
            Classifica := 'Obesidade Grau II'
          else
            Classifica := 'Obesidade Grau III';
  Result:=Classifica;
end;

end.
