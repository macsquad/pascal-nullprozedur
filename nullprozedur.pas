program Felder (input,output);
   
 const FELDMAX = 20;
 
 type
 tIndex = 1..FELDMAX;
 tFeld = array[tIndex] of integer;
 
 var 
 a : tFeld; 
 eingabe : integer;
 zeiger : integer;
 
 procedure alleDrucken(zuDrucken:  tFeld);
  var
  zeiger: integer;
  
  begin
   zeiger := 1;
   writeln();
    while zeiger <= FELDMAX do 
    begin
{    writeln(a[zeiger]); }
{ gibt das array in einer zeile aus }
    write(a[zeiger],', '); 
    zeiger:= zeiger+1;
    end;
   end;
 
 procedure doppelteZuNull(ioArray: tFeld);
 { ersetzt doppelte einträge im Array durch "0" }
 
  var
  i,j: integer;
 
 { for-Schleife mit bis zu 20 Durchläufen } 
  begin
 { Index initialisieren }
   i:=1;
   j:=2;
 
 { Schleifen durchlaufen für i und j in i } 
    for i:=1 to 20 do
    begin
      for j:=2 to 20 do
 { j muss beim ersten durchlauf höher sein als i }
      begin
 { Bedingung: gleiche Werte, aber j (folgende) größer als j }
       if (a[i] = a[j]) and (j>i) then
       a[j] := 0;
 { Bedingung erfüllt, dann auf "0" }     
 { Debug durch Druckbefehl (ddd) }
 {  alleDrucken(a); }
      end; { Ende j }
    end; { Ende i }
  
  end; { Ende doppelteZuNull }
 
BEGIN

 { Array vorgeben }
 { kann per Eingabe überschrieben werden }
   a[1] := 3;
   a[2] := 2;
   a[3] := 1;
   a[4] := 5;
   a[5] := 5;
   a[6] := 5; 
   a[7] := 4;
   a[8] := 8;
   a[9] := 9;
   a[10] := 123;
   a[11] := 2;
   a[12] := 1;
   a[13] := 5;
   a[14] := 4;
   a[15] := 5;
   a[16] := 4;
   a[17] := 5;
   a[18] := 18;
   a[19] := 9;
   a[20] := 3;

   writeln('Eingabe der Zahlen, Beenden mit 0'); 
   readln(eingabe);
   zeiger:=0;
   while eingabe <> 0 do
   begin
   zeiger:=zeiger+1;
   a[zeiger] := eingabe; 
   readln(eingabe);
   end;

{ Ausgaben zur Kontrolle }
   alleDrucken(a);
   writeln('');
{ Null-Prozedur }
   doppelteZuNull(a);

{ Ausgaben zur Kontrolle, again }
   alleDrucken(a);
   
END.
