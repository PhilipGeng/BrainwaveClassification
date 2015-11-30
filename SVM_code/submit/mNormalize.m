function xn = mNormalize(x)
    xn = x/norm(x);
    xnS = size(xn);
    
    for i=1:1:xnS(1)
        for j=1:1:xnS(2)
            if xn(i,j)>0.2
                xn(i, j) = 0.2;
            end
        end
    end
    
end