% ; - semicolon at the end of the line suppress output
% ans - variable which stores last expression return value

3 + 2;
3 - 2;
3 / 2;
3 * 2;
3 ^ 2;

3 == 2; % equal? (returns false)
3 ~= 2; % not equal? (returns true)
bool_value = true;

1 && 0;    % AND
1 || 0;    % OR
xor(1, 0); % XOR

PS1('>> '); % change prompt

str = 'hello world';
disp(str);                              % output variable str
disp(sprintf('2 decimals: %0.2f', pi)); % pi is a constant

disp(pi);
format long  % start outputing more digits after the decimal point
disp(pi);
format short % go back to the default number of digitis after the decimal point
disp(pi);

A = [1 2; 3 4; 5 6]; % 3x2 matrix
B = [                % 2x2 matrix
    1 2
    3 4
];
disp(A);
[1 2 3];   % 1x3 matrix(or just row vector)
[1; 2; 3]; % 3x1 matrix(or just column vector)

1:0.2:2; % row vector with elements starting from 1 to 2 with step 0.2
1:6;     % [1 2 3 4 5 6]

ones(2, 3);     % 2x3 matrix with all elements equal to 1
2 * ones(2, 3); % 2x3 matrix with all elments equal to 2
zeros(2, 3);    % 2x3 matrix with all elments equal to 0

rand(3, 3);  % random 3x3 matrix with numbers between 0 and 1(uniform distribution)
randn(3, 3); % random 3x3 matrix(normal distribution with mean 0 and standard deviation 1)

% random row vector(normal distribution with mean -6 and standard deviation sqrt(10))
w = -6 * sqrt(10)*randn(1, 10000);
% hist(w);     plot a histogram of values in vector w
% hist(w, 50); histogram with 50 buckets

I = eye(4); % 4x4 identity matrix

% help eye; get help on eye function
