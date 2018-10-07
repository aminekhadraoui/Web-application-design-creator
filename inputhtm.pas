program best;
uses wincrt;
type
tab=array [1..20] of string;
var
t:tab;
procedure input (var t:tab);
var
in7,in6,in4,in2,repinput,fo1,fo2:string;
in8,in5,in3,in1,i,inp:integer;
   begin

writeln('donner le nombre d''input');
readln(inp);
fo1:='<form method="POST" action=".php" name="f" onsubmit="return verif1()">';
fo2:='</form>';
  for i:=1 to inp do
   begin

insert('<input type="" name="" align="">',t[6],length(t[6])+1);
writeln('tu veux ret ou ligne (oui/non) input[',i,']');
readln(repinput);

  if (repinput = 'oui') then
   begin

insert('<br />',t[6],length(t[6])+1);
   end;

writeln('donner le type d''input (text/password) [',i,']');
readln(in2);
in1:=pos('type=""',t[6])+6;
insert(in2,t[6],in1);
 writeln('donner align');
 readln(in6);
 in5:=pos('align=""',t[6])+7;
 insert(in6,t[6],in5);
writeln('donner le nom du forme');
readln(in7);
in8:=pos('name=""',t[6])+6;
insert(in7,t[6],in8);
   end;

t[5]:=fo1+t[6]+fo2;
end;
begin
input(t);
writeln(t[5]);
end.