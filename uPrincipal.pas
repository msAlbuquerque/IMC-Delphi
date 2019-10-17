unit uPrincipal;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, UnitIMC;

type
  TForm1 = class(TForm)
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SB_CalcularIMC: TSpeedButton;
    SB_Novo_Calculo: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SB_Novo_CalculoClick(Sender: TObject);
    procedure Informar_dados(Sender: TObject);
    procedure SB_CalcularIMCClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Calculadora_IMC: TCalculadora_IMC;

implementation

{$R *.dfm}

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= MessageDLG('Deseja realmente fechar?',MTConfirmation,[MBYES,MBNO],0)=MRYES;
end;

procedure TForm1.Informar_dados(Sender: TObject);
begin
  Calculadora_IMC:= TCalculadora_IMC.Create;
  Calculadora_IMC.Peso:= StrToFloat(EDit1.Text);
  Calculadora_IMC.Altura:= StrToFloat(Edit2.Text);
end;

procedure TForm1.SB_CalcularIMCClick(Sender: TObject);
begin
  Informar_dados(Sender);
  Calculadora_IMC.Calcular_IMC(Calculadora_IMC.Peso,Calculadora_IMC.Altura);
  Calculadora_IMC.Retornar_IMC(Calculadora_IMC.IMC);
  Edit3.Text:= FloatToStr(Calculadora_IMC.IMC);
  Edit4.Text:= Calculadora_IMC.Classifica;
end;

procedure TForm1.SB_Novo_CalculoClick(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit1.SetFocus;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

end.
