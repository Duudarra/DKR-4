uses graphabc;
var i, n: int64;
    x1, y1, y2, x2, x0, y0, a, b, c, m: real;
begin
  writeln('Введите отрезок: ');
  readln(a, b); 
  writeln('Введите шаг: ');
  readln(c);
  writeln('Введите масштаб: ');
  readln(n);
  setwindowsize(800, 550);
  setwindowtitle('График функции: 2*x^3+(2)*x^2+(-3)*x+17');
  setfontcolor(clMaroon);
  setfontsize(10);
  textout(0, 50, '2*x^3+(2)*x^2+(-3)*x+17');
  setpencolor(clBlack);
  setpenwidth(1);
  line(80, 400, 720, 400);
  line(400, 30, 400, 520);
  setfontsize(8);
  for i:= -15 to 15 do
    begin
      line(400+i*n, 395, 400+i*n, 405);
      textout(395+i*n, 410, floattostr(i));
   end;
  textout(720, 420, 'x');
  for i:= -18 to 5 do
    begin
      line(395, 400+i*n, 405, 400+i*n);
      textout(370, 400+i*n, '');
      textout(375, 395+i*n, floattostr(-i*(10)));
    end;
  textout(420, 20, 'y');
  a:=400+(a*n);
  b:=400+(b*n);
  c:=n*c;
  m:=a;
  for i:= -300 to 300 do
    begin
      x1:=i/n;
      y1:=2*power(x1,3)+2*power(x1,2)+(-3)*x1+17;
      line(trunc(x0), trunc(y0), trunc(400+x1*n), trunc(400-y1*(n/10)), clBlack);
      if trunc(400+x1*n)=a then 
        line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(a), 400, clGreen);
      if (trunc(400+x1*n)=m) and (m<b) then
          begin
            line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(m), 400, clGreen);
            x2:=(i+c)/n;
            y2:=1*power(x1,3)+1*power(x1,2)+3*x1+16;
            line(trunc(400+x2*n), trunc(400-y2*(n/10)), trunc(400+x1*n), trunc(400-y1*(n/10)), clGreen);
            m:=m+c;
          end;
      if trunc(400+x1*n)=b then 
        line(trunc(400+x1*n), trunc(400-y1*(n/0)), trunc(b), 400, clGreen);
   x0:=trunc(400+x1*n);
   y0:=trunc(400-y1*(n/10));
   end;
end.
