# Repaso octabe documentacio:

# laboratorio numero 1
global A;
global C;

function showMatrices()
  A = [1,2,5; 2,-1,-6; 3,0,-1]; # 3x3
  B = [0,6,1; 5,1,-3];  # 2x3
  
  display("Esta es la matriz A");
  A
  display("Esta es la matriz B");
  B
endfunction

# implementaciones de las funciones de matrices
function implementFunctionMatrix()
  a = [1,2; 3,4]; # 2x2
  b = [1,1; 2,2]; # 2x2
  
  display("suma de matrices");
  sum_A_B = a + b; # tambien para -
  sum_A_B
  
  display("Transponer una matriz");
  display("A original"); a
  display("A Transpuesta"); a'
  
  # Implementacion de producto escalar de matrices
  t =[1,1];
  display("Este es el producto escalar entre matrices");
  a*t'
  
  # normalizacion de vectores
  vect = [1,2,3];
  vect_norm = norm(vect); # esta es la norma del vectaro vect
 
endfunction

function operandMatriz()
  vect = [1,2,3,4,5,6,7,8,9];
  # maximo y minimo elemento del vector
  display("El elemento mas minimo");
  min(vect)
  display("el elemento mas maximo");
  max(vect)
  
  # suma y producto de todos los elementosd del vector
  display("suma de todos los elementos del vector");
  sum(vect)
  display("multiplicacion de los elementos del vector");
  prod(vect)
 
  # promedio de los elementos del vector
  display("promedio de los elementos vector");
  mean(vect)
  
  # multiplicacion de los elementos a[i]*b[i]
  a = [1,2,3]
  b = [2,5,-1]
  a.*b
 endfunction
 
 
# manipulacion de matrices
function man_matriz()
  # generamos una matriz identidad
  eye(2,2) # 2x2
  #matriz de 0
  zeros(2,2)
  #matriz de 1
  ones(2,2)
  # matriz dd numeros aleatorios
  rand(2,2)
  
  
  # diagonal de una vector
  example= [1,2;6,5]
  diag(example) 

endfunction

# operaciones a matriz 
function prob_matriz()
  element = [1,2;4,5];
  display("componentes con las dimensiones de la matriz");
  size(element) 
  
  display("determinante de la matriz");
  det(element)
  
  # inversa de una matriz primero tenemos que ver si es invertible
  display("inversa de una matroiz");
  inv(element)
  # recordar que el rango es el nuemro de filas o columnas que es
  # linealmente independiente
  display("este es el rango de una matriz");
  rank(element)
  
endfunction


 
# showMatrices()
#implementFunctionMatrix()
#operandMatriz()
#man_matriz()
#prob_matriz()


# laboratorio numero 2

# funciones especificando las salidas
function x = operation_vector()
  a = [1,2,3,4,5];
  x(1) = sum(a);
  x(2) = prod(a);#   este es el factorial del numero 5
 endfunction
x = operation_vector();

# example de funciones por partes (correcta demostrado en el photomath)
function f = function_example1(x)
  if x <= 0
    f = 2*sin(2*x)^2;
  else
    f = 1 - e^-x;
  endif
endfunction

f = function_example1(1);

# Escriba un programa que sirva para calcular una aproximaciï¿½n de la evaluaciï¿½n de la funciï¿½n
# exponencial a partir del uso de la serie de Taylor:
function s = aprox_taylor(n,x)
  s = 0;
  for k = 1:n
    s = s + x^k/factorial(k);
  endfor
endfunction
# esta es la aproximacion de taylor que quivale a e^x
#display("Esta es la aproximacion de tayloar");
#sol = aprox_taylor(200,5);

# esta es la funcion de factorial 
#factorial(5)



# Calculo Simbolico
# para el calculo simbolico debemos implementar pkg load symbolic 

# declaracion de variables:
#syms y t
# otra formna de declarar variables simbolicas
#h = sym('x');
#j = sym('y');
# calculo simbolico: con el calculo simbolico podemos realizar operaciones con expresiones algebraicas
# escalares, vectoriales y matrices

# ejemplo:
global x;
function sol = calculeSymbolic1(a,b,c)
  x = sym('x');
  # definicion de un polinomio de segundo grado al que se le calcula las variables
  p = a*x^2+b*x+c;
  sol(1) = (-b+sqrt(b^2-4*a*c))/2*a;
  sol(2) = (-b-sqrt(b^2-4*a*c))/2*a;
endfunction
p = calculeSymbolic1(2,2,2);



# ejemplo:
function example1_calcule()
  syms x h
  f = tan(x);
  cif = (subs(f,x,x+h)-f)/h;
  pretty(cif) # presenta un formato matematico de la expression
  
  display("Limite de la funcion tangente cuando h tiende a 0 (derivada)");
  df = limit(cif,h,0)  
  display("Dervidada de la funcion tangente");
  Df = diff(f,x)
endfunction
example1_calcule()

# funciones matematicas:
# funciones inline
function example_function_inline()
  syms x y
  f = inline('cos(x.^2+y.^2)','x','y')
endfunction

example_function_inline();

# definicion de funciones por partes
function y = f(x)
  [m,n] = size(x) # le pasamos el tamaño de la dimensiones del arreglo de datos x
  for k = 1:m
    for l = 1:n
      if x(k,l) < 1
        y(k,l) = exp(-x(k,l)^2) - log(cosh(x(k,l)));
      else
        y(k,l) = 2*x(k,l)^(-3) + cos(pi*x(k,l));
      endif
    endfor
  endfor
endfunction

# Laboratorio 4 Graficas de datos:

# generamos un punto
#plot(1,3,'*')

function graf_function()
  x = 0:1:5;
  # estos son valores de las funciones en los datos entregados
  y = f(x)
  display("Grafica de la funcion: ");
  plot(x,y)
endfunction
#graf_function();

# ejemplo:
#x = [1 ,4 ,2]; 
#y = [3 ,6 ,0];
#plot(x,y,color='c')

#implementacion de subgraficas:
function subplots_implement()
  clear all; clc
  subplot(2,2,1)
  x = 0:100;
  y1 = x.^2;
  plot(x,y1,'r');
  title('x^2');
  
  subplot(2,2,2)
  y2 = cos(x);
  plot(x,y2,'g');
  title('Coseno');
  
  subplot(2,2,3)
  
  plot(sqrt (0:0.1:100));
  title('Raiz cuadrada')

  
  subplot(2,2,4)
 
  plot(exp(sqrt(x)))
  title('Compuesta entre exp() y sqrt()')
endfunction
#subplots_implement();


# grafica de funciones simbolicas

#ejemplo:
#x = sym('x');
#f(x) = x*(x-2)*(x-4);
#ezplot(f,[-2,6]);


# Grafica de funciones de 2 variables

#x = [1,2,3];
#y = [2,3,4,5];
#[X,Y] = meshgrid(x,y); # parrilla de numeros:
#Z = X.*Y;


# comandos mesh,surf,contour
# Implementacion de las graficas de 2 variables me falata


# Laboratorio 5
# Ecuaciones diferenciales dee primer order:






