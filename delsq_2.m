%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
% Date: 2018/02/16 03:45:01 
% ======================================================================= %
function g_min=delsq_2(x) % Algoritm for minimizing the function
R = 'L';          % Solve function for L-shape
n = 100;          % Number of grid
G = numgrid(R,n); % Griding the L-shape
D = delsq(G);     % Coefficient matrix
N = sum(G(:)>0);  % Number of node
rhs = zeros(N,1);
h=2/(n-1);        % Distance beetwin 2 node
S=xy_to_n(x,G,h); % By giving x&y the number of node for source term is achived
rhs(S,1)=1;
u = D\rhs;
T_max = max(u);   % The maximum of u is T_max
g_min =1/T_max;   % When T_max is go up g_min coming down 