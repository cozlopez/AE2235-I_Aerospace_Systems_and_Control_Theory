% Define the state-space matrices
A = [-0.2 0.06 0 -1;
     0 0 1 0;
    -17 0 -3.8 1;
     9.4 0 -0.4 -0.6];
B = [-0.01 0.06;
      0 0;
    -32 5.4;
      2.6 -7];

% Output matrix to get all states
C = eye(4);  % Identity matrix for all states as outputs
D = zeros(4, 2);  % Corresponding to 2 inputs (elevator and rudder)

% Define the state-space system
sys0 = ss(A, B, C, D);

% Define the feedback matrix for yaw rate (r) to rudder input
Kr = -0.7;
K = [0 0 0 0;
     0 0 0 Kr];  % Feedback matrix

% Apply the feedback to create the closed-loop system
sysc = feedback(sys0, K);  % Feedback from output to input

% Calculate a step response for the closed-loop system
[y_cl, t_cl] = step(sysc, 20);

% Plot the closed-loop response
figure;
subplot(4,1,1);
plot(t_cl, y_cl(:,1));
title('Closed-Loop Step Response');
xlabel('Time (s)');
ylabel('beta');

subplot(4,1,2);
plot(t_cl, y_cl(:,2));
xlabel('Time (s)');
ylabel('phi');

subplot(4,1,3);
plot(t_cl, y_cl(:,3));
xlabel('Time (s)');
ylabel('p');

subplot(4,1,4);
plot(t_cl, y_cl(:,4));
xlabel('Time (s)');
ylabel('r');

% Calculate a step response for the initial system (for comparison)
[y, t] = step(sys0, 20);

% Plot the response of the initial system
figure;
plot(t, y);
title('Step Response for Initial System');
xlabel('Time (s)');
ylabel('Yaw Rate r');

% Find the minimum value in the first second of the initial system
min_val = min(y(t < 1));
disp(['Minimum value in the first second: ', num2str(min_val)]);
