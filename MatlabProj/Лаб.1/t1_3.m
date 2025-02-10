a = 2;
b = 1.7;
c = 1.9;

x = linspace(0, 2, 100);
y = linspace(-1, 1, 100);
[X, Y] = meshgrid(x, y);

Z = exp(-c * Y) .* (sin(a * X.^2) + cos(b * Y.^2));

% Задание 3: Визуализация графиков
figure;

% Способ 1: Поверхность (surf)
subplot(1, 2, 1);
surf(X, Y, Z);
title('surf');
xlabel('x');
ylabel('y');
zlabel('z');
colormap jet;
shading interp;

% Способ 2: Контурный график (contour)
subplot(1, 2, 2);
contour(X, Y, Z, 20);
title('contour');
xlabel('x');
ylabel('y');
colorbar;