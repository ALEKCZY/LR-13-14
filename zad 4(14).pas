var
 S:String;
 F_in,F_temp: File of Real;
 temp,maxEl,minEl,a:Real;
 i,maxI,minI,n:integer;
begin
Assign(F_in,'123');
rewrite(F_in);
write('Сколько чисел записать в файл n=');
readln(n);
for i:=1 to n do
 begin
  Read(a);
  write(F_in,a);
 end;
Reset(F_in);
  i:=1;
  while (not eof(F_in)) do
   begin
    Read(F_in,temp);
    if (temp>maxEl) or (i=1) then
     begin
      maxEl:=temp;
      maxI:=i;
     end;;
    if (temp<minEl) or (i=1) then
     begin
      minEl:=temp;
      minI:=i;
     end;;
    inc(i);
   end;
  Close(F_in);
  Reset(F_in);
  Assign(F_temp,'text1');
  ReWrite(F_temp);
  i:=1;
  while (not eof(F_in)) do
   begin
    Read(F_in,temp);
    if i=maxI then Write(F_temp,minEl)
    else if i=minI then Write(F_temp,maxEl)
         else Write(F_temp,temp);
    inc(i);
   end;
  Close(F_in);
  Close(F_temp);
  Erase(F_in);
reset(F_temp);
while not eof(F_temp) do begin
read(F_temp,a);write(a,' ');
end;
close(F_temp);
Rename(F_temp,'7678');
end.