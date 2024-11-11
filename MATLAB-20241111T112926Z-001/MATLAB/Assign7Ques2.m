f = @(x) (1 + x.^2)^-1;
a = 0;
b = 6;
n = input('number of intervals :');
delta = (b-a)/n;
intt = 0;
intt = intt + f(a) + f(b);
for i=1:n
    ai = a + i*delta;
    if (mod(i,2)==1)
        intt = intt + 4*f(ai);
    else
        intt = intt + 2*f(ai);
    end
end
intt = intt*delta/3;
disp(intt);
