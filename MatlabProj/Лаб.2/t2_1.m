f_min = [3; -1];
f_max = [-3; 1];
A = [0 1; 2 -6; 3 8];
b = [5; 13; 52];
lb = [0; 0];

[x_min, fval_min] = linprog(f_min, A, b, [], [], lb);
[x_max, fval_max] = linprog(f_max, A, b, [], [], lb);

disp('Точка минимума:'); disp(x_min);
disp('Значение минимума:'); disp(fval_min);
disp('Точка максимума:'); disp(x_max);
disp('Значение максимума:'); disp(-fval_max);