clear
clc
C=[7 5 4 3;
   5 2 7 7;
   3 7 4 7;
   0 0 0 0];
a=[161;113;300;175];
b=[279; 110; 162; 198];
k=size(C);
m=k(1);
n=k(2);
for i=1:m
    for j=1:n
        f((i-1)*n+j)=C(i,j);
    end;
end;
Aeq=zeros(m+n,m*n);
for i=1:m
    Aeq(i, (i-1)*n+1:i*n)=1;
end;
for j=1:n
    for i=1:m
        Aeq(m+j, (i-1)*n+j)=1;
    end;
end;
Beq(1:m,1)=a;
Beq(m+1:m+n,1)=b;
A=[]; B=[];
lb=zeros(m*n,1); ub=[];
[x, Y]=linprog(f, A, B, Aeq, Beq, lb, ub);
for i=1:m
    for j=1:n
        X(i,j)=x((i-1)*n+j);
    end;
end;
X
disp('Оптимальный план перевозок')
Xopt=X(1:m-1, :)
disp('Минимальная стоимость перевозок')
Fmin=Y
disp('Проверка минимальной стоимости перевозок')
FF=sum(sum(C.*X))