function L = polylength(x, y)
    n=length(x);
    L=0;
    for i=1:n-1
        a = (x(i+1) - x(i));
        b = (y(i+1) - y(i));
        c = sqrt(a^2 + b^2);
        L = L + c;
    end
    L
end