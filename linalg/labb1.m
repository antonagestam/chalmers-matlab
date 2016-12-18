%% Uppgift 1

clc, clf

% lines innehåller tre olika A och b
lines = {
    {[1 3; 5 -2], [6; 13]}
    {[1 3; 2 6], [5; 12]}
    {[1 3; 2 6], [5; 10]}
};

l1 = @(x1, A, b) (b(1) - A(1, 1) * x1) / A(1, 2);
l2 = @(x1, A, b) (b(2) - A(2, 1) * x1) / A(2, 2);
x1 = linspace(2, 4);
[nlines, c_] = size(lines);

% iterera över lines
for i = 1:nlines
    subplot(1, nlines, i)
    A = lines{i}{1};
    b = lines{i}{2};
    plot(x1, l1(x1, A, b)), hold on
    plot(x1, l2(x1, A, b))
    axis equal, axis([2 4 0 2])
    
    % plota skärningspunkt
    R = rref([A b]);
    if sum(R(1, 1:2)) > 0
        x = [R(1, end) R(2, end)];
        plot(x(1), x(2), 'ro')
    end
    
    hold off
end

hold off

%% Uppgift 2

clc, clf

planes = {
    {[-3 1 2; 3 -2 1; -1 5 1], [2; 1; 1]}
    {[-3 1 2; 3 -2 1; 3 -4 7], [2; 1; 1]}
    {[-3 1 2; 3 -2 1; 3 -4 7], [2; 1; 7]}
};
[nplanes, c_] = size(planes);

L = @(i, x1, x2, A, b) (b(i) - A(i, 1) * x1 - A(i, 2) * x2) / A(i, 3);
l1 = @(x1, x2, A, b) L(1, x1, x2, A, b);
l2 = @(x1, x2, A, b) L(2, x1, x2, A, b);
l3 = @(x1, x2, A, b) L(3, x1, x2, A, b);

x1 = linspace(-1, 1);
x2 = linspace(-1, 1);

[X1, X2] = meshgrid(x1, x2);

for i = 1:nplanes
    subplot(1, nplanes, i)
    A = planes{1}{1};
    b = planes{1}{2};
    surf(X1, X2, l1(X1, X2, A, b), 'facecolor', 'b'), hold on
    surf(X1, X2, l2(X1, X2, A, b), 'facecolor', 'g')
    surf(X1, X2, l3(X1, X2, A, b))
    R = rref([A b]);
    x = R(:, 4);
    plot3(x(1), x(2), x(3), 'ro', 'markersize', 5, 'linewidth', 4)
    
end

xlabel('x_1'), ylabel('x_2'), zlabel('x_3')
axis vis3d, grid on, box on, rotate3d on
axis equal