%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a sub file used by dtmfgen.m       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Developer: Mr. Muhammad Azeem Azam %
% Email: azeemmet@yahoo.com                  %
% Year: 2007-2008                            %
% Module: (CT3P30) Engineering Project       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Get user input from GUI %
%%%%%%%%%%%%%%%%%%%%%%%%%%%
amplitude = str2double(get(handles.amp_input,'String'));   
phase= str2double(get(handles.phase_input,'String'));      
N= str2double(get(handles.no_samples,'String'));           
noisepower= str2double(get(handles.noise_power,'String')); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This part contains the properties & function on each key press %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
axes(handles.dtmf) % Select the proper axes                                                                                    
Fs= 8000; % Sets the sampling frequency                                                                                       
v= N; % The default value is '1024'. Defines no of samples              
w= noisepower; % The default value is '0'. This is to define noise power 
np= noisepower*randn(1,N); % Function to generate random noise                                                                 
T= 1/Fs; % Sets the sampling interval                                                                                          
t= (0:N-1)*T; % Defines the time signal in seconds                                                                             
x= amplitude*(sin(2*pi*flow*t+phase)+ sin(2*pi*fhigh*t+phase)); % DTMF Gen                                        
x= x+np; % Adds noise in the signal. Default value is '0'. 
PS= (amplitude*amplitude)/2;                                                                                                   
PN= noisepower;                                                                                                                
signal_to_noise_ratio= 20*log(PS/PN); % Defining SNR                                                                           
set(handles.snr,'String',signal_to_noise_ratio); % Display SNR value                                                                               
sound (x,Fs); % Generates a sound on key press                                                                                 
plot(x); % Plots the signal                                                                                                    
xlabel('Time'); % X-axis value                                                                                                 
ylabel('Amplitude'); % Y-axis value                                                                                            
grid on; % Turns the grid on                                                                                                  