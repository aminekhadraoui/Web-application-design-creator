program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure areaf (var t:tab);
var
area3,area2,area:string;
area4,area1:integer;

begin
t[12]:='<textarea rows="" cols=""></textarea>';
writeln('donner les rows');
readln(area2);
area1:=pos('""',t[12])+1;
insert(area2,t[12],area1);
writeln('donner les cols');
readln(area3);
area4:=pos('>',t[12])-1;
insert(area3,t[12],area4);
end;

begin
areaf(t);

write(t[12]);
end.