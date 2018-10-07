program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure navbar (var t:tab);
var
navk,i,nav:integer;
navx,navx2,navs,navs1:string;
begin
navx:='<ul>';
navx2:='</ul>';
writeln('combient de navBar tu veux?');
readln(nav);
for i:=1 to nav do
begin
writeln('donner le nom pour ton navBar exemple (Home,about,news):');
readln(navs);
writeln('donner le nom de page a transfert(extension[html])');
readln(navs1);
t[13]:=t[13]+'<li><a href="'+navs1+'">'+navs+'</a></li>';
end;
t[13]:=navx+t[13]+navx2;
end;
begin
navbar(t);
write(t[13]);
end.