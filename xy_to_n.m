%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
% Date: 2018/02/16 03:45:01 
% ======================================================================= %
function S=xy_to_n(x,G,h) % By giving x&y the number of node for source term is achived
I=round((1-x(2))/h+1); 
J=round((1+x(1))/h+1);
n=100;  % Number of node
%========================%
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
%========================%
if x(1)<=0 && x(2)<=0
    I=n/2;
    J=n/2+1;
elseif x(1)<=0
    J=n/2+1;
elseif x(2)<=0
    I=n/2;
end 
%========================%
S=G(I,J);  % Source's Place 
