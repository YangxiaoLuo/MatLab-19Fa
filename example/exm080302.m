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
zeta=0.3;                                   			% ��ʼ�����
set(handles.edit1,'String',num2str(zeta))	% �ɱ༭�ı����ʶ��ʼ����ע�⣺0.3��Ϊ�ַ���
set(handles.slider1,'Value',zeta) 			% �����α�λ�õĳ�ʼ��
set(handles.gridon,'Value',0)     			% Grid on��ѡ�������ڡ���ѡ��״̬
set(handles.gridoff,'Value',1)      			% Grid off��ѡ�������ڡ�ѡ�С�״̬
set(handles.listbox1,'Value',1)   			% �б��ѡ���ʼ�����õ�1ѡ��
handles.t=0:0.05:15;                        		% ����ʱ���������						<14>
handles.Color='Red';                        		% ������Ӧ���ߵĳ�ʼɫ��				<15>
handles.zeta=zeta;						%										<16>
handles.flag=0;                             		% ��ʼ��ͼ��־
handles=surfplot(handles);				%										<18>
handles.flag=1;                             		% �ǳ�ʼ��ͼ��־						<19>
handles.Color='Blue';                   		% ������Ӧ���ߵķǳ�ʼɫ��				<20>
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
listindex=get(hObject,'Value');			% ����б������ѡ������				<3>
if any(listindex==1)					% ʹ��1ѡ��ֻ�ܵ�����ѡ
    set(handles.listbox1,'Value',1)
end
handles.flag=0;						% �б�򱻴���ʱ�������ػ���������	<7>
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
set(handles.gridoff,'Value',0)			% ʹ��Grid off�������ڡ���ѡ��״̬
grid on,grid minor								% ������������
%U_End-------------------------------------------------------U_End

% Hint: get(hObject,'Value') returns toggle state of gridon


% --- Executes on button press in gridoff.
function gridoff_Callback(hObject, eventdata, handles)
% hObject    handle to gridoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%U_Start------------------------------------------------------U_Start
set(handles.gridon,'Value',0)			% ʹ��Grid on�������ڡ���ѡ��״̬
grid off								% ɾ������������
%U_End-------------------------------------------------------U_End

% Hint: get(hObject,'Value') returns toggle state of gridoff



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%U_Start-----------------------------------------------------U_Start
sz=get(hObject,'String');                     		% �ӿɱ༭�ı����ȡ�����ַ�			<6>
zeta=str2double(sz);                            	% ���ַ�ת����˫������					<7>
set(handles.slider1,'Value',zeta)          	% �Ի�����α궨λ
handles.zeta=zeta;						% ��GUI���ݡ���ʽ�����������Ա㹲��    <9>
handles=surfplot(handles);   			% ���û�ͼ�Ӻ�����������Ӧ����
guidata(hObject, handles);				% ��������˵�handles����				<11>
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
zeta=get(hObject,'Value');				% ��ȡ�����α����ֵġ�ֵ��					<3>
set(handles.edit1,'String',num2str(zeta))	% ʹ�ɱ༭�ı�����ʾ�������			<4>
handles.zeta=zeta;						% ���������							<5>
handles=surfplot(handles);				% ����handles���ͻ�ͼ�������ݣ�		<6>
% �������µ�handles����	��
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
% handles=surfplot(handles)	�������Ӻ����͸��ؼ��ص��Ӻ������õĻ�ͼ����
% handles					GUI���ݱ������ñ�������ʹ��ݣ������ϸ���ͼ�ζ����
%							����������Լ���Ӧ�ò�������
zeta=handles.zeta;						% ��Ϊ������
t=handles.t;
listindex=get(handles.listbox1,'Value');	% ��ȡ�б���ѡ���������
Nt=length(t);
if handles.flag==0						% ���ڽ�������ʱִ��
    cla                                 % ��ս����ϴι�������ܲ��������϶���
    zmin=get(handles.slider1,'Min');	% ��ȡ�������Сȡֵ
    zmax=get(handles.slider1,'Max');	% ��ȡ��������ȡֵ
    zt=zmin:0.05:zmax;					% Ϊ3ά���ꡰx�ᡱ׼��������
    Nz=length(zt);
    [ZT,T]=meshgrid(zt,t);				% 3ά����ġ�X������Y����������
    Y=zeros(Nt,Nz);
    for k=1:Nz							% ���㲻ͬ�����µ���Ӧ����
        Y(:,k)=step(tf(1,[1,2*zt(k),1]),t);	
    end
    surface(ZT,T,Y)					% �õͲ��ͼ�����������
    shading flat
    colormap(jet)
else
    delete(handles.g1)					% ���þ����ɾ���ϴλ��ƵĲ�����
    delete(handles.rline)					% ���þ����ɾ���ϴλ��Ƶ���Ӧ����
end
xz=ones(1,Nt)*zeta;
y1=ones(1,Nt)*1;
y=step(tf(1,[1,2*zeta,1]),t);				% ��ָ����zeta�£�������Ӧ����
gz=[zeta,zeta,xz,zeta,zeta,xz];			% ��ɫ��ղ����ߵġ�x������
gt=[t(1),t(1),t,t(end),t(end),fliplr(t)];		% ��ɫ��ղ����ߵġ�y������
gy=[0,1,y1,1,0,0*y1];					% ��ɫ��ղ����ߵġ�z������
handles.g1=line(gz,gt,gy,'Color','g','LineWidth',1);		% ������ɫ�����ߣ����������<33>
handles.rline=line(xz,t,y,'Color',handles.Color,'LineWidth',2);% ���ƺ�ɫ��Ӧ���ߣ����������
K=length(get(handles.listbox1,'Value'));				% �б�������ѡ�С�������
for jj=1:K
    switch listindex(jj)								% ��ѡ�еġ�ѡ������š�	    <37>
        case 1
            											% �����κα�ʶ
        case 2										% ������ʱ���
            k95=min(find(y>0.95));k952=[(k95-1),k95];
            t95=interp1(y(k952),t(k952),0.95);				% ���Բ�ֵ��ȷ��0.95�ߵ�ʱ��
            line(zeta,t95,0.95,'marker','+','markeredgecolor','y','markersize',5);
        case 3										% ������ֵ��
            [ym,km]=max(y);							% ������ֵ
            if km<Nt & (ym-1)>0
            	 line(zeta,t(km),ym,'marker','.','markeredgecolor','k','markersize',5);
            end
        case 4										% ����ʱ���
            ii=max(find(abs(y-1)>0.05));
            if ii<Nt
                line(zeta,t(ii+1),y(ii+1),'Color','r','Marker','o','MarkerSize',4)
            end
    end
end
xlabel('{\zeta}')
ylabel('t')
zlabel('y')
alpha(0.7)										% ���������͸����
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
box on                                                  % ʹ�������
set(handles.boxon,'Enable','off','Checked','on')     	% �Box on���˵��ʧ�ܡ���ѡ��
set(handles.boxoff,'Enable','on','Checked','off')     	% �Box off���˵��ʹ�ܡ�δѡ��


% --------------------------------------------------------------------
function boxoff_Callback(hObject, eventdata, handles)
% hObject    handle to boxoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
box off                                			% ʹ����򲻷��
set(handles.boxoff,'Enable','off','Checked','on')    	% �Box off���˵��ʧ�ܡ���ѡ��
set(handles.boxon,'Enable','on','Checked','off')      	% �Box on���˵��ʹ�ܡ�δѡ��
