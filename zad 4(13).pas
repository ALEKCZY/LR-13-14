var
  input,output: Text;
  n,S: String;
  K,i:integer;
begin
 Write('Имя файла: '); //Имя - zad4.txt
 Readln(n);
 Assign(input,n);
 Assign(output,'output.txt'); 
Write('K: ');
Readln(K);
Reset(input);
Rewrite(output);
i:=0;
While not eof(input) do
  begin
   Readln(input,S);
   inc(i);
   if i=k then Writeln(output);
   Writeln(output,S);
  end;
Close(input);
Close(output);
Erase(input);
Rename(output,n);
end.