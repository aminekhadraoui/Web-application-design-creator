program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure butt(var t:tab);
var
butt1:string;
begin
writeln('donner le nom du button');
readln(butt1);
t[1]:='<input type="submit" value="'+butt1+'">';
end;
begin
butt(t);
write(t[1]);
end.