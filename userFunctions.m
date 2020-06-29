y = squareThisNumber(10);
disp(y);
[y1 y2] = squareAndCubeThisNumber(5);
disp(y1);
disp(y2);

X = [
    1 1
    1 2
    1 3
]; % the first column is x_0 and the second one is x_1

% | x_0 | x_1 |  y  |
% |  1  |  1  |  1  |
% |  1  |  2  |  2  |
% |  1  |  3  |  3  |

y = [
    1
    2
    3
];

theta = [
    0
    1
];

j = costFunctionJ(X, y, theta);
disp(j);
