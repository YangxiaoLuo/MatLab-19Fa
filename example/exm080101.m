function varargout = exm080101(varargin)
% EXM080101 MATLAB code for exm080101.fig
%      EXM080101, by itself, creates a new EXM080101 or raises the existing
%      singleton*.
%
%      H = EXM080101 returns the handle to a new EXM080101 or the handle to
%      the existing singleton*.
%
%      EXM080101('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXM080101.M with the given input arguments.
%
%      EXM080101('Property','Value',...) creates a new EXM080101 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exm080101_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exm080101_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exm080101

% Last Modified by GUIDE v2.5 18-May-2018 21:19:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exm080101_OpeningFcn, ...
                   'gui_OutputFcn',  @exm080101_OutputFcn, ...
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


% --- Executes just before exm080101 is made visible.
function exm080101_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exm080101 (see VARARGIN)

% Choose default command line output for exm080101
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exm080101 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exm080101_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
get(hObject,'String');                  		% 从可编辑框读取输入字符
zeta=str2double(get(hObject,'String')); 		% 把字符转换成双精度数
handles.t=0:0.05:15;                    		% 定义时间采样数组
handles.y=step(tf(1,[1,2*zeta,1]),handles.t);	% 计算响应
cla                                     		% 清空坐标轴
line(handles.t,handles.y,'LineWidth',2)         % 在已有轴上绘制曲线

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
