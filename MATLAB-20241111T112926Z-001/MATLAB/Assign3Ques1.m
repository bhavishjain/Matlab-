p = [6,-25,31,0,-31,25,-6];
x = [1,2,0];
f = @(x) 6*x.^6 - 25*x.^5 + 31*x.^4 - 31*x.^2 + 25*x -6 ;
z = feval(f,x);
disp(z);
y = polyval(p,x);
disp(y);
r1 = roots(p);
disp(r1);
syms x
eqn1 = x.^2 + 4 == 0;
s1 = solve(eqn1,x,'real',true);
disp(s1);
syms x
eqn2 = x.^3 - 8 == 0;
s2 = vpasolve(eqn2,x);
disp(s2);
syms x
c = coeffs(6*x.^6 - 25*x.^5 + 31*x.^4 - 31*x.^2 + 25*x -6);
disp(c);
fun = @(x) 6*x.^6 - 25*x.^5 + 31*x.^4 - 31*x.^2 + 25*x -6;
x0 = 3;
r2 = fzero(fun,x0);
disp(r2);