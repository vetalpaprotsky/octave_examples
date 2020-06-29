% . - period usually denotes element-wise operations

A = [
    1 2
    3 4
    5 6
];
B = [
    11 12
    13 14
    15 16
];
C = [
    1 1
    2 2
];

A * C;  % matrix multiplication
A .* B; % element-wise matrix multiplication
A .^ 2; % square every element in the matrix

v = [
    1
    2
    3
];

1 ./ v; % column vector with element-wise reciprocals of v
2 ./ A; % matrix where every element is 2 divided by corresponding element in matrix A

log(v); % element-wise natural logarithm
exp(v); % element-wise base e exponentiation
abs(v); % element-wise absolute value
-v;     % element-wise negative operation

v + ones(length(v), 1); % increment all elements of v by 1
v + 1;                  % the same as above expression

A'; % matrix transpose

a = [1 15 2 0.5];
max(a); % max element(for a vector)
[val index] = max(a); % max element and its index(val and index are just variables)

a < 3;       % element-wise comparison(returns matrix with 0 and 1 indicating the result of comparison)
find(a < 3); % vector(row of column) of indexes of elements which satisfy the comparison(with matrices it works a bit different)

A = magic(3);         % generate magic square matrix
[r c] = find(A >= 7); % r and c are columns vectors containing indexes of elements which satisfy comparison

sum(a);   % sum of all elements(for matrix it's column-wise sum)
prod(a);  % product of all elements(for matrix it's column-wise product)
floor(a); % element-wise floor operation
ceil(a);  % element-wise ceil operation

max(rand(3), rand(3)); % element-wise maximum(returns 3x3 matrix)

A = [
    1 2 3
    4 5 6
    7 8 9
];
max(A);        % column-wise maximums(for a matrix)
max(A, [], 1); % column-wise maximums(1 is the dimension)
max(A, [], 2); % row-wise maximums(2 is the dimension)
max(max(A));   % max in all matrix
max(A(:));     % the same as above(first it turns the matrix into a vector and then finds max)

sum(A);                        % column-wise sums
sum(A, 1);                     % column-wise sums(1 is the dimension)
sum(A, 2);                     % row-wise sums(2 is the dimension)
sum(sum(A .* eye(3)));         % diagonal sum(from left to right)
sum(sum(A .* flipud(eye(3)))); % diagonal sum(from right to left)

A = magic(3);
A_inv = pinv(A); % invert matrix(pseudo)
A_inv * A;       % identity matrix
A * A_inv;       % identity matrix
