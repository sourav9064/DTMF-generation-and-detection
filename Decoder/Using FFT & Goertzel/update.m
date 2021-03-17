%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a sub file used by dtrmfdec.m      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Developer: Mr. Muhammad Azeem Azam %
% Email: azeemmet@yahoo.com                  %
% Year: 2007-2008                            %
% Module: (CT3P30) Engineering Project       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Get user Input from GUI %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
noisepower= str2double(get(handles.noise_power,'String')); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This part contains the properties & function on each key press %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function for Fast Fourier Transform (FFT) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axes(handles.y1) % Select the proper axes 
N=128; % Number of samples
n=0:N-1;
Fs=8000; % Sampling frequency 
w= noisepower; % The default value is '0'. This is to define noise power
np= noisepower*randn(1,N); % Function to generate random noise  
x=sin(2*pi*(flow/Fs)*n)+sin(2*pi*(fhigh/Fs)*n); % Generation of signal
x=x+np; % Signal with added noise
plot(x) % Ploting the Graph
title ('Time Domain'); % Title value
grid on; % Turns the grid on
axes(handles.y2) % Select the proper axes 
[p,fn]=psd(x,N,Fs);
p=p/max(p);
plot(fn,p) % Plots
title ('Frequency Domain'); % Title value
grid on; % Turns the grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function for Goertzel Algorithm %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axes(handles.goertzel) % Select the proper axes 
f = [697 770 852 941 1209 1336 1477]; % Frequency of the telephone pad
Fs = 8000; % Sampling frequency 
N = 205; % Number of samples	
n=0:N-1; 
w= noisepower; % The default value is '0'. This is to define noise power
np= noisepower*randn(1,N); % Function to generate random noise  
x = sum(sin(2*pi*[flow;fhigh]*(n)/Fs))+np; % Signal generation
k = round(f/Fs*N); % Indices of the DFT 
xd = goertzel(x,k+1); % DC is represented by the value 1  
ef = round(k*Fs/N); % Frequencies at which DFT estimated  
stem(ef,abs(xd)) 
xlabel('Frequency');
ylabel('Magnitude');
grid on; % Turns the grid on