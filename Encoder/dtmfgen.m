%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DTMF Generator                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Compatible with MATLAB v7.0 or above                   %
% File created in MATLAB v7.5 R2007b using GUIDE v2.5    %
% Program Developer: Mr. Muhammad Azeem Azam (04044522)  %
% Insitute: London Metropolitan University               %
% Email: azeemmet@yahoo.com                              %
% Year: 2007-2008                                        %
% Module: (CT3P30) Engineering Project                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = dtmfgen(varargin)

% Last Modified by GUIDE v2.5 17-Feb-2008 22:25:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dtmfgen_OpeningFcn, ...
                   'gui_OutputFcn',  @dtmfgen_OutputFcn, ...
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

% --- Executes just before dtmfgen is made visible.
function dtmfgen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dtmfgen (see VARARGIN)

% Choose default command line output for dtmfgen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dtmfgen wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = dtmfgen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% Function for Key 1
function pushbutton1_Callback(hObject, eventdata, handles)
flow=697; fhigh=1209; % Standard frequencies for key 1
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'1');
set(handles.detbox,'string',textstring) % Displays 1 in the Detection Box
update % Reads the file update.m

title ('Digit "1" (697,1209)'); % Title value

% Function for Key 2
function pushbutton2_Callback(hObject, eventdata, handles)
flow=697; fhigh=1336; % Standard frequencies for key 2
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'2');
set(handles.detbox,'string',textstring) % Displays 2 in the Detection Box
update % Reads the file update.m

title ('Digit "2" (697,1336)'); % Title value

% Function for Key 3
function pushbutton3_Callback(hObject, eventdata, handles)
flow=697; fhigh=1477; % Standard frequencies for key 3
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'3');
set(handles.detbox,'string',textstring) % Displays 3 in the Detection Box
update % Reads the file update.m

title ('Digit "3" (697,1477)'); % Title value

% Function for Key 4
function pushbutton4_Callback(hObject, eventdata, handles)
flow=770; fhigh=1209; % Standard frequencies for key 4
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'4');
set(handles.detbox,'string',textstring) % Displays 4 in the Detection Box
update % Reads the file update.m

title ('Digit "4" (770,1209)'); % Title value

% Function for Key 5
function pushbutton5_Callback(hObject, eventdata, handles)
flow=770; fhigh=1336; % Standard frequencies for key 5
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'5');
set(handles.detbox,'string',textstring) % Displays 5 in the Detection Box
update % Reads the file update.m

title ('Digit "5" (770,1336)'); % Title value

% Function for Key 6
function pushbutton6_Callback(hObject, eventdata, handles)
flow=770; fhigh=1477; % Standard frequencies for key 6
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'6');
set(handles.detbox,'string',textstring) % Displays 6 in the Detection Box
update % Reads the file update.m

title ('Digit "6" (770,1477)'); % Title value

% Function for Key 7
function pushbutton7_Callback(hObject, eventdata, handles)
flow=852; fhigh=1209; % Standard frequencies for key 7
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'7');
set(handles.detbox,'string',textstring) % Displays 7 in the Detection Box
update % Reads the file update.m

title ('Digit "7" (852,1209)'); % Title value

% Function for Key 8
function pushbutton8_Callback(hObject, eventdata, handles)
flow=852; fhigh=1336; % Standard frequencies for key 8
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'8');
set(handles.detbox,'string',textstring) % Displays 8 in the Detection Box
update % Reads the file update.m

title ('Digit "8" (852,1336)'); % Title value

% Function for Key 9
function pushbutton9_Callback(hObject, eventdata, handles)
flow=852; fhigh=1477; % Standard frequencies for key 9
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'9');
set(handles.detbox,'string',textstring) % Displays 9 in the Detection Box
update % Reads the file update.m

title ('Digit "9" (852,1477)'); % Title value

