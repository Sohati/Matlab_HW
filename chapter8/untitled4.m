clear
clc
close all

%% Задача 1
fprintf('\n========== Задача 1 ==========\n\n')
p1_task = [0.1, -0.2, -1, 5, -41.5, 235];
x1 = linspace(-6, 6, 300);
y1 = polyval(p1_task, x1);

figure(1)
plot(x1, y1)
xlabel('x'), ylabel('y'), grid on
title('Задача 1: y = 0.1x^5 - 0.2x^4 - x^3 + 5x^2 - 41.5x + 235')

%% Задача 2
fprintf('\n========== Задача 2 ==========\n\n')
p2_task = [0.008, 0, -1.8, -5.4, 54];
x2 = linspace(-14, 16, 400);
y2 = polyval(p2_task, x2);

figure(2)
plot(x2, y2)
xlabel('x'), ylabel('y'), grid on
title('Задача 2: y = 0.008x^4 - 1.8x^2 - 5.4x + 54')

%% Задача 3
fprintf('\n========== Задача 3 ==========\n\n')
a = [-1, 0, 5, -1];
b = [1, 2, 0, -16, 5];
prod3 = conv(a, b);
disp('Произведение многочленов:')
disp(prod3)

%% Задача 4
fprintf('\n========== Задача 4 ==========\n\n')
prod4 = poly([0, 1.7, -0.5, 0.7, -1.5]);
disp('Коэффициенты произведения:')
disp(prod4)

x4 = linspace(-1.6, 1.8, 300);
y4 = polyval(prod4, x4);

figure(3)
plot(x4, y4)
xlabel('x'), ylabel('y'), grid on
title('Задача 4: y = x(x-1.7)(x+0.5)(x-0.7)(x+1.5)')

%% Задача 5
fprintf('\n========== Задача 5 ==========\n\n')
num = [-10, -20, 9, 10, 8, 11, -3];
denom = [2, 4, -1];
[q, r] = deconv(num, denom);
disp('Частное:')
disp(q)
disp('Остаток:')
disp(r)
disp('Проверка (conv(denom, q) + r должно совпасть с num):')
disp(conv(denom, q) + r)