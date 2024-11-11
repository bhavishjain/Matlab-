f = @(x) x.^3 - 3*x + 4;
a = -3;
b = -2;
mid = (a+b)/2;
i = 0;
while norm(f(mid))>0.0001
    mid = (a+b)/2;
    i=i+1;
    if f(mid)*f(a)<0
        if f(a)<0
            b = mid;
        else
            b = a;
            a = mid;
        end
    elseif f(mid)*f(b)<0
        if f(b)<0
            a = b;
            b = mid;
        else
            a = mid;
        end
    else
        break;
        
    end
end
disp(i);
disp(mid);