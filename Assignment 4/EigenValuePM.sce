//Given Matrix
//A=[1, 6, 1; 1, 2, 0; 0, 0, 3]

rows = 3;
cols = 3;
A = zeros(rows,cols);
disp("Inputs to all matrices to be sequential left to right, top to bottom");
disp("Inputs to A begin");
for i = 1:rows
    for j = 1:cols
        A(i,j) = input("value for A:")
    end
end

disp(A, 'The given matrix is')
// initial vector 
u0=[1, 1, 1]';
disp(u0, 'The initial vector is')
v=A*u0;
a=max(u0);
disp(a, 'First approximation to eigen value is');
while abs(max(v)-a)>0.002
	disp(v, 'Current Eigen vector is');
	a=max(v);
	disp(a, 'Current Eigen value is');
	u0=v/max(v);
	v=A*u0;
end
format('v', 4);
disp(max(v), 'The largest Eigen value is:');
format('v', 5)
disp(u0, 'The corresponding Eigen Vector is:');
