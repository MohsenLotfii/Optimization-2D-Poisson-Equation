%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
% Date: 2018/02/18 15:50:01 
% ======================================================================= %
function M = xy(x)
R = 'L';
n=100;
h=2/(n-1);
G = numgrid(R,n);
I=round((1-x(2))/h+1);
J=round((1+x(1))/h+1);
%------------------%
if I>=n
    I=n-1;
elseif I<=1
    I=2;
end
if J>=n
    J=n-1;
elseif J<=1
    J=2;
end
%------------------%
if x(1)<=0 && x(2)<=0
    I=n/2;
    J=n/2+1;
elseif x(1)<=0
    J=n/2+1;
elseif x(2)<=0
    I=n/2;
end 
%------------------%
M=G(I,J)
D = delsq(G);
N = sum(G(:)>0);
rhs = zeros(N,1);
h=2/(n-1);
rhs(M,1)=1;
u = D\rhs;
T_max = max(u)
