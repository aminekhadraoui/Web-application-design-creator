program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure script (var t:tab);
var
sc1,sc:integer;
scr1,a,scr:string;
begin
t[5]:='<style> input[type=text] {width: %;padding: 12px 20px;margin: 8px 0;';
a:='box-sizing: border-box;border: 2px solid ;border-radius: 4px;}</style>';
writeln('donner le width a votre form');
readln(scr);
sc:=pos('%',t[5]);
insert(scr,t[5],sc);
t[5]:=t[5]+a;

writeln('donner le coleur de votre form (input)');
readln(scr1);
sc1:=pos(';border-radius',t[5]);
insert(scr1,t[5],sc1);
end;
begin
script(t);
write(t[5]);

end.