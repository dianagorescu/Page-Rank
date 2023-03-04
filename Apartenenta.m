function y = Apartenenta(x, val1, val2)
% Calculeaza valori pentru care u(x) sa fie f continua
% Verificam fiecare ramura
if x>=0 && x<=val1
  y=0;
end

if x>=val1 && x<=val2
  a = 1/(val2 - val1);
  b = - val1/(val2 - val1);
  y = a*x + b;
end

if x>val2 && x<1
  y=1;
end
end