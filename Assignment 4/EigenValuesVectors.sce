//rows = 3;
//cols = 3;
//A = zeros(rows,cols);
//disp("Inputs to all matrices to be sequential left to right, top to bottom");
//disp("Inputs to A begin");
//for i = 1:rows
    //for j = 1:cols
        //A(i,j) = input("value for A:")
    //end
//end

A=[3 -2 5; -2 3 6; 5 6 4];
lam = poly(0, 'lam')
lam = lam
charMat = A-lam*eye(3,3)
disp(charMat, 'The characteristic Matrix is')
charPoly=poly(A, 'lam')
disp(charPoly, 'The characteristic polynomial is')
lam = spec(A)
disp(lam, 'The eigen values of A are')
function [x, lam] = eigenvectors(A);
	[n, m] = size(A);
	lam = spec(A);
	x = [];
	for k=1:3
	    B=A-lam(k)*eye(3,3);
	    C=B(1:n-1, 1:n-1);
	    b = -B(1:-n, n);
	    y=C/b;
	    y=[y:1];
	    y = y/norm(y);
	    x=[x, y];
	end
endfunction

get f('eigenvectors')
[x, lam] = eigenvectors(A)
disp(x,'The eigen vectors of A are');
