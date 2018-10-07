program ex;
uses wincrt;
type
tab=array[1..26] of string;
tabi=array[1..26] of integer;
var
t,t2:tab;
a,i:integer;
ch4,chra,ch,ch2:string;

t3:tabi;
begin
writeln('     __      .__');
writeln('    |__|__ __|  |   ____   ______   ____  ____   ___________ _______');
writeln('    |  |  |  \  | _/ __ \ /  ___/ _/ ___\/ __ \ /  ___/\__  \\_  __ \');
writeln('    |  |  |  /  |_\  ___/ \___ \  \  \__\  ___/ \___ \  / __ \|  | \/');
writeln('/\__|  |____/|____/\___  >____  >  \___  >___  >____  >(____  /__|');  
writeln('\______|               \/     \/       \/    \/     \/      \/');
a:=64;
ch:='';
ch4:='';
readln(chra);
for i:=1 to 26 do
t[i]:=chr(a+i);
for i:=1 to 26 do
begin
ch:=ch+t[i];
end;
ch2:=copy(ch,1,3);
delete(ch,1,3);
ch:=ch+ch2;
for i:=1 to 26 do
begin
t2[i]:=t2[i]+ch[i];
end;
for i:=1 to 26 do
begin

t3[i]:=t3[i]+ord(t2[i][1]);

end;
for i:=1 to 2 do
begin
if t3[i] = ord (t[i][1])+3 then
str(t3[i],ch4);
end;
for i:=1 to 26 do
write(t[i]:3);
writeln;
for i:=1 to 26 do
write(t2[i]:3);
writeln;
for i:=1 to 26 do
begin
write('|':3);
end;
writeln;
for i:=1 to 26 do
begin
write(i:3);
end;
writeln;
for i:=1 to 26 do
write(t3[i]:3);
writeln;
writeln;
writeln;
for i:=1 to 26 do
write(ch4[i]);
end.