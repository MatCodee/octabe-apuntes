
# esta es una funcion inline
f = inline('cos(x.^2+y.^2)','x','y');

# esta es una funcion anonima
F = @(x,y)[x.^2-y.^2; log(cos(x.*y)+2)];

# esta es una funcion simbolica

syms x
f(x) = atan(x^3/(x^2+1));