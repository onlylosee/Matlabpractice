fmin=[3; -1];
fmax=[-3; 1];
A=[0 -1; -2 6; -3 -8];
b=[-5; -13; -52];
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