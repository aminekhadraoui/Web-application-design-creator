program best;
uses wincrt,WinTypes, WinProcs;
type
tab = array [1..20] of string;
var
reponse:integer;
t:tab;
f:text;
repon1:string;
procedure exe (repon1:string);
begin
writeln('ecrire oui si tu veux voir la liste des color');
readln(repon1);
if repon1 ='oui' then
begin
     WinExec('cmd /k "C:\TPW\color.html"',SW_NORMAL);
end;
end;
procedure remplirehtml(var t:tab);
begin
t[1]:='<html>';
t[2]:='<head>';
end;

procedure icon (var t:tab);
var
posico:integer;
iconn:string;
begin
t[3]:='<link rel="stylesheet" href="">';
writeln('si tu veux tu peux mettre une icon dans votre site');
readln(iconn);
posico:=pos('""',t[3])+1;
insert(iconn,t[3],posico);
end;

procedure title (var t:tab);
var
i:integer;
titre,tit:string;
co:integer;
begin
t[4]:='<title></title>';
writeln('donner le titre de page >');
readln(titre);
co:=pos('/',t[4])-1;
insert(titre,t[4],co);
end;

procedure script (var t:tab);
var
sc1,sc:integer;
scr1,a,scr:string;
begin
t[5]:='<style> input[type=text] {width: %;padding: 12px 20px;margin: 8px 0;';
a:='box-sizing: border-box;border: 2px solid ;border-radius: 4px;}</style>';
writeln('donner le width a votre form');
readln(scr);
sc:=pos('%',t[5]);
insert(scr,t[5],sc);
t[5]:=t[5]+a;
exe(repon1);
writeln('donner le coleur de votre form (input)');
readln(scr1);
sc1:=pos(';border-radius',t[5]);
insert(scr1,t[5],sc1);
end;

procedure background (var t:tab);
var
up,backg,back,ch:string;
k:integer;
begin
{background page or image}
writeln('backgournd or color');
readln(back);
{choix d'image}
t[7]:='<body background="">';
if back ='background' then
begin

write ('image url ? / image dans votre PC (url/pc):');
readln(up);
if up = 'url' then 
begin
write('donner l''url de background : '); 
readln(backg);
k:=pos('""',t[7])+1;
insert(backg,t[7],k);
end
else if up ='pc' then
begin
writeln('donner le chemin de background : '); 
readln(backg);
k:=pos('""',t[7])+1;
insert(backg,t[7],k);
end ;
end;

{choix de background color not image}
if back='color' then
begin
t[8]:='<body bgcolor="">';
exe(repon1);
writeln('donner le coleur : ');
readln(backg);
k:=pos('""',t[8])+1;
insert(backg,t[8],k);
end;{delete write(ch) ==> test}
end;

procedure h (var t:tab);
var
ch7,ch4,ch2,k2,k3:integer;
i:string;
ch8,ch6,ch3,ch:string;
begin

writeln('donner h? :');
readln(i);
exe(repon1);
write('donner le coleur de h: ');
readln(ch3);
t[9]:='<h align="" style="color:;"></h>';
k3:=pos('h',t[9])+1;
insert(i,t[9],k3);
ch:=copy(t[9],pos(i,t[9]),1);
k2:=length(t[9]);
insert(ch,t[9],k2);
ch2:=pos('color:',t[9])+6;
insert(ch3,t[9],ch2);
writeln('donner l''align (center/right/left)');
readln(ch6);
ch4:=pos('align="',t[9])+7;
insert(ch6,t[9],ch4);
writeln('donner votre text');
readln(ch8);
ch7:=pos('>',t[9])+1;
insert(ch8,t[9],ch7);
end;

procedure input (var t:tab);
var
para,in7,in6,in4,in2,repinput,fo1,fo2:string;
in8,in5,in3,in1,i,inp:integer;
   begin

writeln('donner le nombre d''input');
readln(inp);
fo1:='<form method="POST" action=".php" name="f" onsubmit="return verif1()">';
fo2:='</form>';
  for i:=1 to inp do
   begin
   writeln('donner une paragraphe pour votre form');
   readln(para);
    t[10]:=t[10]+para;
insert('<input type="" name="" align="">',t[10],length(t[10])+1);
writeln('tu veux ret ou ligne (oui/non) input[',i,']');
readln(repinput);

  if (repinput = 'oui') then
   begin

insert('<br />',t[10],length(t[10])+1);
   end;

writeln('donner le type d''input (text/password) [',i,']');
readln(in2);
in1:=pos('type=""',t[10])+6;
insert(in2,t[10],in1);
 writeln('donner align');
 readln(in6);
 in5:=pos('align=""',t[10])+7;
 insert(in6,t[10],in5);
writeln('donner le nom du forme');
readln(in7);
in8:=pos('name=""',t[10])+6;
insert(in7,t[10],in8);

end;
t[10]:=fo1+t[10]+fo2;
end;
  
procedure areaf (var t:tab);
var
area3,area2,area:string;
area4,area1:integer;

begin
t[12]:='<textarea rows="" cols=""></textarea>';
writeln('donner les rows');
readln(area2);
area1:=pos('""',t[12])+1;
insert(area2,t[12],area1);
writeln('donner les cols');
readln(area3);
area4:=pos('>',t[12])-1;
insert(area3,t[12],area4);
end;
procedure cre (var t:tab;var f:text;var reponse:integer);
var
j:integer;
begin
rewrite(f);
writeln('                             __  .__               ');
writeln('  ___________   ____ _____ _/  |_|__| ____   ____  ');
writeln(' / ___\_  __ \_/ __ \\__  \\   __\  |/  _ \ /    \ ');
writeln('\  \___|  | \/\  ___/ / __ \|  | |  (  <_> )   |  \');
writeln(' \___  >__|    \___  >____  /__| |__|\____/|___|  /');
writeln('     \/            \/     \/                    \/ ');
repeat
writeln('donner votre choix || (tu peux sortie si tu tape 0)');
writeln('background(1)'); writeln('title(2)');writeln('icon(3)');writeln('script(4)');writeln('h(5)');writeln('input(6)');
writeln('areaf');
writeln('reponse:');
readln(reponse);
case reponse of
1:background(t);
2:title(t);
3:icon(t);
4:script(t);
5:h(t);
6:input(t);
7:areaf(t);
end;
until reponse=0;
t[13]:='</body></html>';
  t[6]:='</head>';
for j:=1 to 13 do
    begin
writeln(f,t[j]);
  end;
end;
procedure bodyf (var t:tab);
begin
t[13]:='</body></html>';
end;
begin
assign(f,'C:\tpw\10.txt');
remplirehtml(t);
cre(t,f,reponse);
close(f);
end.
