clear; % Clear workspace

% Define x
x = 0:0.01:20;

% Calculate the model using element-wise operations
model = (3.1 .* exp(-x / 2)) + sin(x) + 0.12 * x - 0.32

% Close any existing figures
close all;

% Create a figure
figure;

% Plot the model
plot(x, model, 'b-', 'LineWidth', 1.5);
hold on;

% Optional: Adjust y-axis limits based on model values
ylim([-2 5]); % Adjust limits if needed

% Labels and title
xlabel("Time");
ylabel("Model");
title("Solution to the Differential Equation");
legend('Model', 'Location', 'Best');
grid on;

% Release the hold
hold off;

% Display the figure
drawnow; % Force rendering of the figure

