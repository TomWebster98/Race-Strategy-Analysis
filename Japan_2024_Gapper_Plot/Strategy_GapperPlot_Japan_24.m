%% Read CSV Data

Japan_2024_Gapper = readtable("Strategy_Gapper_Japan_24.csv");

%% Create Arrays of time delta to Race Winner

lap_number = 1:53;

VER_Delta = Japan_2024_Gapper{2:54,"RBR1"};
PER_Delta = Japan_2024_Gapper{2:54,"RBR2"};
LEC_Delta = Japan_2024_Gapper{2:54,"SF1"};
SAI_Delta = Japan_2024_Gapper{2:54,"SF2"};
HAM_Delta = Japan_2024_Gapper{2:54,"M_AMG1"};
RUS_Delta = Japan_2024_Gapper{2:54,"M_AMG2"};
ALO_Delta = Japan_2024_Gapper{2:54,"AMR1"};
STR_Delta = Japan_2024_Gapper{2:54,"AMR2"};
NOR_Delta = Japan_2024_Gapper{2:54,"MCL1"};
PIA_Delta = Japan_2024_Gapper{2:54,"MCL2"};
OCO_Delta = Japan_2024_Gapper{2:54,"ALP1"};
GAS_Delta = Japan_2024_Gapper{2:54,"ALP2"};
TSU_Delta = Japan_2024_Gapper{2:54,"ATO1"};
RIC_Delta = ones(53,1).* NaN; %Japan_2024_Gapper{2:54,"ATO2"};
ALB_Delta = ones(53,1).* NaN; %Japan_2024_Gapper{2:54,"WIL1"};
SAR_Delta = Japan_2024_Gapper{2:54,"WIL2"};
MAG_Delta = Japan_2024_Gapper{2:54,"HAS1"};
HUL_Delta = Japan_2024_Gapper{2:54,"HAS2"};
BOT_Delta = Japan_2024_Gapper{2:54,"SAUB1"};
ZHO_Delta = Japan_2024_Gapper{2:54,"SAUB2"};

%% Plot time deltas

figure(1)
plot(lap_number, VER_Delta,"Color","#0072BD","LineWidth",1)
hold on
plot(lap_number, PER_Delta,"Color","#0072BD","LineStyle","--","LineWidth",1)
plot(lap_number, LEC_Delta,"Color","#FF0000","LineWidth",1)
plot(lap_number, SAI_Delta,"Color","#FF0000","LineStyle","--","LineWidth",1)
plot(lap_number, HAM_Delta,"Color","#000000","LineWidth",1)
plot(lap_number, RUS_Delta,"Color","#000000","LineStyle","--","LineWidth",1)
plot(lap_number, ALO_Delta,"Color","#77AC30","LineWidth",1)
plot(lap_number, STR_Delta,"Color","#77AC30","LineStyle","--","LineWidth",1)
plot(lap_number, NOR_Delta,"Color","#EDB120","LineWidth",1)
plot(lap_number, PIA_Delta,"Color","#EDB120","LineStyle","--","LineWidth",1)
plot(lap_number, OCO_Delta,"Color","#FF00FF","LineWidth",1)
plot(lap_number, GAS_Delta,"Color","#FF00FF","LineStyle","--","LineWidth",1)
plot(lap_number, TSU_Delta,"Color","#7E2F8E","LineWidth",1)
plot(lap_number, RIC_Delta,"Color","#7E2F8E","LineStyle","--","LineWidth",1)
plot(lap_number, ALB_Delta,"Color","#4DBEEE","LineWidth",1)
plot(lap_number, SAR_Delta,"Color","#4DBEEE","LineStyle","--","LineWidth",1)
plot(lap_number, MAG_Delta,"Color","#6e6060","LineWidth",1)
plot(lap_number, HUL_Delta,"Color","#6e6060","LineStyle","--","LineWidth",1)
plot(lap_number, BOT_Delta,"Color","#00FF00","LineWidth",1)
plot(lap_number, ZHO_Delta,"Color","#00FF00","LineStyle","--","LineWidth",1)
hold off

