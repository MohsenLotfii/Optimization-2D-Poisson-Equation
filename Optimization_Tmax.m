%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
% Date: 2018/02/16 04:30:00 
clear;clc;close all
% =========================== Optimization ============================== %
tic  % Start recording time
R = 'L';          % Solve function for L-shape
n = 100;          % Number of grid
G = numgrid(R,n); % Griding the L-shape
D = delsq(G);     % Coefficient matrix
N = sum(G(:)>0);  % Number of node
% ======================================================================= %
h=2/(n-1);        % Distance beetwin 2 node
x0=[-1+67*h,1-32*h];%[-1+68*(2/99),1-33*(2/99)];
A=[-1 -1];B=0;
lb=[-1+h -1+h];   %[-1+2/(100-2) -1+2/(100-1)]
ub=[1-h 1-h];     %[1-2/(100-2) 1-2/(100-1)]
options=optimoptions('fmincon','Algorithm','sqp','Display','iter','TolCon',1e-12);
[x,fval,exitflag,output,lambda,grad,hessian]=fmincon(@(x)...
    delsq_2(x),x0,A,B,[],[],lb,ub,[],options);  % function = @(x)delsq_2(x)
T_Max2=1/fval;
toc  % finish recording time