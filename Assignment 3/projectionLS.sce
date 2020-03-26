clear;
//
//A=[1, 0; 0, 1; 1, 1]

//User input
rows = 3;
cols = 2;
A = zeros(rows,cols);
disp("Inputs to all matrices to be sequential left to right, top to bottom");
disp("Inputs to A begin");
for i = 1:rows
    for j = 1:cols
        A(i,j) = input("value for A:")
    end
end


//b=[1; 1; 0]

//User input
b = zeros(rows,1);
disp("Inputs for B begin");
for i = 1:rows
    b(i) = input("Value for B:")
end

disp(A, 'A=');
disp(b, 'b=')
x=(A'*A)\(A'*b);
disp(x, 'x=');
C=x(1,1);
D=x(2,1);
disp(C, 'C=');
disp(D, 'D=');
disp('The line of best fit is b=C+Dt');

