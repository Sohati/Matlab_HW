clear
clc
close all

%% Задача 1
y1 = quadrFunc(-1.5);
y2 = quadrFunc(5);
fprintf('y(-1.5) = %.4f, y(5) = %.4f\n', y1, y2)

x = linspace(-2, 6, 300);
figure(1)
plot(x, quadrFunc(x))
xlabel('x'), ylabel('y'), grid on
title('Задача 1')

%% Задача 2
fprintf('r(pi/6) = %.4f, r(5pi/6) = %.4f\n', rFunc(pi/6), rFunc(5*pi/6))

theta = linspace(0, 2*pi, 500);
figure(2)
polarplot(theta, rFunc(theta))
title('Задача 2')

%% Задача 3
fprintf('Boeing 747: %.4f Л/км\n', LkmToGalm(5))
fprintf('Concorde:   %.4f Л/км\n', LkmToGalm(5.8))

%% Задача 4
fprintf('Сталь: %.6f фунт/дюйм^3\n', DenToSw(7860))
fprintf('Титан: %.6f фунт/дюйм^3\n', DenToSw(4730))

%% Задача 5
fprintf('400 узлов = %.2f фут/сек\n', ktsTOfps(400))

%% === Локальные функции (в конце файла) ===
function y = quadrFunc(x)
    y = (-0.2*x.^3 + 7*x.^2) .* exp(-0.17*x);
end

function r = rFunc(theta)
    r = 4*cos(4*sin(theta));
end

function Lkm = LkmToGalm(gmi)
    Lkm = gmi * 3.785412 / 1.609344;
end

function sw = DenToSw(den)
    sw = den * 2.20462 / 39.3701^3;
end

function fps = ktsTOfps(kts)
    fps = kts * 6076.12 / 3600;
end