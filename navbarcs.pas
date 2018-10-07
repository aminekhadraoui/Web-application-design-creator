program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure cssnavbar (var t:tab);
var
navbarc,navbarc1,navbarc2:string;
begin
writeln('donner le coleur de vavbar');
readln(navbarc);
t[1]:='ul {list-style-type: none;margin: 0;padding: 0;overflow: hidden;background-color:'+navbarc+';}';
writeln('donner le coleur de separateur de navbar');
readln(navbarc1);
t[1]:=t[1]+'li {float: left;border-right:1px solid'+navbarc1+';}';
t[1]:=t[1]+'li:last-child {border-right: none;}';
t[1]:=t[1]+'li a {display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;}';
writeln('donner le coleur de selection de curseur');
readln(navbarc2);
t[1]:=t[1]+'li a:hover:not(.active) {background-color:'+navbarc2+';}';
end;

begin
 cssnavbar(t);
 write(t[1]);

end.