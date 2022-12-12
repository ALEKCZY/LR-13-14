var
 S: String;
 F_in,F_out: File of Char;
 C:Char;
 i,Space:integer;
 
begin
   assign (F_in, 'perv.txt');
   reset (F_in);
 
  Assign(F_out,'pervout');
  ReWrite(F_out);
 
  i:=0;
  Space:=0;
  while (not eof(F_in)) do
   begin
    inc(i);
    Read(F_in,C);
    if (C=' ') then Space:=i;
   end;
 
  Reset(F_in);
 
  for i:=1 to Space-1 do
   begin
    Read(F_in,C);
    Write(F_out,C);
   end;
 
   Close(F_out);
   Close(F_in);
   Erase(F_in);
   Rename(F_out,'perv');
end.