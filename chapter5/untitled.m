clear
clc
close all

%% Задача 1: f(x) = (x^2 - 3x + 7) / sqrt(2x + 5), -1 <= x <= 5
x1 = linspace(-1, 5, 200);
y1 = (x1.^2 - 3*x1 + 7) ./ sqrt(2*x1 + 5);

figure(1)
plot(x1, y1)
xlabel('x')
ylabel('f(x)')
title('Задача 1: f(x) = (x^2 - 3x + 7) / sqrt(2x + 5)')
grid on

%% Задача 2: f(x) = (3cos x - sin x) * exp(-0.2x), -4 <= x <= 9
x2 = linspace(-4, 9, 300);
y2 = (3*cos(x2) - sin(x2)) .* exp(-0.2*x2);

figure(2)
plot(x2, y2, 'b-')
xlabel('x')
ylabel('f(x)')
title('Задача 2: f(x) = (3cos x - sin x) e^{-0.2x}')
grid on

%% Задача 3: f(x) = x^2 / (2 + sin x + x^4), -4 <= x <= 4
x3 = linspace(-4, 4, 300);
y3 = x3.^2 ./ (2 + sin(x3) + x3.^4);

figure(3)
plot(x3, y3)
xlabel('x')
ylabel('f(x)')
title('Задача 3: f(x) = x^2 / (2 + sin x + x^4)')
grid on

%% Задача 4: f(x) = x^3 - 2x^2 - 10sin^2(x) - exp(0.9x) и её производная, -2 <= x <= 4
x4 = linspace(-2, 4, 300);
f4 = x4.^3 - 2*x4.^2 - 10*sin(x4).^2 - exp(0.9*x4);
df4 = 3*x4.^2 - 4*x4 - 10*sin(2*x4) - 0.9*exp(0.9*x4);

figure(4)
plot(x4, f4, 'b-', x4, df4, 'r--')
xlabel('x')
ylabel("f(x), f'(x)")
title('Задача 4: функция и её производная')
legend('f(x)', "f'(x)")
grid on

%% Задача 5: f(x) = -3x^4 + 10x^2 - 3, два графика на разных диапазонах
x5a = linspace(-4, 3, 200);
y5a = -3*x5a.^4 + 10*x5a.^2 - 3;

x5b = linspace(-4, 4, 200);
y5b = -3*x5b.^4 + 10*x5b.^2 - 3;

figure(5)
plot(x5a, y5a)
xlabel('x')
ylabel('f(x)')
title('Задача 5a: f(x) = -3x^4 + 10x^2 - 3 для -4 <= x <= 3')
grid on

figure(6)
plot(x5b, y5b)
xlabel('x')
ylabel('f(x)')
title('Задача 5b: f(x) = -3x^4 + 10x^2 - 3 для -4 <= x <= 4')
grid on