t = [0:0.01:0.98]; % [0.01 0.02 0.03 ...]
y1 = sin(2 * pi * 4 * t);
y2 = cos(2 * pi * 4 * t);
% plot(t, y1); plot sin function
% plot(t, y2); plot cos function

plot(t, y1);
hold on;          % allow to plot one more function on the same plane
plot(t, y2, 'r'); % plot cos function with red color

xlabel('time');  % change name of the x-axis
ylabel('value'); % change name of the y-axis

legend('sin', 'cos'); % show names of the functions on the graph
title('my plot');     % change plot title

print -dpng 'my_plot.png'; % save plot
close;                     % close figure window

figure(1);   % plot the next function on the "Figure 1" window
plot(t, y1); % plotted on the "Figure 1" window
figure(2);   % plot the next function on the "Figure 2" window
plot(t, y2); % plotted on the "Figure 2" window

subplot(1, 2, 1); % divide figure window on 1x2 grid and access the first section
plot(t, y1);      % this function is plotted on the first section of the grid
subplot(1, 2, 2); % now access the second grid section
plot(t, y2);      % this function is plotted on the second section of the grid

axis([0.5 1 -1 1]); % make x be in range [0.5, 1] and y be in range [-1, 1]

clf; % clear figure window

A = magic(5);
imagesc(A);    % plot matrix
colorbar;      % add colorbar to the plot
colormap gray; % make colors grey

a = 1; b = 2; c = 3; % multiple commands on the same line
a = 1, b = 2, c = 3  % same as above but also prints results(comma chaining)
