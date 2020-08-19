seed=[0 1];
A = randi(seed, 100, 10)*randi(seed, 10, 100);
rank(A);
[U,S,V] = svd(A);
disp("The vectors after svd are");
U
S
V
disp("Rank 8 approximation of matirx A is");
A8 = U(:,1:8)*S(1:8,1:8)*V(:,1:8)';
A8

