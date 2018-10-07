program best;
uses wincrt,WinTypes, WinProcs;
type
tab = array [1..40] of string;
var
line,reponse:integer;
t:tab;
f2,f,f4:text;
che2,che,chee3,chee4:string;

procedure exe4 (var chee4:string);
begin
writeln('voir la page de color ecrire (oui)');                    
readln(chee4);
if chee4 ='oui' then
begin
     WinExec('cmd /k "C:\TPW\newsproject\color.html"',SW_NORMAL);
end;
end;


procedure exe3 (var chee3:string);
begin
writeln('apprendre a programmer');                    
readln(chee3);
if chee3 ='oui' then
begin
     WinExec('cmd /k "C:\TPW\newsproject\siteapp.html"',SW_NORMAL);
end;
end;
procedure exe (var che:string);
begin
writeln('voir ton site');                    
readln(che);
if che ='oui' then
begin
     WinExec('cmd /k "C:\TPW\newsproject\site.htm"',SW_NORMAL);
end;
end;
procedure exe2 (var che2:string);
begin
writeln('siteofficielle');
readln(che2);
if che2 ='oui' then
begin
     WinExec('cmd /k "C:\TPW\newsproject\sitepro.html"',SW_NORMAL);
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
procedure closetag(var t:tab);
begin
t[5]:='<style>';

end;

procedure script (var t:tab);
var
sc1,sc:integer;
scr1,a,scr:string;
begin
t[6]:='input[type=text],input[type=password]{width: %;padding: 12px 20px;margin: 8px 0;';
a:='box-sizing: border-box;border: 2px solid #;border-radius: 4px;}';
writeln('donner le width a votre form');
readln(scr);
sc:=pos('%',t[6]);
insert(scr,t[6],sc);
t[6]:=t[6]+a;

writeln('donner le coleur de votre form (input)');
readln(scr1);
sc1:=pos(';border-radius',t[6]);
insert(scr1,t[6],sc1);
end;    

procedure cssnavbar (var t:tab);
var
navbarc,navbarc1,navbarc2:string;
begin
exe4(chee3);
writeln('donner le coleur de vavbar');
readln(navbarc);
t[7]:='ul {list-style-type:none;margin:0;padding:0;overflow:hidden;background-color:#'+navbarc+';}';
writeln('donner le coleur de separateur de navbar');
readln(navbarc1);
t[7]:=t[7]+'li{float:left;border-right:1px solid #'+navbarc1+';}';
t[7]:=t[7]+'li:last-child{border-right: none;}';
t[8]:=t[8]+'li a{display:block;color:white;text-align:center;padding:14px 16px;text-decoration:none;}';
writeln('donner le coleur de selection de curseur');
readln(navbarc2);
t[8]:=t[8]+'li a:hover:not(.active){background-color:#'+navbarc2+';}';
end;

procedure shadow(var t:tab);
var
omb,sha,con:string;
begin
t[9]:='h1,h2,h3,h4,h5,h6{color : ;text-shadow: 1px 1px 2px # , 0 0 25px red, 0 0 5px ;}' ;
writeln('donner le coleur de shadow text');
readln(sha);
insert(sha,t[9],pos('2px',t[9])+5);
exe4(chee3);
writeln('donner le coleur de l''ombre ');
readln(omb);
insert(omb,t[9],pos(';}',t[9]));
writeln('donner le coleur de context');
readln(con);
insert(con,t[9],pos('color:',t[9])+8);
end;

