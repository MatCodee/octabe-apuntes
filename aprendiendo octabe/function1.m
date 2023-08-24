# esta es una matriz aleatoria de 3x5
#m = rand(3,5);

# ejemplo de funciones
X = sym('X');
function X = function_value(a,b,c)
  D=b^2 -4*a*c;
  X(1)=(-b+sqrt(D))/(2*a);
  X(2)=(-b-sqrt(D))/(2*a);
end

Y = sym('y');
function y = cuadrado(x)
  n = 0;
  while n^2 <= x
    y = n^2;
    n = n+1;
  end
end
