clc;
close all; 
clear all;

f = 3000;
N = 5;
A = 0.5;
Ns = 1024;

Fs= 100000;
n= 0:1:(Fs/f)*N;
x= A*cos(2*pi*(f*n)/Fs);
subplot(6,2,1);
stem(n,x);
title("DTS Signal for Fs=100000");
xlabel("No. of Samples");
ylabel("Amplitude");

Fs1=10000;
n1= 0:1:(Fs1/f)*N;
x1= A*cos(2*pi*(f*n1)/Fs1);
subplot(6,2,3);
stem(n1,x1);
title("DTS Signal for Fs=10000");
xlabel("No. of Samples");
ylabel("Amplitude");

Fs2= 6000;
n2= 0:1:(Fs2/f)*N;
x2= A*cos(2*pi*(f*n2)/Fs2);
subplot(6,2,5);
stem(n2,x2);
title("DTS Signal for Fs=6000");
xlabel("No. of Samples");
ylabel("Amplitude");

Fs3= 12000;
n3= 0:1:(Fs3/f)*N;
x3= A*cos(2*pi*(f*n3)/Fs3);
subplot(6,2,7);
stem(n3,x3);
title("DTS Signal for Fs=12000");
xlabel("No. of Samples");
ylabel("Amplitude");

Fs4= 4000;
n4= 0:1:(Fs4/f)*N;
x4= A*cos(2*pi*(f*n4)/Fs4);
subplot(6,2,9);
stem(n4,x4);
title("DTS Signal for Fs=4000");
xlabel("No. of Samples");
ylabel("Amplitude");

Fs5= 5000;
n5= 0:1:(Fs5/f)*N;
x5= A*cos(2*pi*(f*n5)/Fs5);
subplot(6,2,11);
stem (n5,x5);
title("DTS Signal for Fs=5000");
xlabel("No. of Samples");
ylabel("Amplitude");

xaxis= linspace(-Ns,Ns,Ns);

y= fftshift(abs(fft(x,Ns)));
subplot(6,2,2);
stem(xaxis,y);
title("FFT signal for Fs=100000");
xlabel("Frequency");
ylabel("Amplitude");

y1= fftshift(abs(fft(x1,Ns)));
subplot(6,2,6);
stem(xaxis,y1);
title("FFT signal for Fs=10000");
xlabel("Frequency");
ylabel("Amplitude");

y2= fftshift(abs(fft(x2,Ns)));
subplot(6,2,8);
stem(xaxis,y2);
title("FFT signal for Fs=6000");
xlabel("Frequency");
ylabel("Amplitude");

y3= fftshift(abs(fft(x3,Ns)));
subplot(6,2,4);
stem(xaxis,y3);
title("FFT signal for Fs=12000");
xlabel("Frequency");
ylabel("Amplitude");

y4= fftshift(abs(fft(x4,Ns)));
subplot(6,2,12);
stem(xaxis,y4);
title("FFT signal for Fs=4000");
xlabel("Frequency");
ylabel("Amplitude");

y5= fftshift(abs(fft(x5,Ns)));
subplot(6,2,10);
stem(xaxis,y5);
title("FFT signal for Fs=5000");
xlabel("Frequency");
ylabel("Amplitude");