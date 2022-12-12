type
  A = array [1..100] of integer;
 
function ReadFromFile(var f:text;var a1:A):integer;
var
  i:integer;
begin
  i:=0;
  while not eof(f) do begin
    inc(i);
    readln(f,a1[i]);
  end;
  ReadFromFile:=i;
end;
 
procedure Sort(var a1:A;sizemas:integer);
var
  mp:integer;
  i,j:byte;
begin
  for i:=1 to sizemas do
    for j:=1to sizemas do
      if a1[j]>a1[j+1] then begin
        mp:=a1[j];
        a1[j]:=a1[j+1];
        a1[j+1]:=mp;
      end;
end;
 
procedure TDFile(var f:text;var a1:A;sizemas:integer);
var
  i:integer;
begin
  for i:=1 to sizemas do
    writeln(f,a1[i]);
end;
 
var
  b:A;
  size:integer;
  f:text;
 
begin
  assign(f,'input5.txt');
  reset(f);
  size:=ReadFromFile(f,b);
  close(f);
  Sort(b,size);
  assign(f,'input5.txt');
  rewrite(f);
  TDFile(f,b,size);
  close(f);
end.