program ex;
uses wincrt;
var
ch:string;
k:integer;
begin
readln(ch);
k:=pos('""',ch)+1;
insert('red',ch,k);
write(ch);
end.