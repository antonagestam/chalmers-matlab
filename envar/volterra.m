function f = volterra(t, u)
    a = .5;
    b = .3;
    c = .2;
    d = .05;
    f = [a * u(1) - b * u(1) * u(2)
         -c * u(2) + d * u(1) * u(2)];
end

