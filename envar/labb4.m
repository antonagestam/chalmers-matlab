%% Uppgift 1

t = linspace(0, 10 * pi);
x = t - sin(t);
y = 1 - cos(t);
plot(x, y), axis equal


%% Uppgift 2 och 3

t = linspace(0, 2*pi, 500);
a = 1;
b = 0.5;
p = 2;
q = 1;
x = @(t) a .* cos(t) + p;
y = @(t) b .* sin(t) + q;
dx = @(t) -sin(t) * a;
dy = @(t) cos(t) * b;

plot(x(t), y(t), 'g')
hold on
axis equal
axis([.5 3.5 0 2])
p = @(t) plot_normal(t, x, y, dx, dy);
p(1);
p(3);
p(56);


%% Uppgift 4

L = @(x, y) sum(sqrt(diff(x).^2+diff(y).^2));
l = L(x(t), y(t));
display(sprintf('Ellipsens omkrets mätt som polygontåg: %0.5g', l))
dt = @(t) a ^ 2 .* sin(t) .^ 2 + b ^ 2 .* cos(t) .^ 2;
A = integral(dt, t(1), t(length(t)-1));
display(sprintf('Ellipsens area: %0.5g', A))