procedure searchcss (var t:tab);
var
search1,search2,search3,search4:string;
begin
writeln('donner le width de search');
readln(search1);
exe4(chee3);
writeln('donner le coleur de cadre de votre serach');
readln(search2);
t[10]:='input[type=text] {width: '+search1+'%;box-sizing: border-box;border: 2px solid #'+search2+';';
writeln('donner la photo de votre searcher');
readln(search3);
writeln('donner le font de l''image');
readln(search4);
t[10]:=t[10]+'border-radius:4px;font-size:16px;background-color:'+search4+';background-image:url('''+search3+''');';
t[11]:=t[11]+'background-position:10px 10px;background-repeat:no-repeat;padding: 12px 20px 12px 40px;}';
end;

procedure submitb (var t:tab);
var
submit1,submit2,submit3,submit4:string;
begin
exe4(chee3);
writeln('donner le coleur de la button');
readln(submit1);
writeln('donner le coleur de text pour le button');
readln(submit3);
writeln('donner le coleur de border');
readln(submit4);
t[12]:='input[type=submit] {background-color:#'+submit1+';color:#'+submit3+';border: 2px solid #'+submit4+';';
writeln('donner l''align de text (center/right/left)');
readln(submit2);
t[12]:=t[12]+'padding: 15px 32px;text-align: '+submit2+';text-decoration: none;display:';
t[12]:=t[12]+'inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;}';
writeln;
end;
procedure container(var t:tab);
var
borderra,contcolor,padgins:string;
begin
exe4(chee3);
writeln('donner le coleur de container');
readln(contcolor);
writeln('donner le padgin de la page');
readln(padgins);
writeln('donner le radius de border');
readln(borderra);
t[13]:='.container {border-radius:'+borderra+';background-color:#'+contcolor+';padding:'+padgins+'px;}';
end;

procedure fermertag(var t:tab);
begin

t[14]:='</style>';
end;
procedure colorg (var t:tab);
var
colorback:string;
begin
exe4(chee3);
writeln('donner votre coleur de background');
readln(colorback);
t[15]:='<body bgcolor="'+colorback+'">';

end;
procedure imagebackg(var t:tab);
var
imageback:string;
begin
writeln('donner votre image');
readln(imageback);
t[15]:='<body background="'+imageback+'">';
end;
procedure background(var t:tab);
var
backchoix :integer;
colorback,imageback:string;
begin
writeln('color(1) or image(2) choix: ');
readln(backchoix);
case backchoix of
1:colorg(t);
2:imagebackg(t);
end;
end;


procedure navbar (var t:tab);
var
navk,i,nav:integer;
navx,navx2,navs,navs1:string;
begin
navx:='<ul>';
navx2:='</ul>';
writeln('combient de navBar tu veux?');
readln(nav);
for i:=1 to nav do
begin
writeln('donner le nom pour ton navBar exemple (Home,about,news):');
readln(navs);
writeln('donner le nom de page a transfert(extension[html])');
readln(navs1);
t[16]:=t[16]+'<li><a href="'+navs1+'">'+navs+'</a></li>';
end;
t[16]:=navx+t[16]+navx2; 
cssnavbar(t);
end;     

procedure pra(var t:tab);
var
reponsec2:string;
begin
writeln('donner votre text');
readln(reponsec2);
t[17]:=t[17]+'<p>'+reponsec2+'</p>';
end;
procedure h2 (var t:tab);
var
htextc,hcolort,hquoi:string;
begin
writeln('donner votre text');
readln(htextc);
writeln('donner votre color de text');
readln(hcolort);
writeln('donner ');
readln(hquoi);
t[17]:=t[17]+'<h'+hquoi+' style="color:'+hcolort+';">'+htextc+'</h>';
end;
procedure containerh (var t:tab);
var
reponsec:string;
repoc:integer;
begin
t[17]:='<div class="container">';
writeln('ecrire une text dans votre container ? (oui/non)');
readln(reponsec);
if reponsec ='oui' then
repeat
writeln('quelle est votre choix pour le text ? (p(1)/h(2) and (0) pour sortie)');
readln(repoc);
case repoc of
1:pra(t);
2:h2(t);
end;
until repoc=0;
t[17]:=t[17]+'</div>';
container(t);
end;
procedure searchh (var t:tab);
var
seark:string;
begin
writeln('donner le commentaire quil va aparaitre dans le searcher');
readln(seark);
t[18]:='<form><input type="text" name="search" placeholder="'+seark+'"></form>';
searchcss(t);
end;

procedure h (var t:tab);
var
ch7,ch4,ch2,k2,k3:integer;
i:string;
ch8,ch6,ch3,ch:string;
begin
exe4(chee3);
writeln('donner h? :');
readln(i);
write('donner le coleur de h: ');
readln(ch3);
t[19]:='<h align="" style="color:;"></h>';
k3:=pos('h',t[19])+1;
insert(i,t[19],k3);
ch:=copy(t[19],pos(i,t[19]),1);
k2:=length(t[19]);
insert(ch,t[19],k2);
ch2:=pos('color:',t[19])+6;
insert(ch3,t[19],ch2);
writeln('donner l''align (center/right/left)');
readln(ch6);
ch4:=pos('align="',t[19])+7;
insert(ch6,t[19],ch4);
writeln('donner votre text');
readln(ch8);
ch7:=pos('>',t[19])+1;
insert(ch8,t[19],ch7);
shadow(t);
end;
procedure butt(var t:tab);
var
butt1:string;
begin
writeln('donner le nom du button');
readln(butt1);
t[22]:='<input type="submit" value="'+butt1+'">';
t[22]:=t[22]+'</form>';
submitb(t)
end;
procedure input (var t:tab);
var
in7,in6,in4,in2,repinput,fo1,fo2:string;
in8,in5,in3,in1,i,inp:integer;
   begin

writeln('donner le nombre d''input');
readln(inp);
fo1:='<form method="POST" action=".php" name="f" onsubmit="return verif1()">';
fo2:='</form>';
  for i:=1 to inp do
   begin

insert('<input type="" name="" align="">',t[21],length(t[21])+1);
writeln('tu veux ret ou ligne (oui/non) input[',i,']');
readln(repinput);

  if (repinput = 'oui') then
   begin

insert('<br />',t[21],length(t[21])+1);
   end;

writeln('donner le type d''input (text/password) [',i,']');
readln(in2);
in1:=pos('type=""',t[21])+6;
insert(in2,t[21],in1);
 writeln('donner align [',i,']');
 readln(in6);
 in5:=pos('align=""',t[21])+7;
 insert(in6,t[21],in5);
writeln('donner le nom du forme [',i,']');
readln(in7);
in8:=pos('name=""',t[21])+6;
insert(in7,t[21],in8);

end;
t[21]:=fo1+t[21];
script(t);
butt(t);
end;

procedure areaf (var t:tab);
var
area3,area2,area:string;
area4,area1:integer;

begin
t[23]:='<textarea rows="" cols=""></textarea>';
writeln('donner les rows');
readln(area2);
area1:=pos('""',t[23])+1;
insert(area2,t[23],area1);
writeln('donner les cols');
readln(area3);
area4:=pos('>',t[23])-1;
insert(area3,t[23],area4);
end;
procedure bodyf (var t:tab);
begin
t[24]:='</body></html>';
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

writeln('background(1)'); writeln('title(2)');writeln('icon(3)');writeln('h(4)');writeln('input(5)');writeln('area text (6)');
writeln('searcher(7)');
writeln('navbar(8)');
writeln('container(9)');
writeln('reponse:');
readln(reponse);
case reponse of
1:background(t);
2:title(t);
3:icon(t);
4:h(t);
5:input(t);
6:areaf(t);
7:searchh(t);
8:navbar(t);
9:containerh(t);
end;
until reponse=0;
bodyf(t);
fermertag(t);
  
for j:=1 to 24 do
    begin
writeln(f,t[j]);
  end;
end;
procedure security(var f4:text);
var
a,k:string;
begin
writeln('donner le nom de votre fichier');
readln(a);
assign(f4,'C:\TPW\newsproject\'+a+'.html');
reset(f4);
readln(f4,k);
if pos('htmlspecialchars',k) <> 0 then
writeln('your security is high')
else 
 writeln('your security is low');
close(f4);

end;
procedure executer(var line:integer);
var
i:integer;
begin
for i:=2 to 13 do
begin
gotoxy(2,i);
write('=');
end;
{limin}
for i:=2 to 75 do
begin
gotoxy(i,2);
write('=');
end;
for i:=2 to 75 do
begin
gotoxy(i,13);
write('=');
end;
for i:=2 to 13 do
begin
gotoxy(75,i);
write('=');
end;
gotoxy(29,6);
write('encadreur:Mr saif');
gotoxy(20,7);
write('projet réalisé par:>Med amine khadhraoui');

for i:=3 to 75 do
begin
gotoxy(i,4);
write('=');
end;

gotoxy(30,3);
write('4eme science de l''information ');
gotoxy(3,14);
write('1)crée ton site web');
gotoxy(3,15);
write('2)site official');
gotoxy(3,16);
write('3)apprendre a programmer');
gotoxy(3,17);
write('4)security');
gotoxy(4,19);
write('>');readln(line);
case line of
 1:cre(t,f,reponse);
 2:exe2(che2);
 3:exe3(chee3);
 4:security(f4);
end;
end;
begin
assign(f,'C:\tpw\newsproject\site.html');
remplirehtml(t);
closetag(t);
executer(line);
fermertag(t);
close(f);
exe(che);
end.
