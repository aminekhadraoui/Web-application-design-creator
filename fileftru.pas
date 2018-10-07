Program ex;
uses wincrt;
Type
 tab=Array [1..50] of string;
var
 f:text;
 t:tab;

Procedure inputes(var f:text;var t:tab);
var
 
 ch:string;
chx,in6,in4,in2,repinput,fo1,fo2:string;
in5,in3,in1,i,inp:integer;
   begin
   
writeln('donner le nombre d''input');
readln(inp);
fo1:='<form method="POST" action=".php" name="f" onsubmit="return verif1()">';
fo2:='</form>';
  for i:=1 to inp do
   begin

insert('<input type="" name="firstname" align="">',t[6],length(t[6])+1);
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
   end;

t[5]:=fo1+t[6]+fo2;
chx:='';
chx:=chx+t[5];
rewrite(f);
clrscr;
writeln(f,chx);
begin
  assign (f,'C:\tpw\20145.txt');
  inputes(f,t);
  
  close(f);  
end.