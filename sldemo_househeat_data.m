%   SLDEMO_HOUSEHEAT_DATA
%   This script runs in conjunction with the "sldemo_househeat"
%   house thermodynamics example. Note that time is given in units of hours

%   Copyright 1990-2012 The MathWorks, Inc.

% -------------------------------
% Problem constant
% -------------------------------
% converst radians to degrees
r2d = 180/pi;
% -------------------------------
% Define the house geometry
% -------------------------------
% House length = 30 m
lenHouse = 30;
% House width = 10 m
widHouse = 10;
% House height = 4 m
htHouse = 4;
% Roof pitch = 40 deg
pitRoof = 40/r2d;
% Number of windows = 6
numWindows = 6;
% Height of windows = 1 m
htWindows = 1;
% Width of windows = 1 m
widWindows = 1;
windowArea = numWindows*htWindows*widWindows;
wallArea = 2*lenHouse*htHouse + 2*widHouse*htHouse + ...
           2*(1/cos(pitRoof/2))*widHouse*lenHouse + ...
           tan(pitRoof)*widHouse - windowArea;
% -------------------------------
% Define the type of insulation used
% -------------------------------
% Glass wool in the walls, 0.2 m thick
% k is in units of J/sec/m/C - convert to J/hr/m/C multiplying by 3600
kWall = 0.038*3600;   % hour is the time unit
LWall = .2;
RWall = LWall/(kWall*wallArea);
% Glass windows, 0.01 m thick
kWindow = 0.78*3600;  % hour is the time unit
LWindow = .01;
RWindow = LWindow/(kWindow*windowArea);
% -------------------------------
% Determine the equivalent thermal resistance for the whole building
% -------------------------------
Req = RWall*RWindow/(RWall + RWindow);
% c = cp of air (273 K) = 1005.4 J/kg-K
c = 1005.4;
% -------------------------------
% Enter the temperature of the heated air
% -------------------------------
% The air exiting the heater has a constant temperature which is a heater
% property. THeater = 50 deg C
THeater = 60;
% Air flow rate Mdot = 1 kg/sec = 3600 kg/hr
Mdot = 3600;  % hour is the time unit
% -------------------------------
% Determine total internal air mass = M
% -------------------------------
% Density of air at sea level = 1.2250 kg/m^3
densAir = 1.2250;
M = (lenHouse*widHouse*htHouse+tan(pitRoof)*widHouse*lenHouse)*densAir;
% -------------------------------
% Enter the cost of electricity and initial internal temperature
% -------------------------------
% Assume the cost of electricity is $0.09 per kilowatt/hour
% Assume all electric energy is transformed to heat energy
% 1 kW-hr = 3.6e6 J
% cost = $0.09 per 3.6e6 J
cost = 0.09/3.6e6;
% TinIC = initial indoor temperature = 20 deg C
TinIC = 10;
