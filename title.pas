program tit;
uses wincrt;
type
tab=array [1..20] of string;
{title}
var
t:tab;
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


begin
title(t);
write(t[4]);
end.