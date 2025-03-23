function [x, y] = method_eilera(x0, b, y0, n)
    h = (b - x0)/n;
    x = x0:h:b;
    y = zeros(1, n+1);
    y(1) = y0;
    for i = 1:n
        y(i+1) = y(i) + h * func(x(i), y(i));
    end
end