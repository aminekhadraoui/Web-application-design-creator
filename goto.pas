program best;
uses wincrt;
var
i:integer;
line:string;
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
write('projet r�alis� par:>Med amine khadhraoui');
gotoxy(39,8);
write('>dhia boudhraa');
gotoxy(39,9);
write('>Mohamed ben said');
for i:=3 to 75 do
begin
gotoxy(i,4);
write('=');
end;
gotoxy(30,3);
write('4eme science de l''information ');
gotoxy(3,17);
writeln('>');
gotoxy(5,17);
readln(line);
if line='oui' then
clrscr;
end.