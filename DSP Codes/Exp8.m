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
i1 = index( x, 8 );
en1 = de2bi(i1);
figure;
plot(g1,en1);

g2 = myquantizer( x, 16 );
i2 = index( x, 16 );
en2 = de2bi(i2);
figure;
plot(g2,en2);

g3 = myquantizer( x, 32 );
i3 = index( x, 16 );
en3 = de2bi(i3);
figure;
plot(g3,en3);

g4 = myquantizer( x, 64 );
i4 = index( x, 64 );
en4 = de2bi(i4);
figure;
plot(g4,en4);

