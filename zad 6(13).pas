var
  input,output: text;
  n,line: string;
begin
  Write('Имя файла: '); // Имя - zad6.txt
  Readln(n);
  Assign(input,n);
  Assign(output,'1'+n);
  Reset(input);
  Rewrite(output);
  While not eof(input) do
   begin
    Readln(input,line);
    if line<>'' then 
     Writeln(output,line);
   end;
  Close(input);
  Close(output);
  Erase(input);
  Rename(output,n);
end.