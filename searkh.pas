program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure searchh (var t:tab);
var
seark:string;
begin
writeln('donner le commentaire quil va aparaitre dans le searcher');
readln(seark);
t[1]:='<form><input type="text" name="search" placeholder="'+seark+'"></form>';
end;


begin
searchh(t);
write(t[1]);


end.