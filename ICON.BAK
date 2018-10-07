program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
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
write(t[3]);


end;


begin

icon(t);
end.