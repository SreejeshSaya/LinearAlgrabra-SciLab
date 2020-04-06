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

//A=[1 0 1; 1 0 0; 2 1 0];

disp(A, 'A=');
[m, n] = size(A);
for k=1:n
    V(:, k)=A(:, k);
    for j=1:k-1
        R(j,k)=V(:, j)'*A(:, k);
        V(:, k)=V(:, k)-R(j,k)*V(:, j);
    end
    R(k,k)=norm(V(:, k));
    V(:, k)=V(:, k)/R(k,k);
end
disp(V, 'Q=');
