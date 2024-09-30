% Constants
T_0 = 0;
Y_0 = 0.5;

T_FINAL = 5;
DT = 0.5;
DT_EXACT = 0.01;

% Functions
function result = f(t, y)
    result = y - (t .^ 2) + 1 ;
end

function y_next = euler_step(t_i, y_i, dt, f)
    y_next = y_i + dt * f(t_i, y_i);
end

function y_next = rk4_step(t_i, y_i, dt, f)
    k1 = f(t_i, y_i);
    k2 = f(t_i + dt / 2, y_i + k1 * dt / 2);
    k3 = f(t_i + dt / 2, y_i + k2 * dt / 2);
    k4 = f(t_i + dt, y_i + k3 * dt);
    y_next = y_i + dt / 6 * (k1 + 2 * k2 + 2 * k3 + k4);
end

function result = y_exact(t_0, y_0, t)
    result = (t .^ 2) + (2 * t) + 1 - ((1/2)*exp(t));
end

% Computing exact result
t = T_0;

ys_exact = [];
ts_exact = [];

while t < T_FINAL
    ts_exact(end + 1) = t;
    ys_exact(end + 1) = y_exact(T_0, Y_0, t);
    t += DT_EXACT;
end

% Computing approximate results
ts = T_0;
ys = Y_0;
ys_euler = Y_0;

y = Y_0;
y_euler = Y_0;
t = T_0;

while t < T_FINAL
    % Solving with Runge-Kutta
    y = rk4_step(t, y, DT, @f);

    % Solving with Euler
    y_euler = euler_step(t, y_euler, DT, @f);

    % Increasing t
    t += DT;

    % Appending results
    ts(end + 1) = t;
    ys(end + 1) = y;
    ys_euler(end + 1) = y_euler;
end

% Plotting
figure;
hold on;
plot(ts, ys, 'ro-', 'DisplayName', 'RK4');
plot(ts, ys_euler, 'go-', 'DisplayName', 'Euler');
plot(ts_exact, ys_exact, 'b-', 'DisplayName', 'Exact');
legend('show');
hold off;

