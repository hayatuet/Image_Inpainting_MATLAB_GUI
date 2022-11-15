function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 01-Apr-2019 04:05:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;
axes(handles.axes1);
imshow('default.gif');
axes(handles.axes2);
imshow('default.gif');
set(handles.edit3,'Enable','off')
set(handles.edit4,'Enable','off')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb1.
function pb1_Callback(hObject, eventdata, handles)
% hObject    handle to pb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
% set(handles.pb1,'Enable','off')
[name, path] = uigetfile({'*.jpg;*.png;*.jpeg;*.tif','Image File (*.jpg,*.jpeg,*.png,*tif)';...
    '*.*','All Files (*.*)'});
img = im2double(imread([path, name]));
axes(handles.axes1);
imshow(img)
str = ['Size: ', num2str(size(img,1)), 'x', num2str(size(img,2))]
set(handles.text7, 'String', str);
drawnow;
setappdata(0, 'img_app', img);
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','black');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
value = get(handles.checkbox2, 'Value');
if value == 0
    set(handles.edit3,'Enable','off')
    set(handles.edit4,'Enable','off')
else
    set(handles.edit3,'Enable','on')
    set(handles.edit4,'Enable','on')
end

% --- Executes on button press in pb2.
function pb2_Callback(hObject, eventdata, handles)
% hObject    handle to pb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filter = {'*.jpg';'*.png'};
[file, path] = uiputfile(filter);
imwrite(getappdata(0,'newimg_app'), [path, file]);


% --- Executes on button press in pb3.
function pb3_Callback(hObject, eventdata, handles)
% hObject    handle to pb3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1, 'pointer', 'watch')
set(handles.pb3, 'Enable', 'off');
% your computation
set(handles.figure1, 'pointer', 'arrow')
img = getappdata(0, 'img_app');
deleteRegion = get(handles.checkbox1, 'Value');
resizeImg = get(handles.checkbox2, 'Value');


if deleteRegion == 1
    imginterp = img;
    axes(handles.axes1);
    mask = roipoly(img);
    mask = cat(size(img, 3),mask,mask,mask);
    idx  = find(mask==1);
    imginterp(idx) = NaN;
    for i=1:size(img,3)
        imginterp(:,:,i) = inpaint_nans(imginterp(:,:,i), 2);
    end
    axes(handles.axes2);
    imshow(imginterp)
    handles.text8.String = ['Size: ', num2str(size(img,1)), 'x', num2str(size(img,2))];
    img = imginterp;
    setappdata(0, 'newimg_app', img);
    
end

if resizeImg == 1
    [row, col, ~] = size(img);
    r = str2num(get(handles.edit3, 'String'));
    c = str2num(get(handles.edit4, 'String'));
    if isempty(r) || isempty(c) || c<0 || r<0
        beep;
        h = errordlg('Invalid Entry');
        htext = findobj(h, 'Type', 'Text');  %find text control in dialog
        htext.FontSize = 12;     %set fontsize to whatever you want
    end 
    
    % Row padding or removing
    if r<row
        diff = row - r;
        imginterp = img(floor(diff/2)+1:end-(diff-floor(diff/2)), :, :);
        img = imginterp;
        setappdata(0, 'newimg_app', img);
    elseif r>row
        diff = r - row;
        imginterp = padarray(img, [floor(diff/2) 0 0], NaN);
        imginterp = padarray(imginterp, [mod(diff,2) 0 0], NaN, 'pos');
        newimg = [];
        for i = 1:size(img, 3)
            newimg(:,:,i) = inpaint_nans(imginterp(:,:,i), 4);
            
        end
        imginterp = newimg;
        img = imginterp;
        setappdata(0, 'newimg_app', img);
    end
    
    % Column Padding or Removing
    if c<col
        newimg = [];
        diff = col - c;
        size(img)
        newimg = img(:, floor(diff/2)+1:end-(diff-floor(diff/2)), :);
        img = newimg;
        setappdata(0, 'newimg_app', img);
    elseif c>col
        imginterp = [];
        diff = c - col;
        newimg = padarray(img, [0 floor(diff/2) 0], NaN);
        newimg = padarray(newimg, [0 mod(diff,2) 0], NaN, 'pos');
        for i = 1:size(img, 3)
            imginterp(:,:,i) = inpaint_nans(newimg(:,:,i), 4);
        end
        img = imginterp;
        setappdata(0, 'newimg_app', img);
    end
    handles.text8.String = ['Size: ', num2str(size(img,1)), 'x', num2str(size(img,2))];
    axes(handles.axes2);
    imshow(img);
    setappdata(0, 'newimg_app', img);
    
end
if deleteRegion == 0 && resizeImg == 0
    beep;
    h = errordlg('No box checked');
    htext = findobj(h, 'Type', 'Text');  %find text control in dialog
    htext.FontSize = 12; 
end

set(handles.pb3, 'Enable', 'on');
set(handles.figure1, 'pointer', 'arrow')


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
