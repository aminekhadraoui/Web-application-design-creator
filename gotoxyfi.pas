program best;
uses wincrt,WinTypes, WinProcs;
var
line:string;
procedure exe (che:string);
begin
writeln('ecrire ch');
readln(che);
if che ='oui' then
begin
     WinExec('cmd /k "E:\project\site.html"',SW_NORMAL);
end;
end;
procedure executer(var line:string);
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
write('encadreur:saleh talbi');
gotoxy(20,7);
write('projet réalisé par:>Med amine khadhraoui');
gotoxy(39,8);
write('>Mohamed ben said');

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
write('4)editeur web');
gotoxy(4,18);
write('>');readln(line);

if line ='1' then
 clrscr;
 write('true');
end;
begin
executer(line);

end.