A = [
    1 2
    3 4
    5 6
];
size(A);    % rows and columns of the matrix(row vector [3 2])
size(A, 1); % number of rows
size(A, 2); % number of columns

v = [1 2 3 4];
length(v); % size of the longest dimension(it's 4)
length(A); % 3(because A is 3x2 matrix)

% pwd; % get current directory path
% cd;  % change directory
% ls;  % list files

load featuresX.dat;             % load dataset in matrix(it'll be saved in featuresX variable)
% load('featuresX.dat');        % works the same as load featuresX.dat;
priceY = load('featuresY.dat'); % featuresY variable won't be created

% who;  % show all variables in the current scope(it also returns row vector with variables)
% whos; % who with more details

clear v; % remove v variable
% clear; remove all variables

% elements indexing starts from 1
% priceY is a column vector(10x1 matrix)
priceY(3);      % get element at row 3
priceY([1, 4]); % get elements at rows 1 and 4
priceY(2:6);    % get elements at rows from 1 to 6(2:6 is [2 3 4 5 6])
% implicitly column 1 is used everywhere in the priceY examples

% featuresX is a 10x2 matrix
featuresX(3, 2);     % get element at row 3, column 2
featuresX([1 4], 2); % get elements at rows 1 and 4, column 2
featuresX([1 4]);    % get elements at rows 1 and 4, column 1
featuresX(2:5, 1:2); % get elements at rows from 2 to 5, columns from 1 to 2(4x2 matrix)
featuresX(2, :);     % get all elements from the second row(row vector)
featuresX(:, 2);     % get all elements from the second column(column vector)
% general rule for getting submatrices: (rows, columns)

f = featuresX(1:5, 1:2);
save some_features.mat f; % save matrix f to some_features.mat file(take a look at this file)
load some_features.mat;   % load some_features.mat to f variable(f is the name of the matrix which is saved in that file)

save some_features_bin.mat f -binary; % save file as binary
save some_features_text.mat f -ascii; % save file as text(not the same as without -ascii)

B = [
    10 11;
    12 13;
    14 15;
];
A(:, 2) = [10; 11; 12];  % assign this column vector to the second column of matrix A
[A [100; 101; 102]];     % append this column vector to the right of matrix A
[A B];                   % append matrix B to matrix A from the right
[A; B];                  % append matirx B to matrix A from the bottom
A(:);                    % put all elements of A into single column vector
