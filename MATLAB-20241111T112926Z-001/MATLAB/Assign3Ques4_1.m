f = @(x) x*(log10(x)) - 1.2;
a = 2;
b = 3;
curr = (a+b)/2;
prev = a;
i = 0;
while norm(prev-curr)>0.0001
    i = i+1;
    prev = curr ;
    nmid = (a+b)/2;
    if f(nmid)*f(a)<0
        if f(a)<0
            b = nmid;
        else
            b = a;
            a = nmid;
        end
    elseif f(nmid)*f(b)<0
        if f(b)<0
            a = b;
            b = nmid;
        else
            a = nmid;
        end
    else
        break;
        
    end
    curr = (a+b)/2;
    
end
disp(i);
disp(curr);