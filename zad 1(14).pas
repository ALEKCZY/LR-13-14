var
  f1,f2,f3: file of real;
  size,i,n: byte;
  x: real;
begin
   assign(f1,'name1');
   rewrite(f1);
   write('Кол-во элементов: ');
   read(n);
   writeln ('Ввод элементов: ');
for i:= 0 to n-1 do
  begin
     read(x);
     write(f1,x);
end;
   close(f1);
   assign(f1,'f1');
   assign(f2,'f2');
   assign(f3,'f3');
   reset(f1);
   rewrite(f2);
   rewrite(f3);
   size:=filesize(f1);
i:=0;
  write('Нечетные(f2): ');
  repeat
       seek(f1,i);
       read(f1,x);
       write(f2,x);
       write(x:2:2,' ');
       inc(i,2);
  until i>=size;
    close(f2);
    writeln;
    write('Четные(f3): ');
i:=1;
  repeat
      seek(f1,i);
      read(f1,x);
      write(f3,x);
      write(x:2:2,' ');
    inc(i,2);
  until i>=size;
   close(f3);
   close(f1);
end.