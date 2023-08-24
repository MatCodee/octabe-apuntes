# ejercicios del laboratorio numero 2

# ejercicio 1:
X = sym('X');
function X = expMath1(x)
    if x <= 0
      X(1) = 2*(sin(2*x)^2);
    elseif x > 0
      X(2) = 1 - exp(-x); 
    end
end

# ejercicio 2:
function X = expMath2(x)
  if x <= -2
    X(1) = x -1;
  elseif abs(x) < 2
    X(2) = 1 - x.^2;
  elseif x >= 2
    X(3) = -1/(x+1);
  end
end


# TODO: Este es un problema que no puedo resolver
# ejercicio 3:
function x = fact(x)
  i = 0;
  fc = 1;
  for x = i 
     i = i+1;
     fc = fc*i; 

     disp("pasando el bucle");
  end
end 

function X = expMath3(x)
  i = 0;
  for i = x   
    i = i + 1;
  endfor
end

  
  
  
  
  
  
  
  

