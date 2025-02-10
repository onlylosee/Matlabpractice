a = 2;
b = 1.7;
c = 1.9;
d = 0.6;
f = 3;

% ������� 2.�: ������� � ��������� ����
x = linspace(0, 2*pi, 1000);
f_x = a * x .* sin(b * x);
g_x = c * exp(-d * x) .* cos(f * x);

figure;
plot(x, f_x, 'b-', 'LineWidth', 2);
title('������ ������� f(x) = a * x * sin(bx)');
xlabel('x');
ylabel('f(x)');
grid on;

figure;
plot(x, g_x, 'r--', 'LineWidth', 2);
title('������ ������� g(x) = c * e^{-dx} * cos(fx)');
xlabel('x');
ylabel('g(x)');
grid on;

% ������� 2.�: ������� � ���� ���� �� ���� ���
figure;
plot(x, f_x, 'b-', 'LineWidth', 2);
hold on;
plot(x, g_x, 'r--', 'LineWidth', 2);
title('������� ������� f(x) � g(x) �� ����� ����');
xlabel('x');
ylabel('�������� �������');
legend('f(x) = a * x * sin(bx)', 'g(x) = c * e^{-dx} * cos(fx)');
grid on;
hold off;

% ������� 2.�: ������� � ���� ���� �� ��������� ���
figure;
subplot(2, 1, 1);
plot(x, f_x, 'b-', 'LineWidth', 2);
title('������ ������� f(x) = a * x * sin(bx)');
xlabel('x');
ylabel('f(x)');
grid on;

subplot(2, 1, 2);
plot(x, g_x, 'r--', 'LineWidth', 2);
title('������ ������� g(x) = c * e^{-dx} * cos(fx)');
xlabel('x');
ylabel('g(x)');
grid on;