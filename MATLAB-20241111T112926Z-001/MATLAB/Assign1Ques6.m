n = input('Limit : ');
pro = 1;
i = 1;
while i<=n
    pro = pro*(1+(2/i));
    i = i+1;
end
disp(pro);