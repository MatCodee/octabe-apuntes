x = -3:.2:3;
y = -3:.2:3;
[X,Y] = meshgrid (x,y);
Z = X.*Y;
mesh(X,Y,Z);
figure;
surf(X,Y,Z);
