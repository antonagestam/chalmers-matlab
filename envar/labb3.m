%% Uppgift 1

f = @(x) 1.5 + sin(0.02 .* x .^ 2);
Df = @(x) cos(0.02 .* x .^2) .* 0.04 .* x;
a = 0;
b = 25;
V = pi * integral(@(x) f(x) .^ 2, a, b)
S = 2 * pi * integral(@(x) abs(f(x)) .* sqrt(1 + Df(x) .^2), a, b)


%% Uppgift 2

d = 10:20:170;
t = T(degs);
[d(:), t(:)]
x = linspace(10, 170);
plot(x, T(x))