title("Japan 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to VER (s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,53])
%ylim([-10, 220])
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

%% Read reference time deltas from csv

Japan_2024_Gapper_RefTime = readtable("Strategy_Gapper_Japan_24_RefTime.csv");

%% Generate reference time deltas for each driver

VER_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"RBR1"};
PER_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"RBR2"};
LEC_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"SF1"};
SAI_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"SF2"};
HAM_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"M_AMG1"};
RUS_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"M_AMG2"};
ALO_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"AMR1"};
STR_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"AMR2"};
NOR_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"MCL1"};
PIA_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"MCL2"};
OCO_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"ALP1"};
GAS_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"ALP2"};
TSU_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"ATO1"};
RIC_Delta_Ref = ones(53,1).* NaN; %Japan_2024_Gapper_RefTime{2:54,"ATO2"};
ALB_Delta_Ref = ones(53,1).* NaN; %Japan_2024_Gapper_RefTime{2:54,"WIL1"};
SAR_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"WIL2"};
MAG_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"HAS1"};
HUL_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"HAS2"};
BOT_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"SAUB1"};
ZHO_Delta_Ref = Japan_2024_Gapper_RefTime{2:54,"SAUB2"};

%% Plotting relative to a reference time instead of winning driver

figure(2)
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

title("Bahrain 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to Reference Time Laps")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,53])
%ylim([-41, 200])
%yticks([-40,-20,0,20,40,60,80,100,120,140,160,180,200])
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

%% Fuel Corrected Laptime Calculations

timePerKg = 0.04706; % s/kg
kgPerLap = 1.7;      % kg/lap
secondsPerLap = timePerKg .* kgPerLap;

fuelCorrections = (lap_number .* secondsPerLap)';

%% Define Fuel-Corrected Laptimes

VER_Laptimes = Japan_2024_Gapper{1:53,"MV_Laptime_s"};
PER_Laptimes = Japan_2024_Gapper{1:53,"SP_Laptime_s"};
LEC_Laptimes = Japan_2024_Gapper{1:53,"CL_Laptime_s"};
SAI_Laptimes = Japan_2024_Gapper{1:53,"CS_Laptime_s"};
NOR_Laptimes = Japan_2024_Gapper{1:53,"LN_Laptime_s"};
PIA_Laptimes = Japan_2024_Gapper{1:53,"OP_Laptime_s"};
ALO_Laptimes = Japan_2024_Gapper{1:53,"FA_Laptime_s"};
STR_Laptimes = Japan_2024_Gapper{1:53,"LS_Laptime_s"};
HAM_Laptimes = Japan_2024_Gapper{1:53,"LH_Laptime_s"};
RUS_Laptimes = Japan_2024_Gapper{1:53,"GR_Laptime_s"};

VER_fuelcorrected = VER_Laptimes + fuelCorrections;
PER_fuelcorrected = PER_Laptimes + fuelCorrections;
LEC_fuelcorrected = LEC_Laptimes + fuelCorrections;
SAI_fuelcorrected = SAI_Laptimes + fuelCorrections;
NOR_fuelcorrected = NOR_Laptimes + fuelCorrections;
PIA_fuelcorrected = PIA_Laptimes + fuelCorrections;
ALO_fuelcorrected = ALO_Laptimes + fuelCorrections;
STR_fuelcorrected = STR_Laptimes + fuelCorrections;
HAM_fuelcorrected = HAM_Laptimes + fuelCorrections;
RUS_fuelcorrected = RUS_Laptimes + fuelCorrections;

%% Tyre Degradation Fitting

% Verstappen Degradation
ver_stint1 = polyfit(lap_number(4:15),VER_fuelcorrected(4:15),1);
ver_stint1Deg = polyval(ver_stint1,lap_number(4:15));
MV_deg1 = gradient(ver_stint1Deg);

ver_stint2 = polyfit(lap_number(18:33),VER_fuelcorrected(18:33),1);
ver_stint2Deg = polyval(ver_stint2,lap_number(18:33));
MV_deg2 = gradient(ver_stint2Deg);

ver_stint3 = polyfit(lap_number(36:53),VER_fuelcorrected(36:53),1);
ver_stint3Deg = polyval(ver_stint3,lap_number(36:53));
MV_deg3 = gradient(ver_stint3Deg);

