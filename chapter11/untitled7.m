clear
clc

%% Задача 1
fprintf('\n========== Задача 1 ==========\n\n')
syms x

S1 = x^2*(x - 6) + 4*(3*x - 2);
S2 = (x + 2)^2 - 8*x;

a1 = expand(S1*S2);
b1 = simplify(S1/S2);
c1 = expand(S1 + S2);
d1 = subs(c1, x, 5);

disp('(a) S1*S2:'),  disp(a1)
disp('(b) S1/S2:'),  disp(b1)
disp('(c) S1+S2:'),  disp(c1)
disp('(d) (c) при x=5:'), disp(d1)

%% Задача 2
fprintf('\n========== Задача 2 ==========\n\n')
syms x

S1 = x*(x^2 + 6*x + 12) + 8;
S2 = (x - 3)^2 + 10*x - 5;

a2 = expand(S1*S2);
b2 = simplify(S1/S2);
c2 = expand(S1 + S2);
d2 = subs(c2, x, 3);

disp('(a) S1*S2:'),  disp(a2)
disp('(b) S1/S2:'),  disp(b2)
disp('(c) S1+S2:'),  disp(c2)
disp('(d) (c) при x=3:'), disp(d2)

%% Задача 3
fprintf('\n========== Задача 3 ==========\n\n')
syms x y

S = x + sqrt(x)*y^2 + y^4;
T = sqrt(x) - y^2;

ST = simplify(expand(S*T));
ST_at_y2 = subs(ST, y, 2);

disp('S*T упрощено:'), disp(ST)
disp('S*T при y=2:'),  disp(ST_at_y2)

%% Задача 4
fprintf('\n========== Задача 4 ==========\n\n')
syms x

% (a) многочлен по корням
P = (x + 2)*(x + 0.5)*(x - 2)*(x - 4.5);
P_expanded = expand(P);
disp('(a) Многочлен по корням -2, -0.5, 2, 4.5:')
disp(P_expanded)

% (b) корни многочлена
f = x^6 - 6.5*x^5 - 58*x^4 + 167.5*x^3 + 728*x^2 - 890*x - 1400;
disp('(b) Факторизация:')
disp(factor(f))
disp('(b) Корни:')
disp(double(solve(f == 0, x)))

clear
clc

syms x

%% (a) Интеграл от x^3 / sqrt(1 - x^2)
fprintf('\n========== Задача 16 ==========\n\n')
f_a = x^3 / sqrt(1 - x^2);
I_a = int(f_a, x);

disp('=== (a) Подынтегральная функция: ===')
disp(f_a)
disp('=== (a) Результат интегрирования: ===')
pretty(I_a)

% Проверка
disp('=== (a) Проверка (производная должна равняться исходной функции): ===')
check_a = simplify(diff(I_a, x));
disp(check_a)

%% (b) Интеграл от x^2 * cos(x)
f_b = x^2 * cos(x);
I_b = int(f_b, x);

disp('=== (b) Подынтегральная функция: ===')
disp(f_b)
disp('=== (b) Результат интегрирования: ===')
pretty(I_b)

% Проверка
disp('=== (b) Проверка (производная должна равняться исходной функции): ===')
check_b = simplify(diff(I_b, x));
disp(check_b)