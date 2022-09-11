unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  math ,StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  zahl1, zahl2, zahl3, i:integer;

begin

    zahl1:=strtoint(edit1.text);
    zahl2:=strtoint(edit2.text);
    zahl3:=strtoint(edit3.text);



    if zahl3=zahl3 then
    begin
      randomize;
      repeat
    i:=Randomrange(zahl1,zahl2);
    listbox1.Items.add(i.toString);
      until listbox1.items.count=zahl3 ;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);

begin
    listbox1.Sorted:=true;
end;


end.

