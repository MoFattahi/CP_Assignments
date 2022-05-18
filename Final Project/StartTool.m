function varargout = StartTool(varargin)
% STARTTOOL MATLAB code for StartTool.fig
%      STARTTOOL, by itself, creates a new STARTTOOL or raises the existing
%      singleton*.
%
%      H = STARTTOOL returns the handle to a new STARTTOOL or the handle to
%      the existing singleton*.
%
%      STARTTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STARTTOOL.M with the given input arguments.
%
%      STARTTOOL('Property','Value',...) creates a new STARTTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before StartTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to StartTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help StartTool

% Last Modified by GUIDE v2.5 12-Jul-2020 09:05:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @StartTool_OpeningFcn, ...
                   'gui_OutputFcn',  @StartTool_OutputFcn, ...
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


% --- Executes just before StartTool is made visible.
function StartTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to StartTool (see VARARGIN)

% Choose default command line output for StartTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
x1=linspace(0,10,100);
x2=linspace(0,20,100);
spring_1=sin(x1)-5;
spring_2=sin(x1)+5;
spring_3=sin(x2);
axis([-8 8 0 40]);hold on;
plot(spring_1,x1,'-b','LineWidth',4); 
plot(spring_2,x1,'-b','LineWidth',4);
plot(spring_3,x2,'-r','LineWidth',4);
rectangle('Position',[-6 20 12 1],'FaceColor',[0 0 0]);
rectangle('Position',[-4 21 8 14],'FaceColor',[0 1 0]);
% UIWAIT makes StartTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = StartTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Start.
function Start_Callback(hObject, eventdata, handles)
% hObject    handle to Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

check=handles.w/handles.k1<handles.d;
if check 
    x=handles.w/handles.k1;
    for t=0:0.5:x
        x1=linspace(0,10,100);
        x2=linspace(0,10+handles.d-t,100);
        spring_1=sin(x1)-5;
        spring_2=sin(x1)+5;
        spring_3=sin(x2*(10+handles.d)/(10+handles.d-t));
        cla;
        axis([-8 8 0 40]);hold on;
        plot(spring_1,x1,'-b','LineWidth',4); 
        plot(spring_2,x1,'-b','LineWidth',4);
        plot(spring_3,x2,'-r','LineWidth',4);
        rectangle('Position',[-6 10+handles.d-t 12 1],'FaceColor',[0 0 0]);
        rectangle('Position',[-4 11+handles.d-t 8 14],'FaceColor',[0 1 0]);
        pause(0.02);
    end
else 
    x=(handles.w+2*handles.k2*handles.d)/(handles.k1+2*handles.k2);
    for t=0:0.5:handles.d
        x1=linspace(0,10,100);
        x2=linspace(0,10+handles.d-t,100);
        spring_1=sin(x1)-5;
        spring_2=sin(x1)+5;
        spring_3=sin(x2*(10+handles.d)/(10+handles.d-t));
        cla;
        axis([-8 8 0 40]);hold on;
        plot(spring_1,x1,'-b','LineWidth',4); 
        plot(spring_2,x1,'-b','LineWidth',4);
        plot(spring_3,x2,'-r','LineWidth',4);
        rectangle('Position',[-6 10+handles.d-t 12 1],'FaceColor',[0 0 0]);
        rectangle('Position',[-4 11+handles.d-t 8 14],'FaceColor',[0 1 0]);
        pause(0.02);
    end
    
    for t=handles.d:0.1:x
        x1=linspace(0,10-(t-handles.d),100);
        x2=linspace(0,10+handles.d-t,100);
        spring_1=sin(x1*10/(10-(t-handles.d)))-5;
        spring_2=sin(x1*10/(10-(t-handles.d)))+5;
        spring_3=sin(x2*(10+handles.d)/(10+handles.d-t));
        cla;
        axis([-8 8 0 40]);hold on;
        plot(spring_1,x1,'-b','LineWidth',4); 
        plot(spring_2,x1,'-b','LineWidth',4);
        plot(spring_3,x2,'-r','LineWidth',4);
        rectangle('Position',[-6 10+handles.d-t 12 1],'FaceColor',[0 0 0]);
        rectangle('Position',[-4 11+handles.d-t 8 14],'FaceColor',[0 1 0]);
        pause(0.02)
    end
end


function K1_Callback(hObject, eventdata, handles)
% hObject    handle to K1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of K1 as text
%        str2double(get(hObject,'String')) returns contents of K1 as a double
num = str2double(get(hObject,'String'));
if isnan(num)
    num = 0;
    set(hObject,'String',num);
    errordlg('Input must be a number', 'Error')
end
if num<=0
    num = '';
    set(hObject,'String',num);
    errordlg('Input must be a positive number', 'Error')
end
handles.k1 = num;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function K1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function K2_Callback(hObject, eventdata, handles)
% hObject    handle to K2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of K2 as text
%        str2double(get(hObject,'String')) returns contents of K2 as a double
num = str2double(get(hObject,'String'));
if isnan(num)
    num = 0.001;
    set(hObject,'String',num);
    errordlg('Input must be a number', 'Error')
end
if num<=0
    num = '';
    set(hObject,'String',num);
    errordlg('Input must be a positive number', 'Error')
end
handles.k2 = num;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function K2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double
num = str2double(get(hObject,'String'));
if isnan(num)
    num = 0;
    set(hObject,'String',num);
    errordlg('Input must be a number', 'Error')
end
if num<=0
    num = '';
    set(hObject,'String',num);
    errordlg('Input must be a positive number', 'Error')
end
handles.d = num;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W_Callback(hObject, eventdata, handles)
% hObject    handle to W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W as text
%        str2double(get(hObject,'String')) returns contents of W as a double
num = str2double(get(hObject,'String'));
if isnan(num)
    num = 0;
    set(hObject,'String',num);
    errordlg('Input must be a number', 'Error')
end
if num<=0
    num = '';
    set(hObject,'String',num);
    errordlg('Input must be a positive number', 'Error')
end
handles.w = num;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function W_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text_K1.
function text_K1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text_K1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
