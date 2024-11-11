f = @(x) exp(1).^(-x) - x;
a = 0;
b = 1;
i = 0;
while norm(a-b)>0.001
    i = i+1;
    c = b - f(b)*(b-a)/(f(b)-f(a));
    a = b;
    b = c;
end
disp(b);
disp(i);