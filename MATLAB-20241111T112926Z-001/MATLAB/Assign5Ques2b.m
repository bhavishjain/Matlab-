A = [8,-3,2;4,11,-1;6,3,12];
B = [20;33;35];
root = [0;0;0];
nroot = root;
n = size(root);
i = 0;
while true
    i = i+1;   
    for j=1:n
        sum = 0;
        for k=1:n
            if k==j
                continue;
            end
            sum = sum + A(j,k)*nroot(k);
        end
        nroot(j) = (B(j) - sum)/A(j,j);        
    end
    if (norm(root-nroot))<0.0001
            break;
    end
    root = nroot;
end
disp(i);
disp(nroot);