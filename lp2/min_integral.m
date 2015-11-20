function q=min_integral(f,I,n,k)
% min_integral - ber‰knar integralen av f(x) pÂ intervallet I.
%
%   Syntax:
%           q =  min_integral(f,I,n,k)
%   Argument:
%           f   - funktionshandtag: pekar pÂ namnet till en funktionsfil eller
%                 till en anonym funktion. T.ex. f=@funk eller f = @(x)sin(x.^2)
%           I   - 1x2 matris, anger ett intervall I=[a b]
%           n   - positivt heltal, stegl‰ngden ges av: h=(b-a)/n d‰r n ‰r antalet delintervall.
%           k   - kvadraturmetod
%   Returnerar:
%           q - ett tal
%   Beskrivning:
%           Programmet ber‰knar ett approximativt v‰rde pÂ integralen
%           av f(x) ˆver intervallet I med antingen rektangelmetoden v‰nster (k=1),
%           rektangelmetoden hˆger (k=2), mittpunktsmetoden (k=3) eller 
%           trapetsmetoden (k=4).
%   Exempel:
%           q=min_integral(@cos,[0, pi/2],100,2)

    a = I(1);
    b = I(2);
    h = (b  - a) / n;
    x = linspace(a, b, n+1);
    q_left = sum(h * f(x(1:n)));
    q_right = sum(h * f(x(2:n+1)));
    
    if k == 1
        q = q_left;
    elseif k == 2
        q = q_right;
    elseif k == 3;
        q = sum(h * f((x(1:n) + x(2:n+1)) ./ 2));
    elseif k == 4
        q = (q_left + q_right) / 2;
    end
