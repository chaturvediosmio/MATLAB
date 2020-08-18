clc;
close all; 
clear all;

f = 3000;
N = 5;
fs = 8000;
ts = 1/fs;
n = 0:1:N*fs/f;
for A = drange(0.1:1)
    x = A*cos(2*pi*f/fs*n);
    g4 = myquantizer( x, 64 );
    e4 = g4-x;
    m = mean(e4.*e4);
    SQNR = 20*log10( norm(x)/norm(x-g4) );
end






