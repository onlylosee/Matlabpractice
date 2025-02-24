f_min = [3; -1];
f_max = [-3; 1];
A = [0 1; 2 -6; 3 8];
b = [5; 13; 52];
lb = [0; 0];

[x_min, fval_min] = linprog(f_min, A, b, [], [], lb);
[x_max, fval_max] = linprog(f_max, A, b, [], [], lb);

disp('����� ��������:'); disp(x_min);
disp('�������� ��������:'); disp(fval_min);
disp('����� ���������:'); disp(x_max);
disp('�������� ���������:'); disp(-fval_max);