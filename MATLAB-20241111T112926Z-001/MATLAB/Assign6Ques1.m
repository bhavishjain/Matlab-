n = input('number of data points : ');
X = zeros(n,1);
Y = zeros(n,1);
for i=1:n
    x = input('x : ');
    y = input('y : ');
    X(i) = x;
    Y(i) = y;
end
xx = input('point : ');
yy = 0;
for j=1:n
    p = 1;
    for k = 1:n
        if k==j
            continue;
        end
        p = p*(xx-X(k))/(X(j)-X(k));
    end
    yy = yy + p*Y(j);
end
disp(yy);