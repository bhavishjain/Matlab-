r = input('common ratio : ');
n = input('final power : ');
sum = 0;
k = 1;
if r<1 && r>-1
    disp('Convergent');
else
    disp('Divergent');
while k<=n
    i = 1;
    pro = 1;
    while i<=k
        pro = pro*r;
        i = i+1;
    end
    sum = sum + pro;
    k = k+1;
end
display(sum);

end