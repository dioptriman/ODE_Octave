clear

t = 0:0.01:100;
model = 25 * exp(-0.056 * t) + 45;

% Create a figure
figure;

% Plot the model
plot(t, model, 'b-', 'LineWidth', 1.5);
hold on;

% Plot the asymptote
asym = 45 * ones(size(t)); % Create a constant array for the asymptote
plot(t, asym, 'r--', 'LineWidth', 1.5); % Dashed red line for the asymptote

% Set new y-axis limits to make the asymptote clearer
ylim([0 80]); % Adjust the limits to ensure the asymptote is visible

% Labels and title
xlabel("Time");
ylabel("Temperature");
title("Temperature Model with Asymptote");
legend('Model', 'Asymptote', 'Location', 'Best');
grid on;

% Release the hold
hold off;

