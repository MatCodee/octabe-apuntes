% Ejercicio hecho en octabe
% nombre: Matias Altamirano Vera

ino = 50
A = diag(3.^(-linspace(1,50,50)));
display("termino de mostrar la matriz");
for it = 1:50 
  d = ino - it;
  A = A + diag(-ones(d,1),it);
endfor

B = ones(50,50);
for i = 1:50
  for j = 1:50
     B(i,j) = sqrt((i+1)*(j+1));
  endfor
endfor

M = [A B]; % matriz A


% Ademas determine la norma Euclidiana
M_T = M';

K = M_T * M;

# Tx = b
# T^-1 * T *x = T^-1 * b
#x = T^-1 * b
b = ones(100,1);

for t = 1:100
  b(t) = exp(t);    
endfor
X_m = inv(K) * b

sum = 0
for g = 1:100
  sum = sum + (X_m(g)*X_m(g));
endfor
result = sqrt(sum);


display("Resultado: ");
result % norma Euclidiana





