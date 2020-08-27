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
L = [16 32 64];

%%%%%Computing Mean Square error between x(n) and y(n)
msqerror=zeros(1,3);  
for i= 1:3
    y = myquantizer(x,L(i));
    msqerror(i) = mean((y-x).*(y-x));
end

figure;
stem(L,msqerror);
title("Qe vs L");
ylabel("Quantisation Noise Power(Qe)");
xlabel("No. of Levels(L)");

sqnr=zeros(1,3);
ThSQNR=zeros(1,3);

%%%%%Getting SQNR from MSE
for i=1:3
    y = myquantizer(x,L(i));
    msqerror(i) = mean((y-x).*(y-x));
    MSQNR = (A*A)/(2*msqerror(i));
    sqnr(i) = 10*log10(MSQNR);
end
%%%%%Getting Theoretical SQNR
for k=1:3  
    ThSQNR(k) = 1.76 + 6.02*log2(L(k));
end

figure; 
stem(L,ThSQNR);
hold on;
stem(L,sqnr);
title("SQNR in dB vs No. of Levels | Blue=Theoretical; Red=From MSE");
ylabel("SQNR in dB");
xlabel("No. of Levels(L)");

