% modele_epidemiologiczne.m
%
% AGH Akademia Górniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% systemów biologicznych oraz ich symulacji w œrodowisku MATLAB
%
% Program okienkowy Modele epidemiologiczne
%---------------------------------------------------------------------

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

% Last Modified by GUIDE v2.5 29-Aug-2011 19:19:14

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
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

popup_item = get(hObject,'Value');

switch(popup_item)
    case 1
        set(handles.edit9, 'Enable', 'on');
        set(handles.edit6, 'Enable', 'off');
        set(handles.edit12, 'Enable', 'off'); 
        set(handles.edit11, 'Enable', 'on');
        set(handles.edit4, 'Enable', 'on');
        set(handles.edit5, 'Enable', 'on');             
    case 2
        set(handles.edit9, 'Enable', 'on');      
        set(handles.edit6, 'Enable', 'on');
        set(handles.edit12, 'Enable', 'off');   
        set(handles.edit11, 'Enable', 'off');
        set(handles.edit4, 'Enable', 'on');
        set(handles.edit5, 'Enable', 'off');            
    case 3
        set(handles.edit9, 'Enable', 'on');      
        set(handles.edit6, 'Enable', 'on');
        set(handles.edit12, 'Enable', 'on');   
        set(handles.edit11, 'Enable', 'off');
        set(handles.edit4, 'Enable', 'on');
        set(handles.edit5, 'Enable', 'off');           
    otherwise
end



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
    set(hObject,'BackgroundColor','white');
end



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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Symulacja danego modelu po naciœniêciu przycisku SYMULACJA
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Dane wejœciowe modelu:
t0 = str2num(get(handles.edit1, 'String'));     % czas pocz¹tkowy symulacji
tk = str2num(get(handles.edit2, 'String'));     % czas koncowy symulacji
h = str2num(get(handles.edit7, 'String'));      % krok ró¿niczkowania h (pocz¹tkowy)

I0_str = get(handles.edit9, 'String');          % proporcja osobników zainfekowanych w chwili t0
I0 = str2num(get(handles.edit9, 'String'));     

S0_str = get(handles.edit3, 'String');          % proporcja osobników podatnych w chwili t0
S0 = str2num(get(handles.edit3, 'String'));     

global alfa;
alfa_str = get(handles.edit11, 'String');       % wspó³czynnik narodzin
alfa = str2num(get(handles.edit11, 'String'));

global beta;
beta_str = get(handles.edit4, 'String');        % wspó³czynnik zaka¿eñ
beta = str2num(get(handles.edit4, 'String'));

global gamma;
gamma_str = get(handles.edit5, 'String');       % wspó³czynnik wyzdrowieñ
gamma = str2num(get(handles.edit5, 'String'));

global lambda;
lambda_str = get(handles.edit6, 'String');       % wspó³czynnik uodpornienia
lambda = str2num(get(handles.edit6, 'String'));

global alfa_utr_odpornosci;
alfa_utr_odpornosci_str = get(handles.edit12, 'String');       % wspó³czynnik utraty odpornoœci
alfa_utr_odpornosci = str2num(get(handles.edit12, 'String'));

