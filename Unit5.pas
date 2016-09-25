unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MPlayer, jpeg;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Timer2: TTimer;
    Timer1: TTimer;
    MediaPlayer2: TMediaPlayer;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MediaPlayer2Notify(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  PLAY, hhh:integer;
implementation
          uses
          Unit3;
{$R *.dfm}


{function PlaySound(pszSound:PChar; hmod:HINST; fdwSound:Cardinal):boolean;
begin
    Form5.Hide;
    Form3.Show;
end;  }

procedure TForm5.Button1Click(Sender: TObject);

begin

   // PlaySound('Data/final.wav', 0, SND_SYNC);
 if edit1.text='+37529' then label1.Caption:='Ошибка соединения' else begin
 Timer2.Enabled:=true;
   label1.Caption:='Соединение...'; end;

end;

procedure TForm5.Timer1Timer(Sender: TObject);
  var
    ff:integer;
begin
   PLAY:=1;
 {Form5.MediaPlayer2.FileName:='Data/tel.wav';
           Form5.MediaPlayer2.Open;
           Form5.MediaPlayer2.Play;}
   ff:= random(200);
   randomize;
   if hhh=0 then  begin

    if (ff<12) and (ff>1) then  label1.Caption:='Я думаю что ответ С' else
        begin
    if (ff<30) and (ff>13) then  label1.Caption:='Я думаю что ответ B'  else
        begin
    if (ff<40) and (ff>31) then  label1.Caption:='Я думаю что ответ А'  else
        begin
    if (ff<70) and (ff>41) then  label1.Caption:='Затрудняюсь ответить'   else
        begin
    if (ff<90) and (ff>71) then  label1.Caption:='Я не уверен, но мне кажется что ответ В' else
        begin
    if (ff<105) and (ff>91) then  label1.Caption:='Я не уверен, но мне кажется что ответ C' else
        begin
    if (ff<120) and (ff>106) then  label1.Caption:='Я не уверен, но мне кажется что ответ A' else
        begin
    if (ff<140) and (ff>121) then  label1.Caption:='Я не уверен, но мне кажется что ответ D'  else
        begin
    if (ff<190) and (ff>141) then  label1.Caption:='Я не знаю ответа' else
    label1.Caption:='Я не знаю точно';
    end;
        end;
        end;
        end;
        end;
        end;
        end;
        end;
   end;
   hhh:=1;
   Timer3.Enabled:=true;
    timer1.Enabled:=false;
end;

procedure TForm5.Timer2Timer(Sender: TObject);
//var //Hour, Min, Sec, MSec: Word;
//ff:integer;
begin
{DecodeTime(Now,Hour,Min,Sec,MSec);
ff:=MSec;
ff:=Round(ff/7);
//repeat ff:=Round(ff/7) until ff>100;
ff:=Round(ff);
ff:= Strtoint(Edit1.text);
ff:=Round(ff/53425);
    if (ff<12) and (ff>1) then  label1.Caption:='Я думаю что ответ С';
    if (ff<30) and (ff>13) then  label1.Caption:='Я думаю что ответ B';
    if (ff<40) and (ff>31) then  label1.Caption:='Я думаю что ответ А';
    if (ff<70) and (ff>41) then  label1.Caption:='Затрудняюсь ответить' ;
    if (ff<90) and (ff>71) then  label1.Caption:='Я не уверен, но мне кажется что ответ В';
    if (ff<105) and (ff>91) then  label1.Caption:='Я не уверен, но мне кажется что ответ C';
    if (ff<120) and (ff>106) then  label1.Caption:='Я не уверен, но мне кажется что ответ A';
    if (ff<140) and (ff>121) then  label1.Caption:='Я не уверен, но мне кажется что ответ D';
    if (ff<190) and (ff>141) then  label1.Caption:='Я не знаю ответа' else

    // label1.Caption:=inttostr(ff);}
    timer1.Enabled:=true;
    timer2.Enabled:=false;
    label1.Caption:='Соединение установлено';
end;

procedure TForm5.Timer3Timer(Sender: TObject);
begin
   form3.show;
  form5.Hide;
  timer3.Enabled:=false;
end;

procedure TForm5.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key in ['0'.. '9',#08,'+'] then else
       Key := Chr(0);
    If length(Edit1.Text)<13 then else  Key := Chr(0);
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  form3.show;
  form5.Hide;
  //if PLAY=1 then Form5.MediaPlayer2.Stop;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
    label1.Caption:='Введите телефонный номер';
     hhh:=0;
     Edit1.Text:='+37529';
end;

procedure TForm5.MediaPlayer2Notify(Sender: TObject);
begin
      Form5.Hide;
    Form3.Show;
    PLAY:=0;
    label1.Caption:='Введите телефонный номер';
end;

end.
