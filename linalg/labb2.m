%% Uppgift 1
clc

A = [1 4 7 10; 2 5 8 11; 3 6 9 12];
B = [4 5 6; 3 2 1; 1 1 1];
c = [1; 3; 5];
d = [0 2 4];

A(:, 3) = c;
disp('A:')
disp(A)

B(2, :) = d;
disp('B:')
disp(B)

a1 = A(:, 1);
A(:, 1) = A(:, 3);
A(:, 3) = a1;
disp('A:')
disp(A)


%% Uppgift 2
clc

b1 = [4; 3; 1];
b2 = [5; 2; 1];
b3 = [6; 1; 1];
B = [b1 b2 b3];
disp(B)


%% Uppgift 3
clc

A11 = [10 7; 7 5];
A12 = [8 7; 6 5];
A21 = [8 6; 7 5];
A22 = [10 9; 9 10];
A = [A11 A12; A21 A22];
disp(A)


%% Uppgift 4
clc

A = [1 5 9; 2 6 10; 3 7 11; 4 8 12];
B = [4 5 6; 3 2 1; 1 1 1];
x = [1; 1; 1];
a = [-1 0 1];

disp('Ax:')
disp(A * x)

disp('Bx:')
disp(B * x)

disp('AB:')
disp(A * B)

disp('ax:')
disp(a * x)

disp('xa:')
disp(x * a)

disp('aB:')
disp(a * B)

disp('Ax (egen implementation):');
disp(mul(A, x))
assert(isequal(A*x, mul(A, x)));


%% Uppgift 5
clc

A = [1 0 0; 0 1 0; 1 0 1];
B = [1 0 0; -2 1 0; 0 0 1];
C = [2 1 1; 4 1 0; -2 2 1];

disp('A(BC) = (AB)C?')
disp(isequal(A * (B * C), (A * B) * C))

disp('A(B + C) = AB + AC?')
disp(isequal(A * (B + C), A * B + A * C))

disp('(B + C)A = BA + CA?')
disp(isequal((B + C) * A, B * A + C * A))

disp('AB = BA?')
disp(isequal(A * B, B * A))


%% Uppgift 6
clc

n = 3;
o = ones(3, 1);

A1 = full(spdiags([-o 4 * o -o], [-1 0 1], n, n));
A2 = full(spdiags(-o, 0, n, n));
A3 = zeros(n, n);

A = [A1 A2 A3; A2 A1 A2; A3 A2 A1];
b = [20 + 80; 20; 20 + 100; 80; 0; 100; 40 + 80; 40; 40 + 100];

x = A\b;
disp(x)
