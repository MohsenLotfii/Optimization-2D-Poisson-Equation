%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
% Date: 2018/02/16 03:45:01 
clear;clc;close all
%% Genetic algoritm
tic
nvars=2;
Aineq=[-1 -1];
bineq=0;
lb=[-1+2/(100-2) -1+2/(100-2)];
ub=[1-2/(100-2) 1-2/(100-2)];
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = optimoptions('ga');
%% Modify options setting
options = optimoptions(options,'Display', 'iter');
options = optimoptions(options,'PlotFcn', {  @gaplotbestf @gaplotbestindiv @gaplotdistance @gaplotexpectation @gaplotgenealogy @gaplotrange @gaplotscorediversity @gaplotscores @gaplotselection @gaplotstopping @gaplotmaxconstr });
options = optimoptions(options,'UseVectorized', false);
options = optimoptions(options,'UseParallel', true);
[x,fval,exitflag,output,population,score] = ...
ga(@(x)delsq_2(x),nvars,Aineq,bineq,[],[],lb,ub,[],[],options);
toc
