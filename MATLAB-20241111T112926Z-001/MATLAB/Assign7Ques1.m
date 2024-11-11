f = @(x) (1 + x.^2)^-1;
a = 0;
b = 6;
n = input('number of intervals :');
delta = (b-a)/n;
intt = 0;
intt = intt + f(a) + f(b);
for i = 1:n-1
    ai = a + (i*delta);
    intt = intt + 2*f(ai);
end
intt = delta*intt/2;
disp(intt);