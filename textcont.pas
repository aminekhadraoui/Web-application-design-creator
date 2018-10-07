program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure pra(var t:tab);
var
reponsec2:string;
begin
writeln('donner votre text');
readln(reponsec2);
t[1]:=t[1]+'<p>'+reponsec2+'</p>';
end;
procedure h (var t:tab);
var
htextc,hcolort,hquoi:string;
begin
writeln('donner votre text');
readln(htextc);
writeln('donner votre color de text');
readln(hcolort);
writeln('donner ');
readln(hquoi);
t[1]:=t[1]+'<h'+hquoi+' style="color:'+hcolort+';">'+htextc+'</h>';
end;
procedure containerh (var t:tab);
var
reponsec:string;
repoc:integer;
begin
t[1]:='<div class="container">';
writeln('ecrire une text dans votre container ? (oui/non)');
readln(reponsec);
if reponsec ='oui' then
repeat
writeln('quelle est votre choix pour le text ? (p(1)/h(2) and (0) pour sortie)');
readln(repoc);
case repoc of
1:pra(t);
2:h(t);
end;
until repoc=0;
t[1]:=t[1]+'</div>';
write(t[1]);
end;
begin
containerh(t);
end.