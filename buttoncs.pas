program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure submit (t:tab);
var
submit1,submit2,submit3,submit4:string;
begin
writeln('donner le coleur de la button');
readln(submit1);
writeln('donner le coleur de text pour le button');
readln(submit3);
writeln('donner le coleur de border');
readln(submit4);
t[1]:='input[type=submit] {background-color: '+submit1+';color: '+submit3+';border: 2px solid '+submit4+';';
writeln('donner l''align de text (center/right/left)');
readln(submit2);
t[1]:=t[1]+'padding: 15px 32px;text-align: '+submit2+';text-decoration: none;display:';
t[1]:=t[1]+'inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;}';
write(t[1]);
end;

begin
submit(t);
end.