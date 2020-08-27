                        %%%%%18UEC181%%%%%
clc;
clear all;
close all;

Fs = 8000;
f = 3000;
A = 0;
N = 5;
ns = 0 : 1 : ceil(N*Fs/f)-1;
L = 64;
b = 6;  %6 Bits as, log2(64)=6

voltage = zeros(1,10);
sqnr_db_pr=zeros(1,10);
sqnr_db_th=zeros(1,10);

for i= 1:10
    A = A+0.1;
    x = A*cos(2*pi*ns*f/Fs);
    y = myquantizer(x,L);
    voltage(i) = A;
    msqerror = mean((y-x).*(y-x));
    MSQNR = (A*A) / (2*(msqerror));
    sqnr_db_th(i) = 1.76 + 6.02*b;
    sqnr_db_pr(i) = 10*log10(MSQNR);
end

subplot(2,1,1);
stem(voltage,sqnr_db_pr);
title("SQNR in dB Practical");
subplot(2,1,2);
stem(voltage,sqnr_db_th);
title("SQNR in dB Theoritical");