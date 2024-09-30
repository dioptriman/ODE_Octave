clear

t = 0:0.01:1000;
model = 5000 - 4900 * exp(-0.01 * t);

% Create a figure
figure;

% Plot the model
plot(t, model, 'b-', 'LineWidth', 1.5);
hold on;

% Plot the asymptote
asym = 5000 * ones(size(t)); % Create a constant array for the asymptote
plot(t, asym, 'r--', 'LineWidth', 1); % Dashed red line for the asymptote

% Set new y-axis limits to make the asymptote clearer
ylim([0 5500]); % Adjust the limits to ensure the asymptote is visible

% Labels and title
xlabel("Time");
ylabel("Amount of salt");
title("Amount of Salt Model with Asymptote");
legend('Model', 'Asymptote', 'Location', 'Best');
grid on;

% Release the hold
hold off;

