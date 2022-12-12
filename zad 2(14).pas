var f:file of real;
    n,i:integer;
    a,s:real;
begin
assign(f,'filetxt');
rewrite(f);
write('Сколько чисел записать в файл n=');
readln(n);
for i:=1 to n do
 begin
  Read(a);
  write(f,a);
 end;
reset(f);
s:=0;
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a:0:2,' ');
  if i mod 2<>0 then s:=s+a;
 end;
writeln;
close(f);
write('Сумма элементов с четными номерами=',s:0:2);
end.