unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Menus, MPlayer;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Image9: TImage;
    MediaPlayer7: TMediaPlayer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MediaPlayer7Notify(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
   A: array [1..100, 1..9] of string;
   B: array [1..100, 1..9] of string;
   C: array [1..100, 1..9] of string;
   D: array [1..100, 1..9] of string;
  Count,f,j,G,int:byte;
  P1,P2,P3:real;
  a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15:byte;

implementation
         Uses
         Unit1,Unit4,Unit5,Unit6,Unit2;
{$R *.dfm}




         function gener(): byte;   //Генератор случайных чисел

         begin
         int := 1 + Random(11);
           Randomize;
           int := 1 + Random(11);

          if (Count<4) and (Count>=1) then Begin

          while   (int=a1) or (int=a2) or (int=a3) do    begin
           int := 1 + Random(11);
           Randomize;
           int := 1 + Random(11);
           end;
          end;

          if (Count<8) and (Count>=4) then Begin

          while   (int=a4) or (int=a5) or (int=a6) or (int=a7) do begin
           int := 1 + Random(11);
           Randomize;
           int := 1 + Random(11);
          end;

          end;

          if (Count<12) and (Count>=8) then Begin

          while   (int=a8) or (int=a9) or (int=a10) or (int=a11) do   begin;
           int := 1 + Random(11);
           Randomize;
           int := 1 + Random(11);
          end;

          end;

          if (Count<16) and (Count>=12) then Begin

          while   (int=a12) or (int=a13) or (int=a14) or (int=a15) do  begin
           int := 1 + Random(11);
           Randomize;
           int := 1 + Random(11);
          end;

          end;
           result :=int;
         end;



         function fre():integer;         //функция присвоения званий и оформления Form4
         var
           sg,a1,a2:String;

          begin
          if (Count<4) and (Count>=1) then Begin
           Sg:='Ламер';
           a1:='Ламер - это чайник со свистком';
           a2:='Долгое вpемя сyществовала гипотеза, что, если миллион обезьян посадить за пишyщие машинки, то по теоpии веpоятности чеpез некотоpое вpемя они напечатают "Войнy и миp". Тепеpь с pазвитием Интеpнета, мы знаем, что это не так!';
           end;

          if (Count<8) and (Count>=4) then begin
          Sg:='Чайник';
          a1:='У меня к Майкрософту только один вопрос, но глобальный: вы там карты в пасьянсе тусуете ваще перед сдачей?';
           a2:='Надоело быть как все? Хочешь выделиться из толпы? Удали свою страницу из "ВКонтакте"!';
          end;

          if (Count<12) and (Count>=8) then begin
           a1:='-Почему на управляемые боеголовки не ставят WINDOWS? Потому что она либо зависнет, либо вернется за подтверждением!';
           a2:='- Привет!- Привет!- Че делаешь?- Пресс качаю.- А че это?- Полезно для здоровья и для фигуры.- Дай ссылку, я тоже скачаю.';
           Sg:='Юзер';
           end;

          if (Count<16) and (Count>=12) then begin
           Sg:='Продвинутый пользователь';
           a1:='- Какая разница между вирусом и Windows XP?- Вирус стабильнее работает. ';
           a2:='Работа пpогpаммиста и шамана имеет много общего - оба боpмочyт непонятные слова, совеpшают непонятные действия и не могyт объяснить, как оно pаботает.';
           end;

         Form4.Show;
         Form3.Hide;
         Form4.label1.Caption:=Sg;
         Form4.label2.Caption:=a1;
         Form4.label3.Caption:=a2;
         Form4.Button1.Visible:=True;
         Form4.Button2.Visible:=False;

         end;


         function gor():integer;     //Выполняет повторяющиеся действия для кнопок вариантов ответов
          begin
          if Count=1 then a1:=int;
           if Count=2 then a2:=int;
           if Count=3 then a3:=int;
           if Count=4 then a4:=int;
           if Count=5 then a5:=int;
           if Count=6 then a6:=int;
           if Count=7 then a7:=int;
           if Count=8 then a8:=int;
           if Count=9 then a9:=int;
           if Count=10 then a10:=int;
           if Count=11 then a11:=int;
           if Count=12 then a12:=int;
           if Count=13 then a13:=int;
           if Count=14 then a14:=int;
           if Count=15 then a15:=int;
            if  Form3.BitBtn1.Visible=False then Form3.BitBtn1.Visible:=True;
   if  Form3.BitBtn2.Visible=False then Form3.BitBtn2.Visible:=True;
   if  Form3.BitBtn3.Visible=False then Form3.BitBtn3.Visible:=True;
   if  Form3.BitBtn4.Visible=False then Form3.BitBtn4.Visible:=True;
    if Form3.image5.Visible=false then  Form3.image5.Visible:=True;
   if Form3.image6.Visible=false then  Form3.image6.Visible:=True;
   if Form3.image7.Visible=false then  Form3.image7.Visible:=True;
   if Form3.image8.Visible=false then  Form3.image8.Visible:=True;

   if Count=4 then Begin
   fre();
   Form4.Button2.Visible:=True;
   Form4.Button1.Visible:=False;
   Form4.Show;
   Form3.Hide;
   Form3.MediaPlayer7.Pause;
   Form4.MediaPlayer8.FileName:='Data/TheITCrowd.wav';
           Form4.MediaPlayer8.Open;
           Form4.MediaPlayer8.Play;
   end;

   if Count=8 then Begin
   fre();
     Form4.Button2.Visible:=True;
   Form4.Button1.Visible:=False;
   Form4.Show;
   Form3.Hide;
   Form3.MediaPlayer7.Pause;
   Form4.MediaPlayer8.FileName:='Data/Zdes_vam_ne_himchistka.wav';
           Form4.MediaPlayer8.Open;
           Form4.MediaPlayer8.Play;
   end;
   if Count=12 then Begin
   fre();
     Form4.Button2.Visible:=True;
   Form4.Button1.Visible:=False;
   Form4.Show;
   Form3.Hide;
   Form3.MediaPlayer7.Pause;
   Form4.MediaPlayer8.FileName:='Data/genii.wav';
           Form4.MediaPlayer8.Open;
           Form4.MediaPlayer8.Play;
   end;
          end;

         function prom():integer;
           var
            q,w:byte;
            asas:string;
          begin
           if Count=15 then
           begin
           Form4.Label1.caption:='Программист';
           Form4.Show;
           Form3.Hide;
           Form4.label2.Caption:='';
           Form4.label3.Caption:='';
           Form4.MediaPlayer1.Visible:=False;
           Form4.MediaPlayer1.FileName:='Data/final.wav';
           Form4.MediaPlayer1.Open;
           Form4.MediaPlayer1.Play;
           Form3.MediaPlayer7.Stop;
           end;
            {if Count=3 then Begin
            Form4.Show;
            Form3.Hide;
            end;  }
         Count:=Count+1;
          q:=Count;
          G:=gener();
                     if (q>=1) and (q<4) then begin
           Form3.Label1.caption:=A[G,1];
           Form3.BitBtn1.caption:=A[G,2];
           Form3.BitBtn2.caption:=A[G,3];
           Form3.BitBtn3.caption:=A[G,4];
           Form3.BitBtn4.caption:=A[G,5];

                     end;
                     if (q>=4) and (q<8) then begin
           Form3.Label1.caption:=B[G,1];
           Form3.BitBtn1.caption:=B[G,2];
           Form3.BitBtn2.caption:=B[G,3];
           Form3.BitBtn3.caption:=B[G,4];
           Form3.BitBtn4.caption:=B[G,5];
                     end;
                     if (q>=8) and (q<12) then begin
           Form3.Label1.caption:=C[G,1];
           Form3.BitBtn1.caption:=C[G,2];
           Form3.BitBtn2.caption:=C[G,3];
           Form3.BitBtn3.caption:=C[G,4];
           Form3.BitBtn4.caption:=C[G,5];
                     end;
                     if (q>=12) and (q<16) then begin
           Form3.Label1.caption:=D[G,1];
           Form3.BitBtn1.caption:=D[G,2];
           Form3.BitBtn2.caption:=D[G,3];
           Form3.BitBtn3.caption:=D[G,4];
           Form3.BitBtn4.caption:=D[G,5];
                     end;
                    // asas:=floattostr(Count);
           Form3.Label3.Caption:=floattostr(Count);

          end;

          function info():String;      //Функция присвоения вопроса элементу матрицы
          Begin
            A[1,1]:= 'Что не является языком программирования?';
                   A[1,2]:='Бэйсик';
                   A[1,3]:='Visual Studio';
                   A[1,4]:='C++';
                   A[1,5]:='Ассемблер';
                   A[1,6]:='0';
                   A[1,7]:='1';
                   A[1,8]:='0';
                   A[1,9]:='0';
            A[2,1]:='Как зовут основателя компании Microsoft?';
                   A[2,2]:='Том Смит';
                   A[2,3]:='Джонатан Грэтхен';
                   A[2,4]:='Билл Гейтс';
                   A[2,5]:='Дориан Грей';
                   A[2,6]:='0';
                   A[2,7]:='0';
                   A[2,8]:='1';
                   A[2,9]:='0';
            A[3,1]:='Низкоуровневый язык программирования?';
                   A[3,2]:='Бэйсик';
                   A[3,3]:='С++';
                   A[3,4]:='Паскаль';
                   A[3,5]:='Ассемблер';
                   A[3,6]:='0';
                   A[3,7]:='0';
                   A[3,8]:='0';
                   A[3,9]:='1';
            A[4,1]:='Сколько бит в одном байте?';
                   A[4,2]:='10';
                   A[4,3]:='8';
                   A[4,4]:='2';
                   A[4,5]:='1';
                   A[4,6]:='0';
                   A[4,7]:='1';
                   A[4,8]:='0';
                   A[4,9]:='0';
           A[5,1]:='Устройство вывода информации на печать?';
                   A[5,2]:='Сканер';
                   A[5,3]:='Процессор';
                   A[5,4]:='Монитор';
                   A[5,5]:='Принтер';
                   A[5,6]:='0';
                   A[5,7]:='0';
                   A[5,8]:='0';
                   A[5,9]:='1';
           A[6,1]:='Как часто называют жёсткий диск компьютера';
                   A[6,2]:='Болт';
                   A[6,3]:='Гайка';
                   A[6,4]:='Винт';
                   A[6,5]:='Гвоздь';
                   A[6,6]:='0';
                   A[6,7]:='0';
                   A[6,8]:='1';
                   A[6,9]:='0';
            A[6,1]:='Как часто называют жёсткий диск компьютера';
                   A[6,2]:='Болт';
                   A[6,3]:='Гайка';
                   A[6,4]:='Винт';
                   A[6,5]:='Гвоздь';
                   A[6,6]:='0';
                   A[6,7]:='0';
                   A[6,8]:='1';
                   A[6,9]:='0';
            A[7,1]:='Какая клавиша расположена в нижней части клавиатуры?';
                   A[7,2]:='HOME';
                   A[7,3]:='SPACEBAR';
                   A[7,4]:='END';
                   A[7,5]:='CAPS LOCK';
                   A[7,6]:='0';
                   A[7,7]:='1';
                   A[7,8]:='0';
                   A[7,9]:='0';
            A[8,1]:='Как часто называют ICQ?';
                   A[8,2]:='Маська';
                   A[8,3]:='Васька';
                   A[8,4]:='Аська';
                   A[8,5]:='Дуська';
                   A[8,6]:='0';
                   A[8,7]:='0';
                   A[8,8]:='1';
                   A[8,9]:='0';
            A[9,1]:='Что в переводе с английского означает слово Notebook?';
                   A[9,2]:='Журнал';
                   A[9,3]:='Газета';
                   A[9,4]:='Брошюра';
                   A[9,5]:='Блокнот';
                   A[9,6]:='0';
                   A[9,7]:='0';
                   A[9,8]:='0';
                   A[9,9]:='1';
            A[10,1]:='Что не является аудиоформатом?';
                   A[10,2]:='XLS';
                   A[10,3]:='WMA';
                   A[10,4]:='MP3';
                   A[10,5]:='OGG';
                   A[10,6]:='1';
                   A[10,7]:='0';
                   A[10,8]:='0';
                   A[10,9]:='0';
            A[11,1]:='Что на компьютерном сленге означает слово "девайс"?';
                   A[11,2]:='Компьютер';
                   A[11,3]:='Устройство';
                   A[11,4]:='Сеть';
                   A[11,5]:='Клавиатура';
                   A[11,6]:='0';
                   A[11,7]:='1';
                   A[11,8]:='0';
                   A[11,9]:='0';
            A[12,1]:='Под какой элемент ПК обычно подкладывают коврик?';
                   A[12,2]:='мышь';
                   A[12,3]:='клавиатура';
                   A[12,4]:='монитор';
                   A[12,5]:='Системный блок';
                   A[12,6]:='1';
                   A[12,7]:='0';
                   A[12,8]:='0';
                   A[12,9]:='0';
            B[1,1]:='Что не является операционной системой?';
                   B[1,2]:='Wissan';
                   B[1,3]:='Ubuntu';
                   B[1,4]:='Windows 8';
                   B[1,5]:='Mandriva';
                   B[1,6]:='1';
                   B[1,7]:='0';
                   B[1,8]:='0';
                   B[1,9]:='0';
            B[2,1]:='Команда переход к root в терминале линукса';
                   B[2,2]:='adm';
                   B[2,3]:='root';
                   B[2,4]:='su';
                   B[2,5]:='com';
                   B[2,6]:='0';
                   B[2,7]:='0';
                   B[2,8]:='1';
                   B[2,9]:='0';
            B[3,1]:='Как называется код, модифицирующий сам себя?';
                   B[3,2]:='Метаморфный';
                   B[3,3]:='Полиморфный';
                   B[3,4]:='Метаморфический';
                   B[3,5]:='Полиморфический';
                   B[3,6]:='0';
                   B[3,7]:='1';
                   B[3,8]:='0';
                   B[3,9]:='0';
            B[4,1]:='Имя пингвинёнка на эмблеме линукса?' ;
                   B[4,2]:='Такс';
                   B[4,3]:='Бакс';
                   B[4,4]:='Сакс';
                   B[4,5]:='Дор';
                   B[4,6]:='1';
                   B[4,7]:='0';
                   B[4,8]:='0';
                   B[4,9]:='0';
            B[5,1]:='Используется для длительного хранения информации?' ;
                   B[5,2]:='Оперативная память';
                   B[5,3]:='Внешний носитель';
                   B[5,4]:='Дисковод';
                   B[5,5]:='Процессор';
                   B[5,6]:='0';
                   B[5,7]:='1';
                   B[5,8]:='0';
                   B[5,9]:='0';
            B[6,1]:='Компонент Delphi 7 служащий для построения диаграмм' ;
                   B[6,2]:='Timer';
                   B[6,3]:='Label';
                   B[6,4]:='Chart';
                   B[6,5]:='Edit';
                   B[6,6]:='0';
                   B[6,7]:='0';
                   B[6,8]:='1';
                   B[6,9]:='0';
            B[7,1]:='С какой корпорацией обычно ассоциируется фраза Must die' ;
                   B[7,2]:='Intel';
                   B[7,3]:='Microsoft';
                   B[7,4]:='Adobe';
                   B[7,5]:='AMD';
                   B[7,6]:='0';
                   B[7,7]:='1';
                   B[7,8]:='0';
                   B[7,9]:='0';
            B[8,1]:='Вредносные программы' ;
                   B[8,2]:='Вирусы';
                   B[8,3]:='Антивирусы';
                   B[8,4]:='Конверторы';
                   B[8,5]:='Редакторы';
                   B[8,6]:='1';
                   B[8,7]:='0';
                   B[8,8]:='0';
                   B[8,9]:='0';
            B[9,1]:='Массивы бывают' ;
                   B[9,2]:='Трёхмерные';
                   B[9,3]:='Обычные';
                   B[9,4]:='Двойные';
                   B[9,5]:='Двумерные';
                   B[9,6]:='0';
                   B[9,7]:='0';
                   B[9,8]:='0';
                   B[9,9]:='1';
            B[10,1]:='Преобразоание исходного кода в программу';
                   B[10,2]:='Преобразование';
                   B[10,3]:='Компиляция';
                   B[10,4]:='Отладка';
                   B[10,5]:='Дизассемблирование';
                   B[10,6]:='0';
                   B[10,7]:='1';
                   B[10,8]:='0';
                   B[10,9]:='0';
            B[11,1]:='Прототип сети ИНТЕРНЕТ' ;
                   B[11,2]:='ARPANET';
                   B[11,3]:='NSFNet';
                   B[11,4]:='GEANT';
                   B[11,5]:='DARPA';
                   B[11,6]:='1';
                   B[11,7]:='0';
                   B[11,8]:='0';
                   B[11,9]:='0';
            C[1,1]:='Пренебрежительное название компании Microsoft';
                   C[1,2]:='Ламеры';
                   C[1,3]:='Майкрософтовцы';
                   C[1,4]:='Мелкомягкие';
                   C[1,5]:='Мелкие';
                   C[1,6]:='0';
                   C[1,7]:='0';
                   c[1,8]:='1';
                   C[1,9]:='0';
            C[2,1]:= 'Команда, не используемая в Линуксе';
                   C[2,2]:='Clear';
                   C[2,3]:='su';
                   C[2,4]:='dir';
                   C[2,5]:='format c:';
                   C[2,6]:='0';
                   C[2,7]:='0';
                   C[2,8]:='0';
                   C[2,9]:='1';
            C[3,1]:='Какой российский город назван «в честь» компьютера?';
                   C[3,2]:='Москва';
                   C[3,3]:='Абакан';
                   C[3,4]:='Казань';
                   C[3,5]:='Омск';
                   C[3,6]:='0';
                   C[3,7]:='1';
                   C[3,8]:='0';
                   C[3,9]:='0';
            C[4,1]:='Сколько байт в слове "слово" в кодировке UNICODE?';
                   C[4,2]:='десять';
                   C[4,3]:='один';
                   C[4,4]:='пять';
                   C[4,5]:='четыре';
                   C[4,6]:='1';
                   C[4,7]:='0';
                   C[4,8]:='0';
                   C[4,9]:='0';
            C[5,1]:='Для регистрации какой программы нужно отгадать загадку?';
                   C[5,2]:='WinRAR';
                   C[5,3]:='Microsoft Office';
                   C[5,4]:='Light Alloy';
                   C[5,5]:='WinAmp';
                   C[5,6]:='0';
                   C[5,7]:='0';
                   C[5,8]:='1';
                   C[5,9]:='0';
            C[6,1]:='Клавиша для получения справки';
                   C[6,2]:='F1';
                   C[6,3]:='Tab';
                   C[6,4]:='F12';
                   C[6,5]:='ctrl';
                   C[6,6]:='1';
                   C[6,7]:='0';
                   C[6,8]:='0';
                   C[6,9]:='0';
            C[7,1]:='Как часто называют непонятный сбой в программе';
                   C[7,2]:='Баг';
                   C[7,3]:='Ошибка';
                   C[7,4]:='Глюк';
                   C[7,5]:='Сбой';
                   C[7,6]:='0';
                   C[7,7]:='0';
                   C[7,8]:='1';
                   C[7,9]:='0';
            C[8,1]:='Название известного компьютерного журнала?';
                   C[8,2]:='Компьютерра';
                   C[8,3]:='Принтерра';
                   C[8,4]:='Сканерра';
                   C[8,5]:='Процессорра';
                   C[8,6]:='1';
                   C[8,7]:='0';
                   C[8,8]:='0';
                   C[8,9]:='0';
            C[9,1]:='Язык разметки гипертекста';
                   C[9,2]:='Java';
                   C[9,3]:='HTML';
                   C[9,4]:='PHP';
                   C[9,5]:='MySQL';
                   C[9,6]:='0';
                   C[9,7]:='1';
                   C[9,8]:='0';
                   C[9,9]:='0';
            C[10,1]:='Как компьютерщики часто называют оперативную память?';
                   C[10,2]:='почки';
                   C[10,3]:='печень';
                   C[10,4]:='мозги';
                   C[10,5]:='голова';
                   C[10,6]:='0';
                   C[10,7]:='0';
                   C[10,8]:='1';
                   C[10,9]:='0';
            C[11,1]:='Свойство компонента Delphi, определяющее его видимость';
                   C[11,2]:='Visible';
                   C[11,3]:='Width';
                   C[11,4]:='Stretch';
                   C[11,5]:='Transparent';
                   C[11,6]:='1';
                   C[11,7]:='0';
                   C[11,8]:='0';
                   C[11,9]:='0';
             D[1,1]:='Как зовут создателя ОС Linux?';
                   D[1,2]:='Линукс Торвальдс';
                   D[1,3]:='Линус Торвальдс';
                   D[1,4]:='Линукс Кэмпбел';
                   D[1,5]:='Линукс Грэтхен';
                   D[1,6]:='0';
                   D[1,7]:='1';
                   D[1,8]:='0';
                   D[1,9]:='0';
              D[2,1]:='Скольки разрядные операционные системы не бывают?';
                   D[2,2]:='64';
                   D[2,3]:='32';
                   D[2,4]:='16';
                   D[2,5]:='12';
                   D[2,6]:='0';
                   D[2,7]:='0';
                   D[2,8]:='0';
                   D[2,9]:='1';
              D[3,1]:= 'Генератор случайных чисел можно реализовать c помощью';
                   D[3,2]:='Системного времени';
                   D[3,3]:='Функции';
                   D[3,4]:='Преобразования';
                   D[3,5]:='Другое';
                   D[3,6]:='1';
                   D[3,7]:='0';
                   D[3,8]:='0';
                   D[3,9]:='0';
              D[4,1]:='В каком году снят первый ролик Apple?';
                   D[4,2]:='1978';
                   D[4,3]:='1980';
                   D[4,4]:='1990';
                   D[4,5]:='1984';
                   D[4,6]:='0';
                   D[4,7]:='0';
                   D[4,8]:='0';
                   D[4,9]:='1';
               D[5,1]:='Какой из этих дистрибутивов Линукса существует?';
                   D[5,2]:='Yast';
                   D[5,3]:='Yops';
                   D[5,4]:='Yoper';
                   D[5,5]:='Yo';
                   D[5,6]:='0';
                   D[5,7]:='0';
                   D[5,8]:='1';
                   D[5,9]:='0';
               D[6,1]:='Какого метода рисования простейшей графики нет?';
                   D[6,2]:='Aner';
                   D[6,3]:='Chord';
                   D[6,4]:='Pie';
                   D[6,5]:='Arc';
                   D[6,6]:='1';
                   D[6,7]:='0';
                   D[6,8]:='0';
                   D[6,9]:='0';
               D[7,1]:='Что из перечисленного не являетс форматом архива?';
                   D[7,2]:='.rar';
                   D[7,3]:='.kgb';
                   D[7,4]:='.zip';
                   D[7,5]:='.tgv';
                   D[7,6]:='0';
                   D[7,7]:='0';
                   D[7,8]:='0';
                   D[7,9]:='1';
               D[8,1]:='Что не является текстовым редактором';
                   D[8,2]:='Штирлиц';
                   D[8,3]:='Word';
                   D[8,4]:='TextPromt';
                   D[8,5]:='AkelPad';
                   D[8,6]:='0';
                   D[8,7]:='0';
                   D[8,8]:='1';
                   D[8,9]:='0';
               D[9,1]:='Какого типа данных в Паскале не существует?';
                   D[9,2]:='Longint';
                   D[9,3]:='Byte';
                   D[9,4]:='real';
                   D[9,5]:='intege';
                   D[9,6]:='0';
                   D[9,7]:='0';
                   D[9,8]:='0';
                   D[9,9]:='1';
               D[10,1]:='Как называется большая универсальная ЭВМ?';
                   D[10,2]:='Мейнфрейм';
                   D[10,3]:='Суперкомпьютер';
                   D[10,4]:='Сервер';
                   D[10,5]:='Шлюз';
                   D[10,6]:='1';
                   D[10,7]:='0';
                   D[10,8]:='0';
                   D[10,9]:='0';
               D[11,1]:='Какого разъёма не существует?';
                   D[11,2]:='RJ45';
                   D[11,3]:='PS2';
                   D[11,4]:='FGGT';
                   D[11,5]:='SCART';
                   D[11,6]:='0';
                   D[11,7]:='0';
                   D[11,8]:='1';
                   D[11,9]:='0';

           end;

    procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
     begin
    Form1.show;
    Form3.MediaPlayer7.Pause;
    end;


procedure TForm3.Button1Click(Sender: TObject);
begin
          a1:=0; a2:=0;a3:=0;a4:=0;a5:=0;a6:=0;a7:=0;a8:=0;a9:=0;a10:=0;a11:=0;
          a12:=0;a13:=0;a14:=0;a15:=0;
          Count:=1;

   P1:=0;
   P2:=0;
   P3:=0;
   info();
   G:=gener();
   a1:=G;
   Form3.Label1.caption:=A[G,1];
   Form3.BitBtn1.caption:=A[G,2];
   Form3.BitBtn2.caption:=A[G,3];
   Form3.BitBtn3.caption:=A[G,4];
   Form3.BitBtn4.caption:=A[G,5];

   label1.Visible:=True;
   label2.Visible:=True;
   image2.Visible:=True;
   image3.Visible:=True;
   image4.Visible:=True;
   image5.Visible:=True;
   image6.Visible:=True;
   image7.Visible:=True;
   image8.Visible:=True;
   BitBtn1.Visible:=True;
   BitBtn2.Visible:=True;
   BitBtn3.Visible:=True;
   BitBtn4.Visible:=True;
   Button1.Visible:=False;
   Button2.Visible:=True;
   Form3.Label3.Visible:=True;
   label3.Caption:=FloattoStr(Count);
   if  BitBtn1.Visible=False then BitBtn1.Visible:=True;
   if  BitBtn2.Visible=False then BitBtn2.Visible:=True;
   if  BitBtn3.Visible=False then BitBtn3.Visible:=True;
   if  BitBtn4.Visible=False then BitBtn4.Visible:=True;
   if image5.Visible=false then  image5.Visible:=True;
   if image6.Visible=false then  image6.Visible:=True;
   if image7.Visible=false then  image7.Visible:=True;
   if image8.Visible=false then  image8.Visible:=True;
   Image3.Picture.LoadFromFile('Data/drug.bmp');
   Image2.Picture.LoadFromFile('Data/pat.bmp');
   Image4.Picture.LoadFromFile('Data/zal.bmp');
end;



procedure TForm3.BitBtn1Click(Sender: TObject);     //Вариант А
begin
   gor();
    f:=Count;
   if (f<4) and (f>=1) then begin
   if  A[G,6]='1' then prom() else  fre();
   end;
   if (f<8) and (f>=4) then begin
   if  B[G,6]='1' then prom() else  fre();
   end;
   if (f<12) and (f>=8) then begin
   if  C[G,6]='1' then prom() else  fre();
   end;

   if (f<16) and (f>=12) then begin
   if  D[G,6]='1' then prom() else  fre();
   end;


  end;


procedure TForm3.BitBtn2Click(Sender: TObject);         //Вариант В
begin
     gor();
f:=Count;
     if (f<4) and (f>=1) then begin
   if  A[G,7]='1' then prom() else  fre();
   end;
   if (f<8) and (f>=4) then begin
   if  B[G,7]='1' then prom() else  fre();
   end;
   if (f<12) and (f>=8) then begin
   if  C[G,7]='1' then prom() else  fre();
   end;
   if (f<16) and (f>=12) then begin
   if  D[G,7]='1' then prom() else  fre();
   end;



end;


procedure TForm3.BitBtn3Click(Sender: TObject);           //Вариант С
begin
    gor();
f:=Count;
   if (f<4) and (f>=1) then begin
   if  A[G,8]='1' then prom() else  fre();
   end;
   if (f<8) and (f>=4) then begin
   if  B[G,8]='1' then prom() else  fre();
   end;
   if (f<12) and (f>=8) then begin
   if  C[G,8]='1' then prom() else  fre();
   end;
   if (f<16) and (f>=12) then begin
   if  D[G,8]='1' then prom() else  fre();
   end;



end;


procedure TForm3.BitBtn4Click(Sender: TObject);                   //Вариант D
begin
     gor();
f:=Count;
    if (f<4) and (f>=1) then begin
   if  A[G,9]='1' then prom() else  fre();
   end;

   if (f<8) and (f>=4) then begin
   if  B[G,9]='1' then prom() else  fre();
   end;

   if (f<12) and (f>=8) then begin
   if  C[G,9]='1' then prom() else  fre();
   end;

   if (f<16) and (f>=12) then begin
   if  D[G,9]='1' then prom() else  fre();
   end;





end;

procedure TForm3.Image2Click(Sender: TObject);   // Подсказка 50*50
begin
f:=Count;

  if P1=0 then

  begin
                if (f<4) and (f>=1) then begin
   if   A[G,6]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn3.Visible:=False;
    image7.Visible:=false;
     image6.Visible:=false; end;
   if   A[G,7]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn4.Visible:=False;
    image5.Visible:=false;
     image8.Visible:=false; end;
   if   A[G,8]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn4.Visible:=False;
    image6.Visible:=false;
     image8.Visible:=false; end;
   if   A[G,9]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn3.Visible:=False;
    image5.Visible:=false;
     image7.Visible:=false;
     end;
    end;

                  if (f<8) and (f>=4) then begin
    if   B[G,6]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn3.Visible:=False;
    image7.Visible:=false;
     image6.Visible:=false; end;
   if   B[G,7]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn4.Visible:=False;
    image5.Visible:=false;
     image8.Visible:=false; end;
   if   B[G,8]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn4.Visible:=False;
    image6.Visible:=false;
     image8.Visible:=false; end;
   if   B[G,9]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn3.Visible:=False;
    image5.Visible:=false;
     image7.Visible:=false;
     end;
    end;
                  end;
                  if (f<12) and (f>=8) then begin
    if   C[G,6]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn3.Visible:=False;
    image7.Visible:=false;
     image6.Visible:=false; end;
   if   C[G,7]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn4.Visible:=False;
    image5.Visible:=false;
     image8.Visible:=false; end;
   if   C[G,8]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn4.Visible:=False;
    image6.Visible:=false;
     image8.Visible:=false; end;
   if   C[G,9]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn3.Visible:=False;
    image5.Visible:=false;
     image7.Visible:=false;
     end;
    end;

                  if (f<16) and (f>=12) then begin
    if   D[G,6]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn3.Visible:=False;
    image7.Visible:=false;
     image6.Visible:=false; end;
   if   D[G,7]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn4.Visible:=False;
    image5.Visible:=false;
     image8.Visible:=false; end;
   if   D[G,8]='1' then begin
    BitBtn2.Visible:=False;
    BitBtn4.Visible:=False;
    image6.Visible:=false;
     image8.Visible:=false; end;
   if   D[G,9]='1' then begin
    BitBtn1.Visible:=False;
    BitBtn3.Visible:=False;
    image5.Visible:=false;
     image7.Visible:=false;
     end;
    end;



    P1:=1;
    Image2.Picture.LoadFromFile('Data/patx.bmp');
end;


procedure TForm3.Image3Click(Sender: TObject);      //  Подсказка Звонок Другу
begin
   if P2=0 then begin
   Form3.MediaPlayer7.Pause;
   Form5.show;
   Form3.hide ;
   end;
    P2:=1;
    Image3.Picture.LoadFromFile('Data/drugx.bmp');
end;


procedure TForm3.Image4Click(Sender: TObject);         // Подсказка Помощь зала
     var
     nn,na,nb,nc,nd:integer;
begin
   if P3=0 then begin
   Form3.MediaPlayer7.Pause;
   Form6.show;
   Form3.hide;
   Form6.Timer1.Enabled:=True;
   nn := 1 + Random(100);
           Randomize;
           nn := 1 + Random(100);
    if BitBtn1.Visible=False   then na:=0  else   na:=nn+50;
    if BitBtn2.Visible=False   then nb:=0  else   nb:=nn+20;
    if BitBtn3.Visible=False   then nc:=0  else   nc:=nn+10;
    if BitBtn4.Visible=False   then nd:=0  else   nd:=nn+35;
                        if (Count<4) and (Count>=1) then begin

   if A[G,6]='1' then  begin
      na:=nn+170;

   end;
   if A[G,7]='1' then  begin
      nb:=nn+188;

   end;
   if A[G,8]='1' then  begin
      nc:=nn+167;

   end;
   if A[G,9]='1' then  begin
      nd:=nn+192;

   end;
                        end;
                        if (Count<8) and (Count>=4) then begin

   if B[G,6]='1' then  begin
      na:=nn+153;

   end;
   if B[G,7]='1' then  begin
      nb:=nn+184;

   end;
   if B[G,8]='1' then  begin
      nc:=nn+175;

   end;
   if B[G,9]='1' then  begin
      nd:=nn+107;

   end;
                        end;
                        if (Count<12) and (Count>=8) then begin

   if C[G,6]='1' then  begin
      na:=nn+155;

   end;
   if C[G,7]='1' then  begin
      nb:=nn+147;

   end;
   if C[G,8]='1' then  begin
      nc:=nn+160;

   end;
   if C[G,9]='1' then  begin
      nd:=nn+174;

   end;
                        end;
                        if (Count<16) and (Count>=12) then begin

   if D[G,6]='1' then  begin
      na:=nn+140;

   end;
   if D[G,7]='1' then  begin
      nb:=nn+150;

   end;
   if D[G,8]='1' then  begin
      nc:=nn+178;

   end;
   if D[G,9]='1' then  begin
      nd:=nn+156;

   end;
                        end;
      Form6.Series1.AddXY(1,na,'A',clYellow);
      Form6.Series1.AddXY(2,nb,'B',clRed);
      Form6.Series1.AddXY(3,nc,'C',clLime);
      Form6.Series1.AddXY(4,nd,'D',clBlue);
   end;
    P3:=1;

    Image4.Picture.LoadFromFile('Data/zalx.bmp');
end;


procedure TForm3.N1Click(Sender: TObject);
begin

    Form2.Show;
end;



procedure TForm3.FormShow(Sender: TObject);
begin
  if  Form3.MediaPlayer7.FileName='Data/blue_val.wav'then
  Form3.MediaPlayer7.Play else begin Form3.MediaPlayer7.FileName:='Data/blue_val.wav';
           Form3.MediaPlayer7.Open;
           Form3.MediaPlayer7.Play;
           end;
end;

procedure TForm3.MediaPlayer7Notify(Sender: TObject);
begin
     //  Form3.MediaPlayer7.FileName:='Data/blue_val.wav';
      //     Form3.MediaPlayer7.Open;
      //     Form3.MediaPlayer7.Play;
end;

end.
