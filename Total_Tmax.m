%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
% Date: 2018/02/16 03:45:01 
clear;clc;close all
% ====================== Solve for all of the nodes ===================== %
tic  % Start recording time
R = 'L';
n = 100;
G = numgrid(R,n);
D = delsq(G);
N = sum(G(:)>0);
% ======================================================================= %
T=zeros(N,1);
for i=1:N
   T(i)=delsq_1(i,N,D);
end
[T_Max1,NNOS] = max(T);% NNOS: Node Number Of Sourc For T_Max.
plot(T)
FFT=fft(T); % fast fourier function
toc