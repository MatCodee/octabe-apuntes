% Ejercicio hecho en octabe
% nombre: Matias Altamirano Vera

x = -20:0.1:20;

y1 = sin(3.*x);
subplot (2,2,1);
plot(x,y1,'r');

y2 = x.^3 - 4.*x;
subplot (2,2,2);
plot(x,y2,'b');

y3 = exp(-x.^2).*cos(x);
subplot (2,2,3);
plot(x,y3,"linestyle", "--",'g');





