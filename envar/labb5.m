%% Uppgift 1

f = @(t, u) cos(3.*t) - sin(5.*t) .* u;
a = 1;
b = 15;
ua = 2;

for i = 1:3
    subplot(2, 2, i)
    h = 10 ^ (-i);
    N = (b - a) / h;
    t = a + (0:N) * h;
    U = zeros(size(t));
    U(1) = ua;
    for n=1:N
        U(n+1) = U(n) + h * f(t(n), U(n));
    end
    plot(t, U), axis equal, grid on, title(sprintf('h = %g', h))
end


%% Uppgift 2 och 3

h = .001;
function_data = {
    {@(t, u) t .^ 2, [1 3], 1}
    {@(t, u) u, [0 2], 1}
    {@(t, u) -t .* u, [0 3], 1}
    {@(t, u) -5 .* u, [0 1], 2}
};

for i = 1:size(function_data)
    subplot(2, 2, i)
    data = function_data{i};
    f = data{1}; I = data{2}; ua = data{3};
    [t, U] = min_ode(f, I, ua, h);
    plot(t, U), axis equal
end


%% Uppgift 4

f = @(t, u) cos(3.*t) - sin(5.*t) .* u;
a = 1;
b = 15;
ua = 2;

[t, U] = ode45(f, [a b], ua);
hold on
plot(t, U), axis equal, grid on

[t, U] = min_ode(f, [a b], ua, .001);
plot(t, U)

legend('ode45', 'min\_ode')
