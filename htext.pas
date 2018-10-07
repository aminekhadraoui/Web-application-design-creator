program best;
uses wincrt;
type
tab=array [1..30] of string;
var
t:tab;
procedure h (var t:tab);
var
ch7,ch4,ch2,k2,k,k3:integer;
i:string;
ch8,ch6,ch3,ch:string;
begin

write('donner h? :');
readln(i);
write('donner le coleur de h: ');
readln(ch3);
t[3]:='<h align="" style="color:;"></h>';
k3:=pos('h',t[3])+1;
insert(i,t[3],k3);
ch:=copy(t[3],pos(i,t[3]),1);
k2:=length(t[3]);
insert(ch,t[3],k2);
ch2:=pos('color:',t[3])+6;
insert(ch3,t[3],ch2);
writeln('donner l''align (center/right/left)');
readln(ch6);
ch4:=pos('align="',t[3])+7;
insert(ch6,t[3],ch4);
writeln('donner votre text');
readln(ch8);
ch7:=pos('>',t[3])+1;
insert(ch8,t[3],ch7);
write('resultat',t[3]);
end;
begin
h(t);
end.