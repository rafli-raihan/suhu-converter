unit konversisuhu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonKON: TButton;
    ButtonHapus: TButton;
    ButtonKeluar: TButton;
    EditC: TEdit;
    EditF: TEdit;
    EditR: TEdit;
    EditK: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonKeluarClick(Sender: TObject);
    procedure ButtonKONClick(Sender: TObject);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonKONClick(Sender: TObject);
var c,r,f,k:real;
begin
  c:=StrToFloat(EditC.text);
  r:=c/5*4;
  f:=c/5*9+32;
  k:=c+273;
  EditF.Text:=FloatToStr(f);
  EditR.Text:=FloatToStr(r);
  EditK.Text:=FloatToStr(k);
end;

procedure TForm1.ButtonHapusClick(Sender: TObject);
begin
  EditC.Clear;
  EditF.Clear;
  EditR.Clear;
  EditK.Clear;
end;

procedure TForm1.ButtonKeluarClick(Sender: TObject);
begin
  application.Terminate;
end;

end.

