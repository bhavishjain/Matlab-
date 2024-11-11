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
j = 2;
while(j<=n)
    i = n;
    while(i>1)
        z = Y(i,j-1)-Y(i-1,j-1);
        Y(i,j) = z;
        i = i-1;
    end
    j = j+1;
end
h = X(2)-X(1);
r = (xx-X(n))/h;
yy = 0;
for i=1:n-1
    pro = 1;
    for j=1:i
        pro = pro*(r+j-1);
    end
    fact = 1;
    for j=1:i
        fact = fact*j;
    end
    pro = pro*Y(n,i+1)/fact;
    yy = yy + pro;
end
disp(yy+Y(n,1));