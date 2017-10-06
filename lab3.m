function varargout = lab3(varargin)
% LAB3 MATLAB code for lab3.fig
%      LAB3, by itself, creates a new LAB3 or raises the existing
%      singleton*.
%
%      H = LAB3 returns the handle to a new LAB3 or the handle to
%      the existing singleton*.
%
%      LAB3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAB3.M with the given input arguments.
%
%      LAB3('Property','Value',...) creates a new LAB3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lab3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lab3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lab3

% Last Modified by GUIDE v2.5 06-Oct-2017 09:10:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lab3_OpeningFcn, ...
                   'gui_OutputFcn',  @lab3_OutputFcn, ...
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


% --- Executes just before lab3 is made visible.
function lab3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lab3 (see VARARGIN)

% Choose default command line output for lab3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lab3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lab3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in loadBtn.
function loadBtn_Callback(hObject, eventdata, handles)
% hObject    handle to loadBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('swim.jpg');
global image
image = a;
imshow(a, 'Parent', handles.axes1);

% --- Executes on selection change in menuOptions.
function menuOptions_Callback(hObject, eventdata, handles)
% hObject    handle to menuOptions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menuOptions contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menuOptions
i = getimage(handles.axes1);
%s = hsv(:,:,2);
str = get(hObject, 'String');
val = get(hObject, 'Value');
switch str{val}
    case 'Original Pic'
        hsv = rgb2hsv(i);
        h = hsv(:,:,1);
        imshow(h, 'Parent',handles.axes1);
    case 'Hue Value'

    case 'Hue Modified'
        
    case 'Saturation-Background'
end

% --- Executes during object creation, after setting all properties.
function menuOptions_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menuOptions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
