function varargout = modele_epidemiologiczne(varargin)
% MODELE_EPIDEMIOLOGICZNE M-file for modele_epidemiologiczne.fig
%      MODELE_EPIDEMIOLOGICZNE, by itself, creates a new MODELE_EPIDEMIOLOGICZNE or raises the existing
%      singleton*.
%
%      H = MODELE_EPIDEMIOLOGICZNE returns the handle to a new MODELE_EPIDEMIOLOGICZNE or the handle to
%      the existing singleton*.
%
%      MODELE_EPIDEMIOLOGICZNE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODELE_EPIDEMIOLOGICZNE.M with the given input arguments.
%
%      MODELE_EPIDEMIOLOGICZNE('Property','Value',...) creates a new MODELE_EPIDEMIOLOGICZNE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before modele_epidemiologiczne_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to modele_epidemiologiczne_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help modele_epidemiologiczne

% Last Modified by GUIDE v2.5 12-Jun-2014 15:32:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @modele_epidemiologiczne_OpeningFcn, ...
                   'gui_OutputFcn',  @modele_epidemiologiczne_OutputFcn, ...
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


% --- Executes just before modele_epidemiologiczne is made visible.
function modele_epidemiologiczne_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to modele_epidemiologiczne (see VARARGIN)

% Choose default command line output for modele_epidemiologiczne
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes modele_epidemiologiczne wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = modele_epidemiologiczne_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function popupmenu2_Callback(hObject, eventdata, handles)
popup_item = get(hObject,'Value');

switch(popup_item)
    case 1
        set(handles.edit2, 'Enable', 'on');
    case 2
        set(handles.edit2, 'Enable', 'off');
end

function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu3_Callback(hObject, eventdata, handles)
popup_item = get(hObject,'Value');

switch(popup_item)
    case 1
        set(handles.edit2, 'Enable', 'on');
    case 2
        set(handles.edit2, 'Enable', 'off');
    case 3
        set(handles.edit2, 'Enable', 'off');
    case 4
        set(handles.edit2, 'Enable', 'off');
    case 5
        set(handles.edit2, 'Enable', 'off');
    case 6
        set(handles.edit2, 'Enable', 'off');
    case 7
        set(handles.edit2, 'Enable', 'off');
end

function popupmenu3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function popupmenu4_Callback(hObject, eventdata, handles)
popup_item = get(hObject,'Value');

switch(popup_item)
    case 1
        set(handles.edit2, 'Enable', 'on');
    case 2
        set(handles.edit2, 'Enable', 'off');
    case 3
        set(handles.edit2, 'Enable', 'off');
    case 4
        set(handles.edit2, 'Enable', 'off');
    case 5
        set(handles.edit2, 'Enable', 'off');
    case 6
        set(handles.edit2, 'Enable', 'off');
    case 7
        set(handles.edit2, 'Enable', 'off');        
    case 8
        set(handles.edit2, 'Enable', 'off');        
    case 9
        set(handles.edit2, 'Enable', 'off');        
    case 10
        set(handles.edit2, 'Enable', 'off');
    case 11
        set(handles.edit2, 'Enable', 'off');
    case 12
        set(handles.edit2, 'Enable', 'off');
    case 13
        set(handles.edit2, 'Enable', 'off');
end

function popupmenu4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
popup_item = get(hObject,'Value');

