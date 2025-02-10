fmin=[3; -1];
fmax=[-3; 1];
A=[-1 -2; -2 1; 1 -2; -1 1];
b=[-2; 0; 0; 1];
Aeq=[];
beq=[];
lb=[0; 0];
ub=[];

disp('Решение задачи на максимум')
[x_max, y_max]=linprog(fmax, A, b, Aeq, beq, lb, ub);
disp('Точка максимума')
x_max
disp('Значение максимума')
y_max=-y_max

disp('Решение задачи на минимум')
[x_min, y_min]=linprog(fmin, A, b, Aeq, beq, lb, ub);
disp('Точка минимума')
x_min
disp('Значение минимума')
y_min