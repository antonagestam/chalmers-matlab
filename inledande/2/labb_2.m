%%
% Uppgift 1. Skriv in matriserna A, b och c i Matlab. Skriv sedan ut
% matriselementen a23, b2, c3. Ändra a23 genom att skriva A(2,3)=15.
% Gör ett script och använd cell-läge så att ni kan bygga på med kommande
% uppgifter
%

A = [1 4 7 10; 2 5 8 11; 3 6 9 12];
b = [1; 3; 5];
c = [0 2 4 6 8];
A(2,3), b(2), c(3)
A(2,3) = 15

%%
% Uppgift 2
%

A = [1 5 9; 2 0 5; 3 7 11];
b = [29; 26; 39];
R = rref([A b])

% Ger x1 = 3, x2 = -2, x3 = 4

A = [1 1 3 4; -2 2 2 0; 1 1 2 3; 1 -1 -2 -1];
b = [2; -4; 1; 1];
r = rref([A b])

% Ger
% x = [x1; x2; x3; x4] = [1 - t; -2; 1 - t; t]

%%
% Uppgift 3
%

A = [11 4 3 7; 2 6 8 5; 9 12 1 10];
b = [3; 1; 5];
c = [4 2 8 0 6];

size(b), size(c) % Ser att kolonnvektorer har 1 kolonn, radvektorer har 1 rad ...

[M,I] = max(A(:));
M % maxvärde på A: 12
% rad och kolonn för största värde i A: 3, 2
[I_row, I_col] = ind2sub(size(A),I) 

%%
% Uppgift 4
%

sum((1:5).^2)