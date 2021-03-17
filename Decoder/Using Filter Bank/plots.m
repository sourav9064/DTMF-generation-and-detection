%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a sub file used by dec_filter.m    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Developer: Mr. Muhammad Azeem Azam %
% Email: azeemmet@yahoo.com                  %
% Year: 2007-2008                            %
% Module: (CT3P30) Engineering Project       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot for 697Hz
axes(handles.h697) 
Fs=8000;
Order=100;
f1=697;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
b697=fir1(Order, wn, 'bandpass');
a=1;
[h,f]=freqz(b697,a,256,Fs);
H697=abs(h);
plot (f,H697);
title ('697Hz');
grid on;

% Plot for 770Hz
axes(handles.h770) 
Fs=8000;
Order=100;
f1=770;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
b770=fir1(Order, wn, 'bandpass');
a=1;
[h,f]=freqz(b770,a,256,Fs);
H770=abs(h);
plot (f,H770);
title ('770Hz');
grid on;

% Plot for 852Hz
axes(handles.h852) 
Fs=8000;
Order=100;
f1=852;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
b852=fir1(Order, wn, 'bandpass');
a=1;
[h,f]=freqz(b852,a,256,Fs);
H852=abs(h);
plot (f,H852);
title ('852Hz');
grid on;

% Plot for 941Hz
axes(handles.h941) 
Fs=8000;
Order=100;
f1=941;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
b941=fir1(Order, wn, 'bandpass');
a=1;
[h,f]=freqz(b941,a,256,Fs);
H941=abs(h);
plot (f,H941);
title ('941Hz');
grid on;

% Plot for 1209Hz
axes(handles.h1209) 
Fs=8000;
Order=100;
f1=1209;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
b1209=fir1(Order, wn, 'bandpass');
a=1;
[h,f]=freqz(b1209,a,256,Fs);
H1209=abs(h);
plot (f,H1209);
title ('1209Hz');
grid on;

% Plot for 1336Hz
axes(handles.h1336) 
Fs=8000;
Order=100;
f1=1336;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
b1336=fir1(Order, wn, 'bandpass');
a=1;
[h,f]=freqz(b1336,a,256,Fs);
H1336=abs(h);
plot (f,H1336);
title ('1336Hz');
grid on;

% Plot for 1477Hz
axes(handles.h1477) 
Fs=8000;
Order=100;
f1=1477;
wn=[(f1-20)/(Fs/2), (f1+20)/(Fs/2)];
b1477=fir1(Order, wn, 'bandpass');
a=1;
[h,f]=freqz(b1477,a,256,Fs);
H1477=abs(h);
plot (f,H1477);
title ('1477Hz');
grid on;