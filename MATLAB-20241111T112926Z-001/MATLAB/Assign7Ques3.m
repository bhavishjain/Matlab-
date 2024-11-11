f = @(x) (1 + x.^2)^-1;
a = 0;
b = 6;
n = input('number of intervals :');
h = (b-a)/2;
delta = (b-a)/n;
intt = 0;
intt = intt + f(a) + f(b);
for i=1:n
    ai = a + i*delta;
    if (mod(i,3)==0)
        intt = intt + 2*f(ai);
    else
        intt = intt + 3*f(ai);
    end
end
intt = 3*intt*delta/8;
disp(intt);
