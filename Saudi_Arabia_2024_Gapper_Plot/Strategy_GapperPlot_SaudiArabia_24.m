%% Read CSV Data

SaudiArabia_2024_Gapper_RefTime = readtable("Strategy_Gapper_SaudiArabia_24_RefTime.csv");

%% Create Arrays of time delta to Reference Laptime

lap_number = 1:50;
totalLapNumber = 50;

VER_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"RBR1"};
PER_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"RBR2"};
LEC_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"SF1"};
SAI_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"SF2"};
HAM_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"M_AMG1"};
RUS_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"M_AMG2"};
ALO_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"AMR1"};
STR_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"AMR2"};
NOR_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"MCL1"};
PIA_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"MCL2"};
OCO_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"ALP1"};
GAS_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"ALP2"};
TSU_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"ATO1"};
RIC_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"ATO2"};
ALB_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"WIL1"};
SAR_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"WIL2"};
MAG_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"HAS1"};
HUL_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"HAS2"};
BOT_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"SAUB1"};
ZHO_Delta_Ref = SaudiArabia_2024_Gapper_RefTime{2:totalLapNumber+1,"SAUB2"};

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

title("Saudi Arabia 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to Reference Time Laps (94.205s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,totalLapNumber])
ylim([-10, 270])
%yticks([-40,-20,0,20,40,60,80,100,120,140,160,180,200])
legend(["VER", "PER", "LEC", "BEA", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

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

title("Saudi Arabia 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to Reference Time Laps (94.205s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,totalLapNumber])
ylim([130, 270])
legend(["VER", "PER", "LEC", "BEA", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

%% Load csv data for gaps relative to verstappen

SaudiArabia_2024_Gapper = readtable("Strategy_Gapper_SaudiArabia_24.csv");

%% Create gapper plot relative to Verstappen as race winner.

VER_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"RBR1"};
PER_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"RBR2"};
LEC_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"SF1"};
SAI_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"SF2"};
HAM_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"M_AMG1"};
RUS_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"M_AMG2"};
ALO_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"AMR1"};
STR_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"AMR2"};
NOR_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"MCL1"};
PIA_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"MCL2"};
OCO_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"ALP1"};
GAS_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"ALP2"};
TSU_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"ATO1"};
RIC_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"ATO2"};
ALB_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"WIL1"};
SAR_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"WIL2"};
MAG_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"HAS1"};
HUL_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"HAS2"};
BOT_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"SAUB1"};
ZHO_Delta = SaudiArabia_2024_Gapper{2:totalLapNumber+1,"SAUB2"};

figure(3)
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
yline(0)
hold off

title("Saudi Arabia 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to VER (s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,totalLapNumber])
ylim([-10, 130])
yticks(-10:10:130)
legend(["VER", "PER", "LEC", "BEA", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");
