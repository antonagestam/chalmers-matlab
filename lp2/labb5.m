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
    plot(t, U);
    title(sprintf('h = %g', h));
    axis equal; grid on;
end

%% Uppgift 2

