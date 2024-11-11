n = input('Integer : ');
m = input('Integer : ');
if n<m
    
        disp('Wrong Input Range. ');
        
else
    
        factn = 1;
        factm = 1;
        factr = 1;
            r = n-m;
        while n>=1
        
            factn = factn*n;
            n = n-1;
        end 
        while m>=1
            
                factm = factm*m;
                m = m-1;
        end
            
        while r>=1
                
                factr = factr*r;
                r = r-1;
        end
        answer = factn/(factm*factr);
        display(answer);
end        