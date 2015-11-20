%% Uppgift 1

n = 100;
a = 0;
b = 1;
f = @(x) x .* sin(x);
x = linspace(a, b, n+1);
h = (b - a) / n;
q_left = sum(h * f(x(1:n)))
q_right = sum(h * f(x(2:n+1)))
q_trap = (q_left + q_right) / 2
q_middle = sum(h * (f(x(1:n)) + f(x(2:n+1))) / 2)


%% Uppgift 3

f = @(x) exp(-x.^2);
g = @(x) 1 ./ (1 + x.^2);
i = @(x) tan(sqrt(x));

min_integral(f, [0 1], 1000, 3)
min_integral(g, [-1 1], 2000, 4)
min_integral(i, [0 1], 3000, 2)

%% Uppgift 4

f = @(x) x .* sin(x);
real = sin(1) - cos(1);
a = 0;
b = 1;
I = [a b];

abs(min_integral(f, I, 50, 1) - real) / abs(min_integral(f, I, 100, 1) - real)
abs(min_integral(f, I, 50, 3) - real) / abs(min_integral(f, I, 100, 3) - real)

%% Uppgift 5

g = @(x) sin(x);
h = @(x) cos(x);
f = @(x) abs(sin(x) - cos(x));
a = pi / 4;
b = 5 * pi / 4;
x = linspace(a, b);
plot(x, g(x), x, h(x))
integral(f, a, b)

%% Uppgift 6

g = @(x) exp(-x.^2/2);
h = @(x) x.^2 - 3.*x + 2;
f = @(x) g(x) - h(x);
a = fzero(f, .5);
b = fzero(f, 2);
integral(f, a, b)
x = linspace(0, 3);
plot(x, g(x), x, h(x), x, f(x)); hold on
fill_between_lines = @(X,Y1,Y2,C) fill( [X fliplr(X)],  [Y1 fliplr(Y2)], C );
x = linspace(a,b);
fill_between_lines(x, g(x), h(x), 'blue');
