format long;
n = input('number of data points : ');
X = zeros(n,1);
Y = zeros(n,n);
for i=1:n
    x = input('x : ');
    y = input('y : ');
    X(i) = x;
    Y(i) = y;
end
xx = input('point : ');
for j=2:n
    for i=1:n-1
        Y(i,j) = Y(i+1,j-1)-Y(i,j-1);
    end
end
Y(1,n) = 0;
yy = Y(1,1);
h = X(2)-X(1);
r = (xx-X(1))/h;
for i=1:n-1
    pro = 1;
    for j=1:i
        pro = pro*(r-j+1);
    end
    fact = 1;
    for j=1:i
        fact = fact*j;
    end
    pro = pro*Y(1,i+1)/fact;
    yy = yy + pro;
end
disp(yy);