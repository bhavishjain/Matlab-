k = input('Limit : ');
e = exp(1);
einv = 1/e;
sum = 0;
i = 0;
while i<=k
    pro = 1;
    r = 1;
    while r<=i
        pro = pro*einv;
        r = r+1 ;
    end
    sum = sum + pro;
    i = i+1 ;
end
actsum = e/(e-1);
disp(sum);
disp(actsum);
error = (actsum-sum)*100/sum;
disp(error);