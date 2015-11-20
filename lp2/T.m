function T = T(theta_0)
    l = 0.1;
    g = 9.82;
    results = {};
    for t = degtorad(theta_0)
        f = @(theta) 1 ./ sqrt(1 - sin(t./2) .^2 * sin(theta) .^2);
        results = [results, 4 .* sqrt(l/g) .* integral(f, 0, pi/2)];
    end
    T = cell2mat(results);
end
