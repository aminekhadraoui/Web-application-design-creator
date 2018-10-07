program ex;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure background (var t:tab);
var
up,backg,back,ch:string;
k:integer;
begin
{background page or image}
writeln('backgournd or color');
readln(back);
{choix d'image}
t[1]:='<body background="">';
if back ='background' then
begin

write ('image url ? / image dans votre PC (url/pc):');
readln(up);
if up = 'url' then 
begin
write('donner l''url de background : '); 
readln(backg);
k:=pos('""',t[1])+1;
insert(backg,t[1],k);
write(t[1]);
end
else if up ='pc' then
begin
write('donner le chemin de background : '); 
readln(backg);
k:=pos('""',t[1])+1;
insert(backg,t[1],k);
write(t[1]);
end ;
end;

{choix de background color not image}
if back='color' then
begin
t[2]:='<body bgcolor="">';
write('donner le coleur : ');
readln(backg);
k:=pos('""',t[2])+1;
insert(backg,t[2],k);
write(t[2])
end;{delete write(ch) ==> test}
end;
begin
background(t);
end.