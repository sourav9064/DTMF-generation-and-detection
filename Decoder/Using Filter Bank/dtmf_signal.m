%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a sub file used by dec_filter.m    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Developer: Mr. Muhammad Azeem Azam %
% Email: azeemmet@yahoo.com                  %
% Year: 2007-2008                            %
% Module: (CT3P30) Engineering Project       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

axes(handles.dtmf) % Select the proper axes
Fs= 8000; % Sets the sampling frequency
N= 1000;
T= 1/Fs; % Sets the sampling interval                                                                                           
t= (0:N-1)*T; % Defines the time signal in seconds                                                                              
x= (sin(2*pi*flow*t)+ sin(2*pi*fhigh*t)); % Creates a DTMF signal
plot(x); % Plots the signal                                                                                                                                                                                             
grid on; % Turns on the grid    