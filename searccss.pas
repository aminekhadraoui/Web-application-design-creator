program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure searchcss (var t:tab);
var
search1,search2,search3,search4:string;
begin
writeln('donner le width de search');
readln(search1);
writeln('donner le coleur de cadre de votre serach');
readln(search2);
t[1]:='input[type=text] {width: '+search1+'%;box-sizing: border-box;border: 2px solid '+search2+';';
writeln('donner la photo de votre searcher');
readln(search3);
writeln('donner le font de l''image');
readln(serach4);
t[1]:=t[1]+'border-radius: 4px;font-size: 16px;background-color: '+search4+';background-image: url('''+search3+''');' ;
t[1]:=t[1]+'background-position: 10px 10px; background-repeat: no-repeat;padding: 12px 20px 12px 40px;}';
end;

begin
searchcss(t);
write(t[1]);
end.