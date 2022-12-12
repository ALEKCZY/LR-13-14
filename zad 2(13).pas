var 
filetext: file of char;
i,j,n,k:integer;
 
begin
   assign(filetext,'c:\text2.txt');
   rewrite(filetext);
   Write('N = ');
   readln(n);
   Write('K = ');
   readln(k);
   For i:=1 to n do
     begin
     For j:=1 to k do
       write(filetext,'*');
     Write(filetext,#13,#10);
     end;
   close(filetext);
end.