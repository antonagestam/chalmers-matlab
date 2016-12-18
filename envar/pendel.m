
%function f = pendel(t, u, g, l)
%    f = [u(2)
%         -g / l * sin(u(1))];
%end

function f = pendel(t, u, g, l)
    m = .1;
    c = .2;
    f = [u(2)
         -g * sin(u(1)) / l - c * u(2) / m];
end
