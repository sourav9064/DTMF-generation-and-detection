%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function to pass signal through a filter %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axes(handles.filter) 
Fs=8000;
f1=941;
f2=1477;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
n=0:128;
a=1;
b=fir1(61,wn,'bandpass');
x=sin(2*pi*(f1/Fs)*n)+sin(2*pi*(f2/Fs)*n); % Key #
plot(x);
y=filter(b,a,x); % Performs filtering
plot(y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plots spectrum of signal %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N=128;
axes(handles.spectrum) % Select the proper axes 
[p,fn]=psd(x,N,Fs);
p=p/max(p);
plot(fn,p) % Plots
title ('Spectrum'); % Title value
grid on; % Turns the grid on