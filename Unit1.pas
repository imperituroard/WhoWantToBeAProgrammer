unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Menus, MPlayer;

type
  TForm1 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    MediaPlayer3: TMediaPlayer;
    procedure BitBtn2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);

    procedure MediaPlayer3Notify(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
     uses
       Unit2,Unit3,Unit7;
{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N1Click(Sender: TObject);
begin

    Form2.Show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);

begin
   Form1.Hide;
   Form3.Show;
   //Form1.MediaPlayer1.Stop;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
   Aboutbox.show;
   Form1.Hide;
end;



procedure TForm1.MediaPlayer3Notify(Sender: TObject);
begin
    //  Form1.MediaPlayer1.FileName:='Data/intro.wav';
     //      Form1.MediaPlayer1.Open;
      //    Form1.MediaPlayer1.Play;
end;
           //test
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //   Form1.MediaPlayer1.Stop;
    //test
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
     Form1.MediaPlayer3.FileName:='Data/intro.wav';
           Form1.MediaPlayer3.Open;
           Form1.MediaPlayer3.Play;
end;

procedure TForm1.FormHide(Sender: TObject);
begin
        Form1.MediaPlayer3.Stop;
end;

end.
