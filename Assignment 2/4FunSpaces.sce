//A=[0 1 0; 0 0 1; 0 0 0]'

//User input
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

disp(A, 'A=')
[m,n] = size(A);
disp(m, 'm=');
disp(n, 'n=');
[v, pivot] = rref(A);
disp(rref(A));
disp(v);
r = length(pivot);
disp(r, 'rank');
cs = A(:, pivot);
disp(cs, 'Column Space=');
ns = kernel(A);
disp(ns, 'Null Space');
rs = v(1:r, :)';
disp(rs, 'Row space=')
lns=kernel(A');
disp(lns, 'Left Null Space=');
