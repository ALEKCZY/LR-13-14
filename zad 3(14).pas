var
 S:String;
 F_in: File of Real;
 El2,El1,El,Max:Real;
 i:integer;
 a:real;
 
begin
  Assign(F_in,'c:\text.txt');
  rewrite(F_in);
  writeln ('Введите вещественные числа');
  for i:=1 to 5 do begin
      read(a);
      write(F_in,a);
  end;
  close(F_in);
  Reset(F_in); 
  Read(F_in,El);
  Read(F_in,El1);
  El2:=El1;
  writeln('Результат =');
  if (El1>El) then Max:=El1;
  while (not eof(F_in)) do
   begin
    El2:=El1;
    El1:=El;
    Read(F_in,El);
    if (El<El1) and (El1>El2) then Max:=El1;
   end;
  if El1<El then Max:=El;
  Writeln(Max);
  Close(F_in);
end.