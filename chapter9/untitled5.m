clear
clc
close all

%% Задача 1: e^(0.3x) - x^2 = -4
fprintf('\n========== Задача 1 ==========\n\n')
f1 = @(x) exp(0.3*x) - x.^2 + 4;

x = linspace(-5, 5, 300);
figure(1)
plot(x, f1(x)), grid on
yline(0, 'k--')
xlabel('x'), ylabel('f(x)')
title('Задача 1: e^{0.3x} - x^2 + 4')

x_root = fzero(f1, 2);
fprintf('Корень: x = %.4f\n', x_root)

%% Задача 2: 2cos(x) - 0.5x = 1
fprintf('\n========== Задача 2 ==========\n\n')
f2 = @(x) 2*cos(x) - 0.5*x - 1;

x = linspace(-5, 5, 300);
figure(2)
plot(x, f2(x)), grid on
yline(0, 'k--')
xlabel('x'), ylabel('f(x)')
title('Задача 2: 2cos(x) - 0.5x - 1')

x_root = fzero(f2, 1);
fprintf('Корень: x = %.4f\n', x_root)

%% Задача 3: x^3 - 5x^2.5 + e^(0.9x) + 4(x+1) = -2
fprintf('\n========== Задача 3 ==========\n\n')
f3 = @(x) x.^3 - 5*x.^2.5 + exp(0.9*x) + 4*(x+1) + 2;

x = linspace(0.01, 5, 300);
figure(3)
plot(x, f3(x)), grid on
yline(0, 'k--')
xlabel('x'), ylabel('f(x)')
title('Задача 3')

x_root1 = fzero(f3, 1);
x_root2 = fzero(f3, 3);
fprintf('Корни: x1 = %.4f, x2 = %.4f\n', x_root1, x_root2)

%% Задача 4: x^2 - 5x*sin(3x) + 3 = 0
fprintf('\n========== Задача 4 ==========\n\n')
f4 = @(x) x.^2 - 5*x.*sin(3*x) + 3;

x = linspace(0, 10, 500);
figure(4)
plot(x, f4(x)), grid on
yline(0, 'k--')
xlabel('x'), ylabel('f(x)')
title('Задача 4: x^2 - 5x sin(3x) + 3')

% Подбери приближения по графику!
r1 = fzero(f4, 1);
r2 = fzero(f4, 2);
r3 = fzero(f4, 4);
fprintf('Корни: %.4f, %.4f, %.4f\n', r1, r2, r3)

%% Задача 5: угол тяги веревки
fprintf('\n========== Задача 5 ==========\n\n')
m = 25; g = 9.81; mu = 0.55; F_target = 150;
f5 = @(theta) mu*m*g ./ (cos(theta) + mu*sin(theta)) - F_target;

theta_range = linspace(0.01, pi/2 - 0.01, 200);
figure(5)
plot(theta_range, f5(theta_range)), grid on
yline(0, 'k--')
xlabel('\theta (рад)'), ylabel('f(\theta)')
title('Задача 5')

theta_root = fzero(f5, 0.5);
fprintf('Угол: %.4f рад = %.2f°\n', theta_root, rad2deg(theta_root))