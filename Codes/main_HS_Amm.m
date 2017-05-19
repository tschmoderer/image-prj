warning('off','all')
clc
clear all
close all

I1 = double(imread('data/Teddy/frame10.png'));
I2 = double(imread('data/Teddy/frame11.png'));

alpha = 15;
eps = 0.1;
niter = 2000;

tic; % mesure performance
[u v] = HS_Amm(I1,I2,alpha,eps,niter);
toc;

tic;
plotFlow(u,v,I1,4);
toc;