var
f:text;
x,y,i:integer;
c,n,s,k:integer;
begin
assign(f,'z3.in.txt');
rewrite(f);
Readln(x);
Writeln(f,x);
Close(f);
c:=0;
s:=0;
for i:=2 to x do
    begin
    k:=i;
    while k>0 do begin
         if i mod k = 0 then
             c:=c+1;
          k:=k-1;
    end;
    if c= 5 then 
    s:=s+i;
    c:=0;
end;
assign(f,'z3.out.txt');
rewrite(f);
write(f,s);
close(f);
end.