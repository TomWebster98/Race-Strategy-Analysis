%% Define Race Duration

lap_number = 1:57;

%% Read reference time deltas from csv

Miami_2024_Gapper_RefTime = readtable("Strategy_Gapper_Miami_24_RefTime.csv");

%% Generate reference time deltas for each driver

VER_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"RBR1"};
PER_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"RBR2"};
LEC_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"SF1"};
SAI_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"SF2"};
HAM_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"M_AMG1"};
RUS_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"M_AMG2"};
ALO_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"AMR1"};
STR_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"AMR2"};
NOR_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"MCL1"};
PIA_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"MCL2"};
OCO_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"ALP1"};
GAS_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"ALP2"};
TSU_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"ATO1"};
RIC_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"ATO2"};
ALB_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"WIL1"};
SAR_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"WIL2"};
MAG_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"HAS1"};
HUL_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"HAS2"};
BOT_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"SAUB1"};
ZHO_Delta_Ref = Miami_2024_Gapper_RefTime{2:58,"SAUB2"};

%% Plotting relative to a reference time instead of winning driver

figure(1)
plot(lap_number, VER_Delta_Ref,"Color","#0072BD","LineWidth",1)
hold on
plot(lap_number, PER_Delta_Ref,"Color","#0072BD","LineStyle","--","LineWidth",1)
plot(lap_number, LEC_Delta_Ref,"Color","#FF0000","LineWidth",1)
plot(lap_number, SAI_Delta_Ref,"Color","#FF0000","LineStyle","--","LineWidth",1)
plot(lap_number, HAM_Delta_Ref,"Color","#000000","LineWidth",1)
plot(lap_number, RUS_Delta_Ref,"Color","#000000","LineStyle","--","LineWidth",1)
plot(lap_number, ALO_Delta_Ref,"Color","#77AC30","LineWidth",1)
plot(lap_number, STR_Delta_Ref,"Color","#77AC30","LineStyle","--","LineWidth",1)
plot(lap_number, NOR_Delta_Ref,"Color","#EDB120","LineWidth",1)
plot(lap_number, PIA_Delta_Ref,"Color","#EDB120","LineStyle","--","LineWidth",1)
plot(lap_number, OCO_Delta_Ref,"Color","#FF00FF","LineWidth",1)
plot(lap_number, GAS_Delta_Ref,"Color","#FF00FF","LineStyle","--","LineWidth",1)
plot(lap_number, TSU_Delta_Ref,"Color","#7E2F8E","LineWidth",1)
plot(lap_number, RIC_Delta_Ref,"Color","#7E2F8E","LineStyle","--","LineWidth",1)
plot(lap_number, ALB_Delta_Ref,"Color","#4DBEEE","LineWidth",1)
plot(lap_number, SAR_Delta_Ref,"Color","#4DBEEE","LineStyle","--","LineWidth",1)
plot(lap_number, MAG_Delta_Ref,"Color","#6e6060","LineWidth",1)
plot(lap_number, HUL_Delta_Ref,"Color","#6e6060","LineStyle","--","LineWidth",1)
plot(lap_number, BOT_Delta_Ref,"Color","#00FF00","LineWidth",1)
plot(lap_number, ZHO_Delta_Ref,"Color","#00FF00","LineStyle","--","LineWidth",1)
yline(0)
hold off

title("Miami 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to Leader Average Lap-Time")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,57])
%ylim([-41, 200])
%yticks([-40,-20,0,20,40,60,80,100,120,140,160,180,200])
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

%% Plot Only The Top 6

figure(2)
plot(lap_number, VER_Delta_Ref,"Color","#0072BD","LineWidth",1)
hold on
plot(lap_number, PER_Delta_Ref,"Color","#0072BD","LineStyle","--","LineWidth",1)
plot(lap_number, LEC_Delta_Ref,"Color","#FF0000","LineWidth",1)
plot(lap_number, SAI_Delta_Ref,"Color","#FF0000","LineStyle","--","LineWidth",1)
plot(lap_number, NOR_Delta_Ref,"Color","#EDB120","LineWidth",1)
plot(lap_number, PIA_Delta_Ref,"Color","#EDB120","LineStyle","--","LineWidth",1)
yline(0)
hold off

title("Miami 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to Leader Average Lap-Time")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,57])
%ylim([-41, 200])
%yticks([-40,-20,0,20,40,60,80,100,120,140,160,180,200])
legend(["VER", "PER", "LEC", "SAI", "NOR", "PIA"],"Location","southwest");

% VSC on Lap 23
% SC on Lap 28-32

%% Calculate Pace Delta - Norris to Verstappen

Nor_Grad = gradient(NOR_Delta_Ref);
Ver_Grad = gradient(VER_Delta_Ref);

Pace_Delta_NORtoVER = Nor_Grad - Ver_Grad;

figure(3)
bar(Pace_Delta_NORtoVER)
xlabel("Lap Number")
ylabel("Pace Delta to Previous Lap")
title("Pace Delta between Norris and Verstappen")
grid on
xlim([32,57])
hold on
yline(-0.328,"r--",LineWidth=1)
yline(-0.655,LineStyle="--",Color="#7E2F8E",LineWidth=1)
hold off

%% Calculate Pace Delta - Norris to Verstappen

Ver_Times = Miami_2024_Gapper_RefTime{1:57,"MV_Laptime_s"};
Nor_Times = Miami_2024_Gapper_RefTime{1:57,"LN_Laptime_s"};

Laptime_Delta_NOR2VER = Nor_Times - Ver_Times;

figure(4)
bar(Laptime_Delta_NOR2VER)
xlabel("Lap Number")
ylabel("Lap-Time Delta")
title("Pace Delta Norris to Verstappen")
grid on
xlim([33,57])
hold on
yline(-0.328,"r--",LineWidth=1)
yline(-0.655,LineStyle="--",Color="#7E2F8E",LineWidth=1)
hold off
