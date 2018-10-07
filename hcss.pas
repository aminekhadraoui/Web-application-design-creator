program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure shadow(var t:tab);
var
omb,sha,con:string;
begin
t[1]:='{color : ;text-shadow: 1px 1px 2px , 0 0 25px red, 0 0 5px ;}' ;
writeln('donner le coleur de shadow text');
readln(sha);
insert(sha,t[1],pos('2px',t[1])+4);
writeln('donner le coleur de l''ombre ');
readln(omb);
insert(omb,t[1],pos(';}',t[1]));
writeln('donner le coleur de context');
readln(con);
insert(con,t[1],pos('color:',t[1])+8);
end;

begin
shadow(t);
write(t[1]);
end.