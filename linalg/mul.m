function [ C ] = mul(A, B)
    % Matrismultiplikation
    [Am, An] = size(A);
    [Bm, Bn] = size(B);
    assert(An == Bm);
    C = zeros(Am, Bn);

    for i = 1:Am
        for j = 1:Bn
            C(i, j) = A(i, :) * B(:, j);
        end
    end
end

