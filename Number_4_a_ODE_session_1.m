clear

x = 0:0.01:100; % Define x
model = (0.002 * cos(x)) + (1.5 * sin(x)) + (0.001 * x .^ 2) - 0.002;

% Create a figure
figure;

% Plot the model
plot(x, model, 'b-', 'LineWidth', 1.5); % Use x instead of t
hold on;

% Set new y-axis limits to make the plot clearer
ylim([-5 5]); % Adjust the limits as needed

% Labels and title
xlabel("Time");
ylabel("Model");
title("Solution to the Differential Equation");
legend('Model', 'Location', 'Best');
grid on;

% Release the hold
hold off;