switch(popup_item)
    case 1 %SI
        set(handles.edit1, 'Enable', 'off');
        set(handles.edit2, 'Enable', 'on');
        set(handles.edit4, 'Enable', 'off');
        set(handles.edit5, 'Enable', 'on');
        set(handles.edit7, 'Enable', 'on');
        set(handles.edit8, 'Enable', 'off');
        set(handles.edit9, 'Enable', 'off');
        set(handles.popupmenu2, 'Enable', 'on');
        set(handles.popupmenu3, 'Enable', 'off');
        set(handles.popupmenu4, 'Enable', 'off');        
    case 2 %SIR
        set(handles.edit1, 'Enable', 'off');
        set(handles.edit2, 'Enable', 'on');
        set(handles.edit4, 'Enable', 'on');
        set(handles.edit5, 'Enable', 'off');
        set(handles.edit7, 'Enable', 'off');
        set(handles.edit8, 'Enable', 'on');
        set(handles.edit9, 'Enable', 'off');
        set(handles.popupmenu2, 'Enable', 'off');
        set(handles.popupmenu3, 'Enable', 'on');
        set(handles.popupmenu4, 'Enable', 'off');
        
    case 3 %SEIR
        set(handles.edit1, 'Enable', 'on');
        set(handles.edit2, 'Enable', 'on');
        set(handles.edit4, 'Enable', 'on');
        set(handles.edit5, 'Enable', 'off');
        set(handles.edit7, 'Enable', 'off');
        set(handles.edit8, 'Enable', 'on');
        set(handles.edit9, 'Enable', 'on');  
        set(handles.popupmenu2, 'Enable', 'off');
        set(handles.popupmenu3, 'Enable', 'off');
        set(handles.popupmenu4, 'Enable', 'on');        
    otherwise
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit5_Callback(hObject, eventdata, handles)
function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)
function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)
function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit8_Callback(hObject, eventdata, handles)
function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit9_Callback(hObject, eventdata, handles)
function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit10_Callback(hObject, eventdata, handles)
function edit10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)

function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)

function pushbutton1_Callback(hObject, eventdata, handles)
% Dane wejœciowe modelu:
t_str = get(handles.edit2, 'String');  
t = str2num(get(handles.edit2, 'String'));     % czas symulacji
assignin('base', 't', t);

I0_str = get(handles.edit3, 'String');          % proporcja osobników podatnych w chwili t0
I0 = str2num(get(handles.edit3, 'String'));
assignin('base', 'I0', I0);

alfa_str = get(handles.edit5, 'String');       % wspó³czynnik narodzin alfa
alfa = str2num(get(handles.edit5, 'String'));
assignin('base', 'alfa', alfa);

beta_str = get(handles.edit6, 'String');        % wspó³czynnik zaka¿eñ beta
beta = str2num(get(handles.edit6, 'String'));
assignin('base', 'beta', beta);

gamma_str = get(handles.edit7, 'String');       % wspó³czynnik wyzdrowieñ gamma 
gamma = str2num(get(handles.edit7, 'String'));
assignin('base', 'gamma', gamma);

lambda_str = get(handles.edit8, 'String');       % wspó³czynnik uodpornieñ lambda
lambda = str2num(get(handles.edit8, 'String'));
assignin('base', 'lambda', lambda);

epsilon_str = get(handles.edit9, 'String');       % wspó³czynnik zaka¿enia od utajonych
epsilon = str2num(get(handles.edit9, 'String'));
assignin('base', 'epsilon', epsilon);

popup_item_model = get(handles.popupmenu1, 'Value');
        
