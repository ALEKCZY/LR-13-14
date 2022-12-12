var
    f: file of char;
    c: char;
    i: integer;
    x: string;
begin
    assign (f, 'text1.txt');
    reset (f);
for i:=1 to 5 do begin
if i mod 2=0 then
begin
  seek(f, i-1);
  c:='!';
  write(f, c);
end;
end;
    close(f);
 end.