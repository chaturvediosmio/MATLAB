                        %%%%%18UEC181%%%%%
clc;
clear all;
close all;

Fs = 8000;
f = 3000;
A = 0.5;
N = 5;
ns = 0 : 1 : ceil(N*Fs/f)-1;
L=8;
%bits=3; 

x = A*cos(2*pi*ns*f/Fs);
y = myquantizer(x,L);
stem(y);
hold on;
stem(x);
t = sprintf("Quantized Signal for L=8 | red=Quantized, blue=Sampled");
title(t);

z = myencoder(y,L);
display(z);