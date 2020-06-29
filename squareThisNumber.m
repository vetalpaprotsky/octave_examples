% function definition
% each function has it's own file

% to call this function just open the folder where this file is using cd
% commad(in Octave interpreter) and run squareThisNumber(myVar)
function y = squareThisNumber(x)

y = x^2;

% Octave search path
% addpath('/full/path/to/my/folder') after adding this path, Octave will be
% searching for function definition in that folder as well and you won't
% need to go to a specific folder in order to run a function which is there