MV_tyreDeg = [MV_deg1(1), MV_deg2(1), MV_deg3(1)];

% Leclerc Degradation
lec_stint1 = polyfit(lap_number(4:25),LEC_fuelcorrected(4:25),1);
lec_stint1Deg = polyval(lec_stint1,lap_number(4:25));
CL_deg1 = gradient(lec_stint1Deg);

lec_stint2 = polyfit(lap_number(28:53),LEC_fuelcorrected(28:53),1);
lec_stint2Deg = polyval(lec_stint2,lap_number(28:53));
CL_deg2 = gradient(lec_stint2Deg);

CL_tyreDeg = [CL_deg1(1), CL_deg2(1)];

% Norris Degradation
nor_stint1 = polyfit(lap_number(4:10),NOR_fuelcorrected(4:10),1);
nor_stint1Deg = polyval(nor_stint1,lap_number(4:10));
LN_deg1 = gradient(nor_stint1Deg);

nor_stint2 = polyfit(lap_number(13:25),NOR_fuelcorrected(13:25),1);
nor_stint2Deg = polyval(nor_stint2,lap_number(13:25));
LN_deg2 = gradient(nor_stint2Deg);

nor_stint3 = polyfit(lap_number(28:53),NOR_fuelcorrected(28:53),1);
nor_stint3Deg = polyval(nor_stint3,lap_number(28:53));
LN_deg3 = gradient(nor_stint3Deg);

LN_tyreDeg = [LN_deg1(1), LN_deg2(1), LN_deg3(1)];


%% Plot fuel Corrected Laptimes

xlims = [4,53];
ylims = [90,120];

figure(3)
plot(lap_number(4:53),VER_Laptimes(4:53),"Color","#0072BD","LineWidth",1,"LineStyle","--")
hold on
plot(lap_number(4:53),VER_fuelcorrected(4:53),"Color","#0072BD","LineWidth",1)
plot(lap_number(4:15),ver_stint1Deg,'k--',"LineWidth",1)
plot(lap_number(18:33),ver_stint2Deg,'k--',"LineWidth",1)
plot(lap_number(36:53),ver_stint3Deg,'k--',"LineWidth",1)
hold off
grid on
xlim(xlims)
ylim(ylims)
title('Fuel-Corrected Laptimes - Verstappen')
xlabel('Lap Number')
ylabel('Laptime (s)')
legend('Laptime', 'Fuel-Corrected Laptime', 'Tyre Degradation Fit')

figure(4)
plot(lap_number(4:53),LEC_Laptimes(4:53),"Color","#FF0000","LineWidth",1,"LineStyle","--")
hold on
plot(lap_number(4:53),LEC_fuelcorrected(4:53),"Color","#FF0000","LineWidth",1)
plot(lap_number(4:25),lec_stint1Deg,'k--',"LineWidth",1)
plot(lap_number(28:53),lec_stint2Deg,'k--',"LineWidth",1)
hold off
grid on
xlim(xlims)
ylim(ylims)
title('Fuel-Corrected Laptimes - Leclerc')
xlabel('Lap Number')
ylabel('Laptime (s)')
legend('Laptime', 'Fuel-Corrected Laptime', 'Tyre Degradation Fit')

figure(5)
plot(lap_number(4:53),NOR_Laptimes(4:53),"Color","#EDB120","LineWidth",1,"LineStyle","--")
hold on
plot(lap_number(4:53),NOR_fuelcorrected(4:53),"Color","#EDB120","LineWidth",1)
plot(lap_number(4:10),nor_stint1Deg,'k--',"LineWidth",1)
plot(lap_number(13:25),nor_stint2Deg,'k--',"LineWidth",1)
plot(lap_number(28:53),nor_stint3Deg,'k--',"LineWidth",1)
hold off
grid on
xlim(xlims)
ylim(ylims)
title('Fuel-Corrected Laptimes - Norris')
xlabel('Lap Number')
ylabel('Laptime (s)')
legend('Laptime', 'Fuel-Corrected Laptime', 'Tyre Degradation Fit')

