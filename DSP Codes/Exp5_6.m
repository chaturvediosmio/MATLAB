clc;
close all; 
clear all;

f = 3000;
N = 5;
A = 0.5;
fs = 80000;
ts = 1/fs;
n = 0:1:N*fs/f;
x = A*cos(2*pi*f/fs*n);

g1 = myquantizer( x, 8 );
figure;
plot(g1);
title('quantized signal for L =8');
e1 = g1-x;
m1 = mean(e1.*e1);
b1 = log2(8);
SQNR1 = 20*log10( norm(x)/norm(x-g1) );
SQNR1a = 1.76+6.02*b1;

g2 = myquantizer( x, 16 );
figure;
plot(g2);
title('quantized signal for L =16');
e2 = g2-x;
m2 = mean(e2.*e2);
b2 = log2(16);
SQNR2 = 20*log10( norm(x)/norm(x-g2) );
SQNR2a = 1.76+6.02*b2;

g3 = myquantizer( x, 32 );
figure;
plot(g3);
title('quantized signal for L =32');
e3 = g3-x;
m3 = mean(e3.*e3);
b3 = log2(32);
SQNR3 = 20*log10( norm(x)/norm(x-g3) );
SQNR3a = 1.76+6.02*b3;

g4 = myquantizer( x, 64 );
figure();
plot(g4);
title('quantized signal for L =64');
e4 = g4-x;
m4 = mean(e4.*e4);
b4 = log2(64);
SQNR4 = 20*log10( norm(x)/norm(x-g4) );
SQNR4a = 1.76+6.02*b4;
