f = @(x) 3*x - cos(x) - 1;
g = @(x) 3 + sin(x);
x0 = 0;
i = 0;
while norm(f(x0))>0.0001
    i = i+1;
    if(g(x0))== 0
        disp('Root cannot be found');
        break;
    end
    xn = x0 - (f(x0)/g(x0));
    x0 = xn;
end
disp(x0);
disp(i);