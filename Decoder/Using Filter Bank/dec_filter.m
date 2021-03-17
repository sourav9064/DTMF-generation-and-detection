%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DTMF Decoding using Digital Filtering                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Compatible with MATLAB v7.0 or above                   %
% File created in MATLAB v7.5 R2007b using GUIDE v2.5    %
% Program Developer: Mr. Muhammad Azeem Azam (04044522)  %
% Insitute: London Metropolitan University               %
% Email: azeemmet@yahoo.com                              %
% Year: 2007-2008                                        %
% Module: (CT3P30) Engineering Project                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = dec_filter(varargin)
% DEC_FILTER M-file for dec_filter.fig
%      DEC_FILTER, by itself, creates a new DEC_FILTER or raises the existing
%      singleton*.
%
%      H = DEC_FILTER returns the handle to a new DEC_FILTER or the handle to
%      the existing singleton*.
%
%      DEC_FILTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEC_FILTER.M with the given input arguments.
%
%      DEC_FILTER('Property','Value',...) creates a new DEC_FILTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dec_filter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dec_filter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dec_filter

% Last Modified by GUIDE v2.5 28-Feb-2008 14:11:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dec_filter_OpeningFcn, ...
                   'gui_OutputFcn',  @dec_filter_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% End initialization code - DO NOT EDIT

% --- Executes just before dec_filter is made visible.
function dec_filter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dec_filter (see VARARGIN)

% Choose default command line output for dec_filter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dec_filter wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = dec_filter_OutputFcn(hObject, eventdata, handles) 
plots % Executes the file 'plots.m'

% Function for Key 1
function pushbutton1_Callback(hObject, eventdata, handles)
flow=697; fhigh=1209; % Standard frequencies for key 1
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'1');
set(handles.detbox,'string',textstring) % Displays 1 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "1"')
key_1 % Plots

% Function for Key 2
function pushbutton2_Callback(hObject, eventdata, handles)
flow=697; fhigh=1336; % Standard frequencies for key 2
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'2');
set(handles.detbox,'string',textstring) % Displays 2 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "2"')
key_2 % Plots

% Function for Key 3
function pushbutton3_Callback(hObject, eventdata, handles)
flow=697; fhigh=1477; % Standard frequencies for key 3
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'3');
set(handles.detbox,'string',textstring) % Displays 3 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "3"')
key_3 % Plots

% Function for Key 4
function pushbutton4_Callback(hObject, eventdata, handles)
flow=770; fhigh=1209; % Standard frequencies for key 4
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'4');
set(handles.detbox,'string',textstring) % Displays 4 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "4"')
key_4 % Plots

% Function for Key 5
function pushbutton5_Callback(hObject, eventdata, handles)
flow=770; fhigh=1336; % Standard frequencies for key 5
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'5');
set(handles.detbox,'string',textstring) % Displays 5 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "5"')
key_5 % Plots

% Function for Key 6
function pushbutton6_Callback(hObject, eventdata, handles)
flow=770; fhigh=1477; % Standard frequencies for key 6
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'6');
set(handles.detbox,'string',textstring) % Displays 6 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "6"')
key_6 % Plots

% Function for Key 7
function pushbutton7_Callback(hObject, eventdata, handles)
flow=852; fhigh=1209; % Standard frequencies for key 7
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'7');
set(handles.detbox,'string',textstring) % Displays 7 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "7"')
key_7 % Plots

% Function for Key 8
function pushbutton8_Callback(hObject, eventdata, handles)
flow=852; fhigh=1336; % Standard frequencies for key 8
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'8');
set(handles.detbox,'string',textstring) % Displays 8 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "8"')
key_8 % Plots

% Function for Key 9
function pushbutton9_Callback(hObject, eventdata, handles)
flow=852; fhigh=1477; % Standard frequencies for key 9
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'9');
set(handles.detbox,'string',textstring) % Displays 9 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "9"')
key_9 % Plots

% Function for Key *
function pushbutton10_Callback(hObject, eventdata, handles)
flow=941; fhigh=1209; % Standard frequencies for key *
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'*');
set(handles.detbox,'string',textstring) % Displays * in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "*"')
key_star % Plots

% Function for Key 0
function pushbutton11_Callback(hObject, eventdata, handles)
flow=941; fhigh=1336; % Standard frequencies for key 0
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'0');
set(handles.detbox,'string',textstring) % Displays 0 in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "0"')
key_0 % Plots

% Function for Key #
function pushbutton12_Callback(hObject, eventdata, handles)
flow=941; fhigh=1477; % Standard frequencies for key #
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'#');
set(handles.detbox,'string',textstring) % Displays # in the Detection Box
dtmf_signal % Plots a DTMF signal
title ('DTMF Signal presenting Digit "#"')
key_hash % Plots

% --- Executes on button press in pushbutton12.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in pushbutton11.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function detbox_Callback(hObject, eventdata, handles)
% hObject    handle to detbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of detbox as text
%        str2double(get(hObject,'String')) returns contents of detbox as a double

% --- Executes during object creation, after setting all properties.
function detbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to detbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% Function for About
function about_Callback(hObject, eventdata, handles)
msgbox('Program Developer: Muhammad Azeem Azam (04044522)                                      Module: DTMF Decoding using Filter Bank                                                        Insitute: London Metropolitan University                                                                                                           E-Mail: azeemmet@yahoo.com','About', 'none') % Displays the information entered, Use to define author or equivalent

% Function for Exit
function exit_Callback(hObject, eventdata, handles)
close;