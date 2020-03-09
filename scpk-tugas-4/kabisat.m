function varargout = kabisat(varargin)
% KABISAT MATLAB code for kabisat.fig
%      KABISAT, by itself, creates a new KABISAT or raises the existing
%      singleton*.
%
%      H = KABISAT returns the handle to a new KABISAT or the handle to
%      the existing singleton*.
%
%      KABISAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KABISAT.M with the given input arguments.
%
%      KABISAT('Property','Value',...) creates a new KABISAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kabisat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kabisat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kabisat

% Last Modified by GUIDE v2.5 08-Mar-2020 12:05:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kabisat_OpeningFcn, ...
                   'gui_OutputFcn',  @kabisat_OutputFcn, ...
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


% --- Executes just before kabisat is made visible.
function kabisat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kabisat (see VARARGIN)

% Choose default command line output for kabisat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kabisat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kabisat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputth_Callback(hObject, eventdata, handles)
% hObject    handle to inputth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputth as text
%        str2double(get(hObject,'String')) returns contents of inputth as a double


% --- Executes during object creation, after setting all properties.
function inputth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cek.
function cek_Callback(hObject, eventdata, handles)
% hObject    handle to cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cek
%Mengambil nilai inputan
tahun = get(handles.inputth,'string');

thn = str2num(tahun);

hasil1 = mod(thn,400); 
hasil2 = mod(thn,100);
hasil3 = mod(thn,4);
tahun = num2str(thn);
if(hasil3 == 0)
    if(hasil2 == 0)
        if(hasil1 == 0)
            set(handles.hasilcek,'string',(tahun)+" merupakan tahun kabisat");
        else
            set(handles.hasilcek,'string',(tahun)+" bukan merupakan tahun kabisat");
        end
    else
        set(handles.hasilcek,'string',(tahun)+" merupakan tahun kabisat");
    end
else
    set(handles.hasilcek,'string',(tahun)+" bukan merupakan tahun kabisat");
end

% --- Executes on button press in mainmenu.
function mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(kabisat);
mainmenu
% Hint: get(hObject,'Value') returns toggle state of mainmenu
