clear

x = 0:0.01:10; % Define x
model = ((1 + (1.5 * x)) .* exp(-1.5 * x)) - (5 * (x .^ 2)) .* exp(-1.5 * x); % Use element-wise multiplication

% Create a figure
figure;

% Plot the model
plot(x, model, 'b-', 'LineWidth', 1.5);
hold on;

% Optional: Adjust y-axis limits based on model values
ylim([-2 2]); % Adjust limits if needed

% Labels and title
xlabel("Time");
ylabel("Model");
title("Solution to the Differential Equation");
legend('Model', 'Location', 'Best');
grid on;

% Release the hold
hold off;

