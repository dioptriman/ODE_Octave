clear

t = 0:0.01:50000;
model = (15 - 0.000332 * t) .^ 2;

% Create a figure
figure;

% Plot the model
plot(t, model, 'b-', 'LineWidth', 1.5);
hold on;

% Plot the line when it's empty
empty_time = 45181;
y_limits = ylim; % Get current y-axis limits
plot([empty_time empty_time], y_limits, 'r--', 'LineWidth', 1.5); % Vertical dashed red line

% Labels and title
xlabel("Time");
ylabel("Height");
title("Time vs Height with Empty Point")
legend('Model', 'Empty Point', 'Location', 'Best');
grid on;

% Release the hold
hold off;