% Function for Key *
function pushbutton_star_Callback(hObject, eventdata, handles)
flow=941; fhigh=1209; % Standard frequencies for key *
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'*');
set(handles.detbox,'string',textstring) % Displays * in the Detection Box
update % Reads the file update.m

title ('Digit "*" (941,1209)'); % Title value

% Function for Key 0
function pushbutton0_Callback(hObject, eventdata, handles)
flow=941; fhigh=1336; % Standard frequencies for key 0
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'0');
set(handles.detbox,'string',textstring) % Displays 0 in the Detection Box
update % Reads the file update.m

title ('Digit "0" (941,1336)'); % Title value

% Function for Key #
function pushbutton_hash_Callback(hObject, eventdata, handles)
flow=941; fhigh=1477; % Standard frequencies for key #
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'#');
set(handles.detbox,'string',textstring) % Displays # in the Detection Box
update % Reads the file update.m

title ('Digit "#" (941,1477)'); % Title value


function amp_input_Callback(hObject, eventdata, handles)
% hObject    handle to amp_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amp_input as text
%        str2double(get(hObject,'String')) returns contents of amp_input as a double

% --- Executes during object creation, after setting all properties.
function amp_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amp_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function phase_input_Callback(hObject, eventdata, handles)
% hObject    handle to phase_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phase_input as text
%        str2double(get(hObject,'String')) returns contents of phase_input as a double

% --- Executes during object creation, after setting all properties.
function phase_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% Silder Movement
function slider1_Callback(hObject, eventdata, handles)
sliderValue = get(handles.slider1,'Value'); %obtains the slider value from the slider component 
set(handles.noise_power,'String', num2str(sliderValue)); %puts the slider value into the edit text component
guidata(hObject, handles); % Update handles structure

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function slider_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
set(handles.detbox,'String','') ; % Clears the data in the Detection Box
set(handles.no_samples,'String','1024') ; % Sets the no of sample value to 1024(default)
set(handles.amp_input,'String','1') ; % Sets amplitude value to 1(default)
set(handles.phase_input,'String','0') ; % Sets phase value to 0(default)
set(handles.snr,'String','Inf') % Sets snr value to default. It is only effective if the noise power is used within the signal
set(handles.noise_power,'String','0') % Sets noise power value to '0'(default)
cla(handles.dtmf,'reset') % Clears the plot

% --- Executes on button press in about.
function about_Callback(hObject, eventdata, handles)
msgbox('Program Developer: Muhammad Azeem Azam (04044522)                                      Module: DTMF Generator                                                        Insitute: London Metropolitan University                                                                                                           E-Mail: azeemmet@yahoo.com','About', 'none') % Displays the information entered, Use to define author or equivalent

% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
close; % Closes the window and return back to MATLAB command window

function snr_Callback(hObject, eventdata, handles)
% hObject    handle to snr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of snr as text
%        str2double(get(hObject,'String')) returns contents of snr as a double

% --- Executes during object creation, after setting all properties.
function snr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to snr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function detbox_Callback(hObject, eventdata, handles)
% hObject    handle to detbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of detbox as text
%        str2double(get(hObject,'String')) returns contents of detbox as a double#

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

function no_samples_Callback(hObject, eventdata, handles)
% hObject    handle to no_samples (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of no_samples as text
%        str2double(get(hObject,'String')) returns contents of no_samples as a double

% --- Executes during object creation, after setting all properties.
function no_samples_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_samples (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function noise_power_Callback(hObject, eventdata, handles)
%get the string for the editText component
sliderValue = get(handles.noise_power,'String');
 
%convert from string to number if possible, otherwise returns empty
sliderValue = str2num(sliderValue);
 
%if user inputs something is not a number, or if the input is less than 0
%or greater than 100, then the slider value defaults to 0
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 10)
    set(handles.slider1,'Value',0);
    set(handles.noise_power,'String','0');
else
    set(handles.slider1,'Value',sliderValue);
end

% --- Executes during object creation, after setting all properties.
function noise_power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noise_power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end