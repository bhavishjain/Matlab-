f = @(x) x*(log10(x)) - 1.2;
a = 2;
b = 3;
i = 0;
prev = a;
curr = b;
while norm(prev-curr)>0.0001
    i = i+1;
    prev = b;
    x = (a*f(b)-b*f(a))/(f(b)-f(a));
    if f(x)>0
        b = x;
    elseif f(x)<0
        a = x;
    else
        break;
    end
    curr = x;
end
disp(i);
disp(x);