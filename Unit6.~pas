unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, jpeg;

type
  TForm6 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    Chart1: TChart;
    Series1: TBarSeries;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
      uses
      Unit3;
{$R *.dfm}

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Series1.Clear;
   Form3.show;
   Form6.Hide;
   label1.Visible:=True;
   Chart1.Visible:=False;
   Timer1.Enabled:=False;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
     label1.Visible:=False;
     Chart1.Visible:=True;
end;



end.