popup_item_model = get(handles.popupmenu1, 'Value');
popup_item_method = get(handles.popupmenu2, 'Value');
suma = I0 + S0;

        
switch(popup_item_model)
    case 1 % SIS

        
        if((suma ~= 1) || (I0 <= 0) || (S0 <= 0))
            set(handles.text18, 'String', 'W modelu SIS suma proporcji osobników klasy podatnej i zainfekowanej musi wynosiæ 1. Ponadto S(t) > 0 oraz I(t) > 0.');            
        elseif((alfa < 0) || (beta < 0) || (gamma < 0))
            set(handles.text18, 'String', 'W modelu SIS wspó³czynniki: narodzin, zaka¿enia i wyzdrowienia musz¹ byæ wiêksze od zera.');                        
        else 
            set(handles.text18, 'String', '');
        
            axes(handles.axes1);
            
            switch(popup_item_method)
                case 1 % Dormand-Prince
                    % Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Bogacki-Sampire
                    [wektor_czasu, osobniki_zainfekowane] = ode23(@model_matematyczny_sis, [t0, tk], I0, h);
                
                case 2
                    % Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Dormand-Prince
                    [wektor_czasu, osobniki_zainfekowane] = ode45(@model_matematyczny_sis, [t0, tk], I0, h);
                otherwise
            end

            % Wyznaczenie liczby osobników podatnych
            osobniki_podatne = 1 - osobniki_zainfekowane;

            % Przebiegi liczby osobników zainfekowanych i podatnych 
            % w zale¿noœci od czasu
            hold off;
            plot(wektor_czasu, osobniki_podatne, 'r-');
            hold on
            plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 

            % Ustawienie legendy, tytu³u, opisów osi oraz
            % uwidocznienie siatki
            axis([t0 tk 0 1 ]);
            legend('Osobniki podatne', 'Osobniki zainfekowane');
            title(['Model epidemii SIS (S_0 = ', S0_str , ', I_0 = ', I0_str, ', \delta = ' num2str(beta / (alfa + gamma)), ')']);
            xlabel('Czas');
            ylabel('Proporcja populacji');
            grid on
            hold off;
            guidata(hObject, handles);
        end
        
    %%---------------------------------------------------------------------    
    case 2 % SIR   
        
        if((suma > 1) || (I0 <= 0) || (S0 <= 0))
            set(handles.text18, 'String', 'W modelu SIR suma proporcji osobników klasy podatnej i zainfekowanej musi byæ mniejsza b¹dŸ równa 1. Ponadto S(t) > 0 oraz I(t) > 0.');            
        elseif((beta < 0) || (lambda < 0))
            set(handles.text18, 'String', 'W modelu SIR wspó³czynniki: zaka¿enia i uodpornienia musz¹ byæ wiêksze od zera.');                        
        else
            set(handles.text18, 'String', '');

            if(suma < 1)
                R0_str = num2str(1 - S0 - I0);
            else
                R0_str = num2str(0);
            end
            
            
            axes(handles.axes1);
            
            switch(popup_item_method)
                case 1 % Dormand-Prince
                    % Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Bogacki-Sampire
                    [wektor_czasu, rezultat] = ode23(@model_matematyczny_sir, [t0, tk], [S0, I0], h);
                
                case 2
                    % Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Dormand-Prince
                    [wektor_czasu, rezultat] = ode45(@model_matematyczny_sir, [t0, tk], [S0, I0], h);
                otherwise
            end

            % wyznaczenie proporcji osobnikow podatnych, zainfekowanych i uodpornionych
            osobniki_podatne = rezultat(:, 1);
            osobniki_zainfekowane = rezultat(:, 2);
            osobniki_uodpornione = 1 - rezultat(:, 1) - rezultat(:, 2);

            % Przebiegi liczby osobników zainfekowanych i podatnych 
            % w zale¿noœci od czasu
            hold off;
            plot(wektor_czasu, osobniki_podatne, 'r-');
            hold on
            plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
            plot(wektor_czasu, osobniki_uodpornione, 'g-'); 

            % Ustawienie legendy, tytu³u, opisów osi oraz
            % uwidocznienie siatki
            axis([t0 tk 0 1 ]);
            legend('Osobniki podatne', 'Osobniki zainfekowane', 'Osobniki uodpornione');
            title(['Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('Czas');
            ylabel('Proporcja populacji');
            grid on
            hold off;
            guidata(hObject, handles);            
        end
        
    %%---------------------------------------------------------------------        
    case 3 % SIRS
        
        if((suma > 1) || (I0 <= 0) || (S0 <= 0))
            set(handles.text18, 'String', 'W modelu SIRS suma proporcji osobników klasy podatnej i zainfekowanej musi byæ mniejsza b¹dŸ równa 1. Ponadto S(t) > 0 oraz I(t) > 0.');            
        elseif((beta < 0) || (lambda < 0) || (alfa_utr_odpornosci < 0))
            set(handles.text18, 'String', 'W modelu SIRS wspó³czynniki: zaka¿enia, uodpornienia i utraty odpornoœci musz¹ byæ wiêksze od zera.');                        
        else
            set(handles.text18, 'String', '');

            if(suma < 1)
                R0 = 1 - S0 - I0;
            else
                R0 = 0;
            end
            R0_str = num2str(R0);
            
            axes(handles.axes1);
            
            switch(popup_item_method)
                case 1 % Dormand-Prince
                    % Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Bogacki-Sampire
                    [wektor_czasu, rezultat] = ode23(@model_matematyczny_sirs, [t0, tk], [S0, I0, R0], h);
                
                case 2
                    % Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Dormand-Prince
                    [wektor_czasu, rezultat] = ode45(@model_matematyczny_sirs, [t0, tk], [S0, I0, R0], h);

                otherwise
            end

            % wyznaczenie proporcji osobnikow podatnych, zainfekowanych i uodpornionych
            osobniki_podatne = rezultat(:, 1);
            osobniki_zainfekowane = rezultat(:, 2);
            osobniki_uodpornione = rezultat(:, 3);

            % Przebiegi liczby osobników zainfekowanych i podatnych 
            % w zale¿noœci od czasu
            hold off;
            plot(wektor_czasu, osobniki_podatne, 'r-');
            hold on
            plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
            plot(wektor_czasu, osobniki_uodpornione, 'g-'); 

            % Ustawienie legendy, tytu³u, opisów osi oraz
            % uwidocznienie siatki
            axis([t0 tk 0 1 ]);
            legend('Osobniki podatne', 'Osobniki zainfekowane', 'Osobniki uodpornione');
            title(['Model epidemii SIR (S_0 = ', S0_str , ', I_0 = ', I0_str, ', R_0 = ', R0_str, ', \delta = ' num2str(beta / lambda), ')']);
            xlabel('Czas');
            ylabel('Proporcja populacji');
            grid on
            hold off;
            guidata(hObject, handles);                             
        end
        
    otherwise
end


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% model_matematyczny_sis.m
% Równanie modelu SIS - osobniki zainfekowane
function [I] = model_matematyczny_sis(t, arg) % przebieg I dla modelu SIS

global alfa;           % wspó³czynnik œmiertelnoœci
global beta;           % wspó³czynnik zaka¿eñ
global gamma;          % wspó³czynnik wyzdrowieñ
        
I = -beta*arg^2 + (beta - (alfa + gamma))*arg; % równanie


%% model_matematyczny_sir.m
% Równania modelu SIR - osobniki podatne i zainfekowane
function [rezultat] = model_matematyczny_sir(t, arg) % przebieg I oraz S dla modelu SIR

global beta;           % wspó³czynnik zaka¿eñ
global lambda;         % wspó³czynnik (uodpornieñ) wyzdrowieñ

rezultat(1) = -beta*arg(1)*arg(2);                % równanie S
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2); % równanie I
rezultat = rezultat';


%% model_matematyczny_sirs.m
% Równania modelu SIRS - osobniki podatne, zainfekowane i uodpornione
function [rezultat] = model_matematyczny_sirs(t, arg) % przebieg I, S oraz R dla modelu SIRS

global alfa_utr_odpornosci;           % wspó³czynnik utraty podatnoœci
global beta;           % wspó³czynnik zaka¿eñ
global lambda;         % wspó³czynnik (uodpornieñ) wyzdrowieñ

rezultat(1) = -beta*arg(1)*arg(2) + alfa_utr_odpornosci*arg(3);   % równanie S
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2);  % równanie I
rezultat(3) = lambda*arg(2) - alfa_utr_odpornosci*arg(3);         % równanie R
rezultat = rezultat';
