%Constantes del problema

%%  === Carga Mecanica ===
b_l = 0.1;  %===> %Coeficiente de friccion viscosa en articulacion (0.1 +/- 0.03) incertidumbre [(N*m)/(rad/s)]
g = 9.80665; %Aceleracion de gravedad [m/s^2]
m = 1;  %Masa del brazo manipulador [kg]
l_cm = 0.25;    %Longitud equivalente del centro de masa [m]
j_cm = 0.0208;  %Inercia equivalente del centro de masa [kg*m^2]
l_l = 0.5;  %Longitud total (extremo)
m_l = 1.5;  %===> Masa de carga útil en el extremo (variable de 0 a 1.5) [kg]
j_l = (m*l_cm^2 + j_cm) + m_l*l_l^2;    %Momento de inercia total (a eje de rotacion) [kg*m^2]
k_l = m*g*l_cm + m_l*g*l_l; %Coeficiente de torque recuperador gravitacional
Tp = 5; %===> Torque de perturbacion externo (funcion escalon de 0 +/- 5) [N*m]

%%  === Tren de Transmisión ===

r = 120;    %Relacion de trnasmision
n_l_nom = 60; %Velocidad nominal (salida) [rpm]
w_l_nom = 6.28; %Velocidad nominal (salida) [rad/s]
Tq_nom = 17;    %Torque nominal (salida) [N*m] (regimen continuo o rms)
Tq_max = 45;    %Torque pico (salida) [N*m] (corta duración, aceleración)

%Modelo equivalente (rígido)
%w_l = (1/r)*w_m
