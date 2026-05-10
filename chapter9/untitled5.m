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
title('Задача 2: 2c