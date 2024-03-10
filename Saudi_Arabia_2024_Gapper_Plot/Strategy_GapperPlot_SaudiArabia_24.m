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
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
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
%yticks([-40,-20,0,20,40,60,80,100,120,140,160,180,200])
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");
