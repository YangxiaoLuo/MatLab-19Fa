function varargout = exm080302(varargin)
% EXM080302 MATLAB code for exm080302.fig
%      EXM080302, by itself, creates a new EXM080302 or raises the existing
%      singleton*.
%
%      H = EXM080302 returns the handle to a new EXM080302 or the handle to
%      the existing singleton*.
%
%      EXM080302('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXM080302.M with the given input arguments.
%
%      EXM080302('Property','Value',...) creates a new EXM080302 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exm080302_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exm080302_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exm080302

% Last Modified by GUIDE v2.5 01-Dec-2017 10:47:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exm080302_OpeningFcn, ...
                   'gui_OutputFcn',  @exm080302_OutputFcn, ...
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


% --- Executes just before exm080302 is made visible.
function exm080302_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exm080302 (see VARARGIN)
%U_Start-----------------------------------------------------U_Start
zeta=0.3;                                   			% 初始阻尼比
set(handles.edit1,'String',num2str(zeta))	% 可编辑文本框标识初始化，注意：0.3变为字符串
set(handles.slider1,'Value',zeta) 			% 滑块游标位置的初始化
set(handles.gridon,'Value',0)     			% Grid on单选按键处于“非选”状态
set(handles.gridoff,'Value',1)      			% Grid off单选按键处于“选中”状态
set(handles.listbox1,'Value',1)   			% 列表框选项初始化，用第1选项
handles.t=0:0.05:15;                        		% 定义时间采样数组						<14>
handles.Color='Red';                        		% 定义响应曲线的初始色彩				<15>
handles.zeta=zeta;						%										<16>
handles.flag=0;                             		% 初始绘图标志
handles=surfplot(handles);				%										<18>
handles.flag=1;                             		% 非初始绘图标志						<19>
handles.Color='Blue';                   		% 定义响应曲线的非初始色彩				<20>
%U_End -----------------------------------------------------------------------------------U End
% Choose default command line output for exm080302
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exm080302 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exm080302_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%U_Start-----------------------------------------------------U_Start
listindex=get(hObject,'Value');			% 获得列表框所有选项的序号				<3>
if any(listindex==1)					% 使第1选项只能单独被选
    set(handles.listbox1,'Value',1)
end
handles.flag=0;						% 列表框被触动时，发出重画曲面命令	<7>
handles=surfplot(handles);
handles.flag=1;						% 										<9>
guidata(hObject, handles);				% 									       <10>
%U_End-------------------------------------------------------U_End

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in gridon.
function gridon_Callback(hObject, eventdata, handles)
% hObject    handle to gridon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%U_Start-----------------------------------------------------U_Start
set(handles.gridoff,'Value',0)			% 使“Grid off”键处于“非选”状态
grid on,grid minor								% 画坐标网格线
%U_End-------------------------------------------------------U_End

% Hint: get(hObject,'Value') returns toggle state of gridon


% --- Executes on button press in gridoff.
function gridoff_Callback(hObject, eventdata, handles)
% hObject    handle to gridoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%U_Start------------------------------------------------------U_Start
set(handles.gridon,'Value',0)			% 使“Grid on”键处于“非选”状态
grid off								% 删除坐标网格线
%U_End-------------------------------------------------------U_End

% Hint: get(hObject,'Value') returns toggle state of gridoff



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%U_Start-----------------------------------------------------U_Start
sz=get(hObject,'String');                     		% 从可编辑文本框读取输入字符			<6>
zeta=str2double(sz);                            	% 把字符转换成双精度数					<7>
set(handles.slider1,'Value',zeta)          	% 对滑块的游标定位
handles.zeta=zeta;						% “GUI数据”形式，保存数据以便共享    <9>
handles=surfplot(handles);   			% 调用绘图子函数，绘制响应曲线
guidata(hObject, handles);				% 保存更新了的handles数据				<11>
%U_End-------------------------------------------------------U_End

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


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%U_Start-----------------------------------------------------U_Start
zeta=get(hObject,'Value');				% 读取滑块游标体现的“值”					<3>
set(handles.edit1,'String',num2str(zeta))	% 使可编辑文本框显示新阻尼比			<4>
handles.zeta=zeta;						% 更新阻尼比							<5>
handles=surfplot(handles);				% 利用handles传送绘图所需数据，		<6>
% 并产生新的handles数据	。
guidata(hObject, handles);				%										<7>
%U_End-------------------------------------------------------U_End

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function handles=surfplot(handles)
% handles=surfplot(handles)	供启动子函数和各控件回调子函数调用的绘图函数
% handles					GUI数据变量。该变量保存和传递：界面上各种图形对象的
%							“句柄”，以及“应用参数”。
zeta=handles.zeta;						% 仅为记述简单
t=handles.t;
listindex=get(handles.listbox1,'Value');	% 读取列表框的选项序号数组
Nt=length(t);
if handles.flag==0						% 仅在界面启动时执行
    cla                                 % 清空界面上次工作后可能残留的轴上对象
    zmin=get(handles.slider1,'Min');	% 读取滑块的最小取值
    zmax=get(handles.slider1,'Max');	% 读取滑块的最大取值
    zt=zmin:0.05:zmax;					% 为3维坐标“x轴”准备采样点
    Nz=length(zt);
    [ZT,T]=meshgrid(zt,t);				% 3维曲面的“X”、“Y”采样点阵
    Y=zeros(Nt,Nz);
    for k=1:Nz							% 计算不同阻尼下的响应曲线
        Y(:,k)=step(tf(1,[1,2*zt(k),1]),t);	
    end
    surface(ZT,T,Y)					% 用低层绘图命令，绘制曲面
    shading flat
    colormap(jet)
else
    delete(handles.g1)					% 利用句柄，删除上次绘制的参照线
    delete(handles.rline)					% 利用句柄，删除上次绘制的响应曲线
end
xz=ones(1,Nt)*zeta;
y1=ones(1,Nt)*1;
y=step(tf(1,[1,2*zeta,1]),t);				% 在指定的zeta下，计算响应曲线
gz=[zeta,zeta,xz,zeta,zeta,xz];			% 绿色封闭参照线的“x”坐标
gt=[t(1),t(1),t,t(end),t(end),fliplr(t)];		% 绿色封闭参照线的“y”坐标
gy=[0,1,y1,1,0,0*y1];					% 绿色封闭参照线的“z”坐标
handles.g1=line(gz,gt,gy,'Color','g','LineWidth',1);		% 绘制绿色参照线，并产生句柄<33>
handles.rline=line(xz,t,y,'Color',handles.Color,'LineWidth',2);% 绘制红色响应曲线，并产生句柄
K=length(get(handles.listbox1,'Value'));				% 列表框里，被“选中”的项数
for jj=1:K
    switch listindex(jj)								% 被选中的“选项行序号”	    <37>
        case 1
            											% 不做任何标识
        case 2										% 画上升时间点
            k95=min(find(y>0.95));k952=[(k95-1),k95];
            t95=interp1(y(k952),t(k952),0.95);				% 线性插值法确定0.95线的时间
            line(zeta,t95,0.95,'marker','+','markeredgecolor','y','markersize',5);
        case 3										% 画最大峰值点
            [ym,km]=max(y);							% 找最大峰值
            if km<Nt & (ym-1)>0
            	 line(zeta,t(km),ym,'marker','.','markeredgecolor','k','markersize',5);
            end
        case 4										% 画镇定时间点
            ii=max(find(abs(y-1)>0.05));
            if ii<Nt
                line(zeta,t(ii+1),y(ii+1),'Color','r','Marker','o','MarkerSize',4)
            end
    end
end
xlabel('{\zeta}')
ylabel('t')
zlabel('y')
alpha(0.7)										% 控制曲面的透明度
view(75,44)


% --------------------------------------------------------------------
function BOX1_Callback(hObject, eventdata, handles)
% hObject    handle to BOX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function boxon_Callback(hObject, eventdata, handles)
% hObject    handle to boxon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
box on                                                  % 使坐标框封闭
set(handles.boxon,'Enable','off','Checked','on')     	% 令“Box on”菜单项“失能、已选”
set(handles.boxoff,'Enable','on','Checked','off')     	% 令“Box off”菜单项“使能、未选”


% --------------------------------------------------------------------
function boxoff_Callback(hObject, eventdata, handles)
% hObject    handle to boxoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
box off                                			% 使坐标框不封闭
set(handles.boxoff,'Enable','off','Checked','on')    	% 令“Box off”菜单项“失能、已选”
set(handles.boxon,'Enable','on','Checked','off')      	% 令“Box on”菜单项“使能、未选”
