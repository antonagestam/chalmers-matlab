%%
% Uppgift 1
%

x = (-pi/2)+0.01:0.01:(pi/2)-0.01;
plot(x, tan(x)), grid on;

% +/- 0.01 pga tangens går mot oändligheten i +/- pi/2?

%%
% Uppgift 2
%

f=@(x)x .* cos(7 .* x);
x = linspace(0, 8);
plot(x, f(x)), grid on, title('f(x) = x cos(7x)')

%%
% Uppgift 3
%