switch(popup_item_model)
    case 1 % SI
        popup_item_wykres = get(handles.popupmenu2, 'Value');
        S0 = 1 - I0;
        S0_str = num2str(S0);
        if(I0 <= 0)
            set(handles.text18, 'String', 'W modelu SI suma proporcji osobników klasy podatnej i zainfekowanej musi wynosiæ 1. Ponadto S(t) > 0 oraz I(t) > 0.');            
        elseif((alfa < 0) || (beta < 0) || (gamma < 0))
            set(handles.text18, 'String', 'W modelu SI wspó³czynniki: narodzin, zaka¿eñ i wyzdrowieñ musz¹ byæ wiêksze od zera.');                        
        else 
            set(handles.text18, 'String', '');            
            
            axes(handles.axes1);
            sim SImple
    switch(popup_item_wykres)
        case 1 %S,I(t)
            hold off;
            plot(tout, S, 'r-');
            hold on;
            plot(tout, I, 'b-');
            legend('Osobniki podatne', 'Osobniki zainfekowane');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Czas');
            ylabel('\bf Proporcja populacji');
            grid on
            hold off;
            guidata(hObject, handles);            
        case 2 %S(I)  
            hold off;
            plot(I, S, 'r-');
            title(['\bf Model epidemii SI (S_0 = ', S0_str , ', I_0 = ', I0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki zainfekowane I');
            ylabel('\bf Osobniki podatne S');
            grid on
            hold off;
            guidata(hObject, handles);            
        case 3 %I(S)
            hold off;
            plot(S, I, 'b-');
            title(['\bf Model epidemii SI (S_0 = ', S0_str , ', I_0 = ', I0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki podatne S');
            ylabel('\bf Osobniki zainfekowane I');
            grid on
            hold off;
            guidata(hObject, handles);
                   
    end
        end       
        
    %%---------------------------------------------------------------------    
    case 2 % SIR
        popup_item_wykres = get(handles.popupmenu3, 'Value');
        S0_str = get(handles.edit4, 'String');          
        S0 = str2num(get(handles.edit4, 'String'));  
        assignin('base', 'S0', S0);
        
        suma = I0+S0;
        if((suma > 1) || (I0 < 0) || (S0 < 0))
            set(handles.text18, 'String', 'W modelu SIR suma proporcji osobników klasy podatnej i zainfekowanej musi byæ mniejsza b¹dŸ równa 1. Ponadto S(t) > 0 oraz I(t) > 0.');            
        elseif((beta < 0) || (lambda < 0))
            set(handles.text18, 'String', 'W modelu SIR wspó³czynniki: zaka¿enia i uodpornienia musz¹ byæ wiêksze od zera.');                        
        else
            set(handles.text18, 'String', '');  
             
            if(suma < 1)
                R0 = 1 - S0 - I0;
                R0_str = num2str(1 - S0 - I0);
            else
                R0 = 0;
                R0_str = num2str(0);
            end
            assignin('base', 'R0', R0);
                        
            axes(handles.axes1);
           
            sim SIRek
    switch(popup_item_wykres)
        case 1
            hold off;
            plot(tout, S, 'r-'); hold on;
            plot(tout, I, 'b-'); hold on;
            plot(tout, R, 'g-'); hold on;
            legend('Osobniki podatne', 'Osobniki zainfekowane', 'Osobniki uodpornione');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Czas');
            ylabel('\bf Proporcja populacji');
            grid on
            hold off;
            guidata(hObject, handles);    
        case 2 %S(I)
            hold off;
            plot(I, S, 'b-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki zainfekowane I');
            ylabel('\bf Osobniki podatne S');
            grid on
            hold off;
            guidata(hObject, handles);
        case 3 %I(S)
            hold off;
            plot(S, I, 'r-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki podatne S');
            ylabel('\bf Osobniki zainfekowane I');
            grid on
            hold off;
            guidata(hObject, handles);           
        case 4 %S(R)
            hold off;
            plot(R, S, 'g-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki uodpornione R');
            ylabel('\bf Osobniki podatne S');
            grid on
            hold off;
            guidata(hObject, handles);          
        case 5 %R(S)
            hold off;
            plot(S, R, 'r-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki podatne S');
            ylabel('\bf Osobniki uodpornione R');
            grid on
            hold off;
            guidata(hObject, handles);
        case 6 %I(R)
            hold off;
            plot(R, I, 'g-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki uodpornione I');
            xlabel('\bf Osobniki zainfekowane R');
            grid on
            hold off;
            guidata(hObject, handles);    
        case 7 %R(I)
            hold off;
            plot(I, R, 'b-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki uodpornione R');
            xlabel('\bf Osobniki zainfekowane I');
            grid on
            hold off;
            guidata(hObject, handles);                  
    end
        end 
        
    %%---------------------------------------------------------------------        
    case 3 % SEIR
        popup_item_wykres = get(handles.popupmenu4, 'Value');
        S0_str = get(handles.edit4, 'String');          
        S0 = str2num(get(handles.edit4, 'String'));  
        assignin('base', 'S0', S0);
        
        R0_str = get(handles.edit1, 'String');          
        R0 = str2num(get(handles.edit1, 'String'));  
        assignin('base', 'R0', R0);
        
        suma = I0+S0+R0;
        
        if((suma > 1) || (I0 < 0) || (S0 < 0) || (R0 < 0))
            set(handles.text18, 'String', 'W modelu SEIR suma proporcji osobników klasy podatnej i zainfekowanej musi byæ mniejsza b¹dŸ równa 1. Ponadto S(t) > 0 oraz I(t) > 0.');            
        elseif((beta < 0) || (lambda < 0) || (epsilon < 0))
            set(handles.text18, 'String', 'W modelu SEIR wspó³czynniki: zaka¿enia, uodpornienia i utraty odpornoœci musz¹ byæ wiêksze od zera.');                        
        else
            set(handles.text18, 'String', '');

            if(suma < 1)
                E0 = 1 - S0 - I0 - R0;
            else
                E0 = 0;
            end
            E0_str = num2str(E0);
            assignin('base', 'E0', E0);
            
            axes(handles.axes1);
            
            sim SIERek
    switch(popup_item_wykres)
        case 1 %S,I,E,R(t)
            hold off;
            plot(tout, S, 'r-'); hold on;
            plot(tout, E, 'm-'); hold on;
            plot(tout, I, 'b-'); hold on;
            plot(tout, R, 'g-'); hold on;
            legend('Osobniki podatne', 'Osobniki w stadium utajonym', 'Osobniki zainfekowane', 'Osobniki uodpornione');
            title(['\bf Model epidemii SI (S_0 = ', S0_str ,',E_0 = ', E0_str, ', I_0 = ', I0_str, ',R_0 = ', R0_str,', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Czas');
            ylabel('\bf Proporcja populacji');
            grid on
            hold off;
            guidata(hObject, handles);
        case 2 %S(I)
            hold off;
            plot(I, S, 'r-');
            title(['\bf Model epidemii SI (S_0 = ', S0_str ,',E_0 = ', E0_str, ', I_0 = ', I0_str, ',R_0 = ', R0_str,', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki podatne S');
            xlabel('\bf Osobniki zainfekowane I');
            grid on
            hold off;
            guidata(hObject, handles);
        case 3 %S(E)
            hold off;
            plot(E, S, 'r-');
            title(['\bf Model epidemii SI (S_0 = ', S0_str ,',E_0 = ', E0_str, ', I_0 = ', I0_str, ',R_0 = ', R0_str,', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki podatne S');
            xlabel('\bf Osobniki w stadium utajonym E');
            grid on
            hold off;
            guidata(hObject, handles);
        case 4 %S(R)
            hold off;
            plot(R, S, 'r-');
            title(['\bf Model epidemii SI (S_0 = ', S0_str ,',E_0 = ', E0_str, ', I_0 = ', I0_str, ',R_0 = ', R0_str,', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki podatne S');
            xlabel('\bf Osobniki uodpornione R');
            grid on
            hold off;
            guidata(hObject, handles);
        case 5 %I(S)
            hold off;
            plot(S, I, 'b-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki zainfekowane I');
            xlabel('\bf Osobniki podatne S');
            grid on
            hold off;
            guidata(hObject, handles);
        case 6 %I(E)
            hold off;
            plot(E, I, 'b-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki zainfekowane I');
            xlabel('\bf Osobniki w stadium utajonym E');
            grid on
            hold off;
            guidata(hObject, handles);
        case 7 %I(R)
            hold off;
            plot(R, I, 'b-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki zainfekowane I');
            xlabel('\bf Osobniki uodpornione R');            
            grid on
            hold off;
            guidata(hObject, handles);
        case 8 %E(S)
            hold off;
            plot(S, E, 'm-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki podatne S');    
            ylabel('\bf Osobniki w stadium utajonym E');             
            grid on
            hold off;
            guidata(hObject, handles);
        case 9 %E(I)
            hold off;
            plot(I, E, 'm-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki zainfekowane I');
            ylabel('\bf Osobniki w stadium utajonym E');          
            grid on
            hold off;
            guidata(hObject, handles);
        case 10 %E(R)
            hold off;
            plot(R, E, 'm-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki uodpornione R');
            ylabel('\bf Osobniki w stadium utajonym E');          
            grid on
            hold off;
            guidata(hObject, handles);           
        case 11 %R(S)
            hold off;
            plot(S, R, 'g-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki podatne S');
            ylabel('\bf Osobniki uodpornione R');            
            grid on
            hold off;
            guidata(hObject, handles);
        case 12 %R(I)
            hold off;
            plot(I, R, 'g-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('\bf Osobniki zainfekowane I');
            ylabel('\bf Osobniki uodpornione R');            
            grid on
            hold off;
            guidata(hObject, handles);
        case 13 %R(E)
            hold off;
            plot(E, R, 'g-');
            title(['\bf Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            ylabel('\bf Osobniki uodpornione R');
            xlabel('\bf Osobniki w stadium utajonym E');            
            grid on
            hold off;
            guidata(hObject, handles);
    end     
        end
        
    otherwise
end
