Var
  s,s1: String;
  input,output: Text;
  n,i: Byte;
BEGIN
Assign(input,'input.txt');
Rewrite(input);
Write('Введите кол-во рандомных строк: ');
Readln(n);
Writeln('Введите рандомные строки:');
For i:=1 to n do
begin
  Readln(s);
  Writeln(input,s);
end;
Close(input);
Assign(output,'output.txt');
Rewrite(output);
Write('Введите строку S: ');
Readln(s);
Writeln(output,s);
Reset(input);
While not Eof(input) do
begin
  Readln(input,s1);
  Writeln(output,s1);
end;
Writeln(output,s);
Close(input);
Close(output);
Erase(input);
Rename(output,'input.txt');
END.