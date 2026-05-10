clear
clc
close all

%% Задача 1: траектория точки
fprintf('\n========== Задача 1 ==========\n\n')
t = linspace(0, 30, 500);
amp = (t - 15)/100 + 1;
x = amp .* sin(3*t);
y = amp .* cos(0.8*t);
z = 0.4 * t.^(3/2);

figure(1)
plot3(x, y, z), grid on
xlabel('x'), ylabel('y'), zlabel('z')
title('Задача 1: траектория точки')
view(45, 30)

%% Задача 2: эллиптическая лестница
fprintf('\n========== Задача 2 ==========\n\n')
a = 20; b = 10; h = 18; n = 3;
t = linspace(0, 2*pi*n, 1000);
r = (a*b) ./ sqrt((b*cos(t)).^2 + (a*sin(t)).^2);
x = r .* cos(t);
y = r .* sin(t);
z = h*t / (pi*n);

figure(2)
plot3(x, y, z), grid on, axis equal
xlabel('x (m)'), ylabel('y (m)'), zlabel('z (m)')
title('Задача 2: эллиптическая лестница')
view(45, 30)

%% Задача 3: лестница пожарной машины
fprintf('\n========== Задача 3 ==========\n\n')
t = linspace(0, 10, 200);
phi = 5*t;
theta = 8*t;
r = 8 + 0.6*t;

x = r .* cosd(phi) .* cosd(theta);
y = r .* cosd(phi) .* sind(theta);
z = r .* sind(phi);

figure(3)
plot3(x, y, z, 'b-', 'LineWidth', 1.5)
hold on
plot3(x(end), y(end), z(end), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r')
grid on, axis equal
xlabel('x (m)'), ylabel('y (m)'), zlabel('z (m)')
title('Задача 3: лестница пожарной машины')
view(45, 30)

fprintf('Координаты конечной точки лестницы (t = 10 c):\n')
fprintf('  x = %.4f m\n', x(end))
fprintf('  y = %.4f m\n', y(end))
fprintf('  z = %.4f m\n', z(end))

%% Задача 4: поверхность z = y^2/4 - 2sin(1.5x)
fprintf('\n========== Задача 4 ==========\n\n')
x = linspace(-3, 3, 50);
y = linspace(-3, 3, 50);
[X, Y] = meshgrid(x, y);
Z = Y.^2 / 4 - 2*sin(1.5*X);

figure(4)
surf(X, Y, Z)
xlabel('x'), ylabel('y'), zlabel('z')
title('Задача 4: z = y^2/4 - 2sin(1.5x)')
shading interp, colorbar
view(45, 30)

%% Задача 5: параболоид z = 0.5x^2 + 0.5y^2
fprintf('\n========== Задача 5 ==========\n\n')
x = linspace(-2, 2, 40);
y = linspace(-2, 2, 40);
[X, Y] = meshgrid(x, y);
Z = 0.5*X.^2 + 0.5*Y.^2;

figure(5)
surf(X, Y, Z)
xlabel('x'), ylabel('y'), zlabel('z')
title('Задача 5: z = 0.5x^2 + 0.5y^2')
shading interp, colorbar
view(45, 30)