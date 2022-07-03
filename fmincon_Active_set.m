%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
% Date: 2018/02/16 04:40:00 
clear;clc;close all
%% fmincon active set algoritm
tic
n = 100;
h=2/(n-1); 
x0=[-1+67*h,1-32*h];
Aineq=[-1 -1];
bineq=0;
lb=[-1+2/(100-2) -1+2/(100-2)];
ub=[1-2/(100-2) 1-2/(100-2)];
%% Start with the default options
options = optimoptions('fmincon');
%% Modify options setting
options = optimoptions(options,'Display', 'iter');
options = optimoptions(options,'Algorithm', 'active-set');
[x,fval,exitflag,output,lambda,grad,hessian] = ...
fmincon(@(x)delsq_2(x),x0,Aineq,bineq,[],[],lb,ub,[],options);
toc