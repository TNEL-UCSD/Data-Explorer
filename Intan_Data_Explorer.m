function varargout = Intan_Data_Explorer(varargin)
% INTAN_DATA_EXPLORER MATLAB code for Intan_Data_Explorer.fig
%      INTAN_DATA_EXPLORER, by itself, creates a new INTAN_DATA_EXPLORER or raises the existing
%      singleton*.
%
%      H = INTAN_DATA_EXPLORER returns the handle to a new INTAN_DATA_EXPLORER or the handle to
%      the existing singleton*.
%
%      INTAN_DATA_EXPLORER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTAN_DATA_EXPLORER.M with the given input arguments.
%
%      INTAN_DATA_EXPLORER('Property','Value',...) creates a new INTAN_DATA_EXPLORER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Intan_Data_Explorer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Intan_Data_Explorer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Intan_Data_Explorer

% Last Modified by GUIDE v2.5 24-Jun-2014 13:59:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Intan_Data_Explorer_OpeningFcn, ...
    'gui_OutputFcn',  @Intan_Data_Explorer_OutputFcn, ...
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


% --- Executes just before Intan_Data_Explorer is made visible.
function Intan_Data_Explorer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Intan_Data_Explorer (see VARARGIN)

%get and set all sigs
D=get(handles.figure1,'UserData');
N=length(D.amplifier_channels);
sigs=cell(N+1,1);
field='custom_channel_name';
sigs(1)={'Signal 1'};
sigs(2:end)={D.amplifier_channels(:).(field)}; %all sigs
set(handles.sig1,'String',sigs); %set sig1
sigs(1)={'Signal 2'};
set(handles.sig2,'String',sigs); %set sig2


% Choose default command line output for Intan_Data_Explorer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Intan_Data_Explorer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Intan_Data_Explorer_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in sig1.
function sig1_Callback(hObject, eventdata, handles)
% hObject    handle to sig1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sig1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sig1



% --- Executes during object creation, after setting all properties.
function sig1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sig1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sig2.
function sig2_Callback(hObject, eventdata, handles)
% hObject    handle to sig2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sig2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sig2


% --- Executes during object creation, after setting all properties.
function sig2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sig2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function curFile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to curFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in plotA.
function plotA_Callback(hObject, eventdata, handles)
% hObject    handle to plotA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns plotA contents as cell array
%        contents{get(hObject,'Value')} returns selected item from plotA


contents = cellstr(get(hObject,'String'));
sel=contents{get(hObject,'Value')};

if strcmp(sel,'Raw Data')
    
elseif strcmp(sel,'Power Spectrum Density')
    
elseif strcmp(sel,'Spectogram')
    
elseif strcmp(sel,'Figure A')
    %do nothing
else
    errordlg('there is a bug');
end



% --- Executes during object creation, after setting all properties.
function plotA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plotA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in plotB.
function plotB_Callback(hObject, eventdata, handles)
% hObject    handle to plotB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns plotB contents as cell array
%        contents{get(hObject,'Value')} returns selected item from plotB


% --- Executes during object creation, after setting all properties.
function plotB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plotB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function UL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate UL


% --- Executes on button press in plotBut.
function plotBut_Callback(hObject, eventdata, handles)
% hObject    handle to plotBut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sig1=get(handles.sig1,'Value')-1;
sig2=get(handles.sig2,'Value')-1;
plotA=get(handles.plotA,'Value')-1;
plotB=get(handles.plotB,'Value')-1;

plotPanel('UL',sig1,plotA,hObject,eventdata,handles);
plotPanel('LL',sig2,plotA,hObject,eventdata,handles);
plotPanel('UR',sig1,plotB,hObject,eventdata,handles);
plotPanel('LR',sig2,plotB,hObject,eventdata,handles);


function plotPanel(pan,sig1,plotA,hObject,eventdata,handles)

D=get(handles.figure1,'UserData');

switch pan
    case 'UL'
        h=handles.UL;
    case 'LL'
        h=handles.LL;
    case 'UR'
        h=handles.UR;
    case 'LR'
        h=handles.LR;
end

