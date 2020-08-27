                        %%%%%18UEC181%%%%%
clc;
clear all;
close all;

Fs = 8000;
f = 3000;
A = 0.5;
N = 5;
ns = 0 : 1 : ceil(N*Fs/f)-1;
x = A*cos(2*pi*ns*f/Fs);

subplot(3,2,1);
stem(ns,x); 
title("Input Discrete Signal for Fs=100000");
xlabel("No. of Samples (n)");
ylabel("Amplitude (x[n])");

L=[8 16 32 64];
for i=1:4
    y=myquantizer(x,L(i));
    t=sprintf("Quantized Signal for L=%d | red=Quantized, blue=Sampled",L(i));
    subplot(3,2,i+1);
    stem(y); 
    hold on;
    stem(x);
    title(t);
end
