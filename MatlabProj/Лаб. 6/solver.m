function solver
    clc;
    t0 = 0;
    T = 3;
    y0 = 3;
    n = 100; % Шаг метода Эйлера

    % Точное решение
    t = linspace(t0, T, 1000);
    y_exact = 12 ./ (3 + exp(-3.2 * t));

    % Метод Эйлера
    [t_euler, y_euler] = method_eilera(t0, T, y0, n);

    % Встроенный метод ode45
    [t_ode45, y_ode45] = ode45(@func, [t0, T], y0);

    % Графики
    plot(t, y_exact, 'b', t_euler, y_euler, 'r*', t_ode45, y_ode45, 'g--');
    xlabel('Время');
    ylabel('Объем продукции');
    legend('Точное решение', 'Метод Эйлера', 'ode45');
    title('Сравнение решений');
end