if sig1>0 && plotA>0 
    
    %get data and set parameters
    t=D.t_amplifier;
    x=D.amplifier_data(sig1,:);
    window=70;
    noverlap=50;
    nfft=1000;
    Fs=D.frequency_parameters.amplifier_sample_rate;    
    
    %band pass signal
    if strcmp(pan(1),'U')
        s1low_str=get(handles.sig1lcf,'String');
        s1high_str=get(handles.sig1hcf,'String');
    else
        s1low_str=get(handles.sig2lcf,'String');
        s1high_str=get(handles.sig2hcf,'String');
    end
    
    if ~(strcmp(s1low_str,'S1 LCF') && strcmp(s1high_str,'S1 HCF'))
        %make sure they are valid numbers
        s1low=str2double(s1low_str);
        s1high=str2double(s1high_str);
        if ~(isnan(s1low) || isnan(s1high))
            x=bandPass(x,s1low,s1high,Fs);            
        end
    end

    %plot specified kind
    switch plotA
        case 1 %raw data
            g=plot(h,t,x);
        case 2 %psd
            params.Fs=Fs;
            try
            %[S,f]=mtspectrumc(x,params);
            [S,f]=pwelch(x,[],[],[],Fs);            
            g=semilogy(h,f,S);
        case 3 %specto                 
            [~,F,T,P]=spectrogram(x,kaiser(64),32,[],Fs);           
            g=surf(h,T,F,10*log10(abs(P)),'EdgeColor','none');
            axis(h,'tight');
            view(h,2)
    end
    
    
    %set grid
    if get(handles.gridChk,'Value')>0
        grid(h);
    end
    
    %set z-score
    if get(handles.zscoreFlag,'Value')>0
        tmp=get(h,'Children');
        z=zscore(get(tmp,'YData'));
        set(tmp,'YData',z);
    end
    
    %make sig2 line green
    if strcmp(pan(1),'L') %if sig2
        try
            set(g,'Color',[0 1 0]);
        catch
            ;
        end
    end
    
    %left click options
    hcmenu=uicontextmenu;
    get(gca)
    hcb1=['set(get(gca,''Children''), ''XData'', log10(get(get(gca,''Children''),''XData'')))'];
    hcb2=['set(get(gca,''Children''), ''YData'', log10(get(get(gca,''Children''),''YData'')))'];
    hcb3=['set(get(gca,''Children''), ''XData'', 10.^(get(get(gca,''Children''),''XData'')))'];
    hcb4=['set(get(gca,''Children''), ''YData'', 10.^(get(get(gca,''Children''),''YData'')))'];
    item1=uimenu(hcmenu, 'Label', 'log10(X-Axis)', 'Callback', hcb1);
    item2=uimenu(hcmenu, 'Label', 'log10(Y-Axis)', 'Callback', hcb2);
    item3=uimenu(hcmenu, 'Label', '10^(X-Axis)', 'Callback', hcb3);
    item4=uimenu(hcmenu, 'Label', '10^(Y-Axis)', 'Callback', hcb4);
    set(h,'UIContextMenu',hcmenu);
else
    %clear plot if Signal X or Plot X is specified
    cla(h);
end


% --- Executes on button press in gridChk.
function gridChk_Callback(hObject, eventdata, handles)
% hObject    handle to gridChk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gridChk


% --- Executes on mouse press over axes background.
function UL_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to UL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in zscoreFlag.
function zscoreFlag_Callback(hObject, eventdata, handles)
% hObject    handle to zscoreFlag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of zscoreFlag


function sig1lcf_Callback(hObject, eventdata, handles)
% hObject    handle to sig1lcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sig1lcf as text
%        str2double(get(hObject,'String')) returns contents of sig1lcf as a double


% --- Executes during object creation, after setting all properties.
function sig1lcf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sig1lcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sig2lcf_Callback(hObject, eventdata, handles)
% hObject    handle to sig2lcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sig2lcf as text
%        str2double(get(hObject,'String')) returns contents of sig2lcf as a double


% --- Executes during object creation, after setting all properties.
function sig2lcf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sig2lcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sig1hcf_Callback(hObject, eventdata, handles)
% hObject    handle to sig1hcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sig1hcf as text
%        str2double(get(hObject,'String')) returns contents of sig1hcf as a double


% --- Executes during object creation, after setting all properties.
function sig1hcf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sig1hcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sig2hcf_Callback(hObject, eventdata, handles)
% hObject    handle to sig2hcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sig2hcf as text
%        str2double(get(hObject,'String')) returns contents of sig2hcf as a double


% --- Executes during object creation, after setting all properties.
function sig2hcf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sig2hcf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
