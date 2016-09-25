unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Image1: TImage;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    MediaPlayer8: TMediaPlayer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
       Uses
       Unit1,Unit3;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
    Form1.Show;
    Form4.Hide;
    Form3.Label3.Visible:=False;
     Form3.label1.Visible:=False;
   Form3.image5.Visible:=False;
   Form3.image6.Visible:=False;
   Form3.image7.Visible:=False;
   Form3.image8.Visible:=False;
   Form3.BitBtn1.Visible:=False;
   Form3.BitBtn2.Visible:=False;
   Form3.BitBtn3.Visible:=False;
   Form3.BitBtn4.Visible:=False;
   Form3.Button1.Visible:=True;
   Form3.Button2.Visible:=False;
   Form3.image2.Visible:=False;
   Form3.image3.Visible:=False;
   Form3.image4.Visible:=False;
   Form3.label3.Caption:='';
   Form3.label2.Visible:=False;
   if Count=16 then MediaPlayer1.Stop;
   if Count=15 then MediaPlayer1.Stop;
   if (Count>=1) and (Count<4) then Form3.MediaPlayer7.Stop;
   if (Count>4) and (Count<8) then Form3.MediaPlayer7.Stop;
   if (Count>8) and (Count<12) then Form3.MediaPlayer7.Stop;
   if (Count>12) and (Count<16) then Form3.MediaPlayer7.Stop;
   Count:=1;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
   Form4.Button2.Visible:=False;
   Form4.Button1.Visible:=True;
   Form4.Hide;
   Form3.Show;
   if Count=13 then Form4.MediaPlayer8.Stop;
   if Count=5 then Form4.MediaPlayer8.Stop;
   if Count=9 then Form4.MediaPlayer8.Stop;
end;

procedure TForm4.MediaPlayer1Notify(Sender: TObject);
begin
      Form1.Show;
    Form4.Hide;
    Form3.Label3.Visible:=False;
     Form3.label1.Visible:=False;
   Form3.image5.Visible:=False;
   Form3.image6.Visible:=False;
   Form3.image7.Visible:=False;
   Form3.image8.Visible:=False;
   Form3.BitBtn1.Visible:=False;
   Form3.BitBtn2.Visible:=False;
   Form3.BitBtn3.Visible:=False;
   Form3.BitBtn4.Visible:=False;
   Form3.Button1.Visible:=True;
   Form3.Button2.Visible:=False;
   Form3.image2.Visible:=False;
   Form3.image3.Visible:=False;
   Form3.image4.Visible:=False;
   Form3.label3.Caption:='';
   Form3.label2.Visible:=False;

   Count:=1;
end;

end.
