%% Uppgift 1

u0 = [.5; .3];
[t, U] = ode45(@volterra, [0 80], u0);
figure(1), clf
plot(t, U(:, 1), t, U(:, 2), 'r--');
legend('Betysdjur', 'Rovdjur');
xlabel('Tid'), ylabel('Population')
title('Volterra-Lotka')

%% Uppgift 2

g = 9.81;
l = .1;

theta0 = (30:20:180) * pi / 180;
tspan = linspace(0, 1, 200);

for k=1:length(theta0)
    u0 = [theta0(k);0];
    [t, U] = ode45(@(t, u)pendel(t, u, g, l), tspan, u0);
    subplot(1, 2, 1)
    plot(t, U(:, 1))
    hold on
    subplot(1, 2, 2)
    plot(U(:, 1), U(:, 2))
    hold on
end

% latex label helper functions
l_label = @(lfn, s) lfn(s, 'interpreter', 'latex', 'fontsize', 20);
l_xlabel = @(s) l_label(@xlabel, s);
l_ylabel = @(s) l_label(@ylabel, s);


subplot(1, 2, 1), hold off
l_xlabel('$t$')
l_ylabel('$\theta(t)$')

title('Lösningar, dämpad pendel')

subplot(1, 2, 2), hold off
l_xlabel('$\theta(t)$')
l_ylabel('$\dot{\theta}(t)$')

title('Fasporträtt')