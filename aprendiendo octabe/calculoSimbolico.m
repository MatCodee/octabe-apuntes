# Clase de Funciones Simbolicas
#x = sym('x');
#y = sym('y');

# esta es una funcion simbolica
#p1 = 3*x^2-2*x+1;

# funciones de parametros simbolicos 

# ejemplo:
syms x h
f = tan(x);
cif = (subs(f,x,x+h)-f)/h;


display("Representacio matematica");
pretty(cif);

display("Calculo del limite");
df = limit(cif ,h ,0)

display("Calculo de la derivada de la funcion");
Df = diff(f,x)
