fmin=[3; -1];
fmax=[-3; 1];
A=[-1 -2; -2 1; 1 -2; -1 1];
b=[-2; 0; 0; 1];
Aeq=[];
beq=[];
lb=[0; 0];
ub=[];

disp('������� ������ �� ��������')
[x_max, y_max]=linprog(fmax, A, b, Aeq, beq, lb, ub);
disp('����� ���������')
x_max
disp('�������� ���������')
y_max=-y_max

disp('������� ������ �� �������')
[x_min, y_min]=linprog(fmin, A, b, Aeq, beq, lb, ub);
disp('����� ��������')
x_min
disp('�������� ��������')
y_min