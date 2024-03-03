%% Read CSV Data

Bahrain_2024_Gapper = readtable("Strategy_Gapper_Bahrain_24.csv");

%% Create Arrays of time delta to Race Winner

lap_number = 1:57;

VER_Delta = Bahrain_2024_Gapper{2:58,"RBR1"};
PER_Delta = Bahrain_2024_Gapper{2:58,"RBR2"};
LEC_Delta = Bahrain_2024_Gapper{2:58,"SF1"};
SAI_Delta = Bahrain_2024_Gapper{2:58,"SF2"};
HAM_Delta = Bahrain_2024_Gapper{2:58,"M_AMG1"};
RUS_Delta = Bahrain_2024_Gapper{2:58,"M_AMG2"};
ALO_Delta = Bahrain_2024_Gapper{2:58,"AMR1"};
STR_Delta = Bahrain_2024_Gapper{2:58,"AMR2"};
NOR_Delta = Bahrain_2024_Gapper{2:58,"MCL1"};
PIA_Delta = Bahrain_2024_Gapper{2:58,"MCL2"};
OCO_Delta = Bahrain_2024_Gapper{2:58,"ALP1"};
GAS_Delta = Bahrain_2024_Gapper{2:58,"ALP2"};
TSU_Delta = Bahrain_2024_Gapper{2:58,"ATO1"};
RIC_Delta = Bahrain_2024_Gapper{2:58,"ATO2"};
ALB_Delta = Bahrain_2024_Gapper{2:58,"WIL1"};
SAR_Delta = Bahrain_2024_Gapper{2:58,"WIL2"};
MAG_Delta = Bahrain_2024_Gapper{2:58,"HAS1"};
HUL_Delta = Bahrain_2024_Gapper{2:58,"HAS2"};
BOT_Delta = Bahrain_2024_Gapper{2:58,"SAUB1"};
ZHO_Delta = Bahrain_2024_Gapper{2:58,"SAUB2"};

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
plot(lap_number, BOT_Delta,"Color","#A2142F","LineWidth",1)
plot(lap_number, ZHO_Delta,"Color","#A2142F","LineStyle","--","LineWidth",1)
hold off

title("Bahrain 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to VER (s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,57])
ylim([-10, 220])
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

%% Read reference time deltas from csv

Bahrain_2024_Gapper_RefTime = readtable("Strategy_Gapper_Bahrain_24_RefTime.csv");

%% Generate reference time deltas for each driver

VER_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"RBR1"};
PER_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"RBR2"};
LEC_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"SF1"};
SAI_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"SF2"};
HAM_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"M_AMG1"};
RUS_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"M_AMG2"};
ALO_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"AMR1"};
STR_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"AMR2"};
NOR_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"MCL1"};
PIA_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"MCL2"};
OCO_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"ALP1"};
GAS_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"ALP2"};
TSU_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"ATO1"};
RIC_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"ATO2"};
ALB_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"WIL1"};
SAR_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"WIL2"};
MAG_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"HAS1"};
HUL_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"HAS2"};
BOT_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"SAUB1"};
ZHO_Delta_Ref = Bahrain_2024_Gapper_RefTime{2:58,"SAUB2"};

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
plot(lap_number, BOT_Delta_Ref,"Color","#A2142F","LineWidth",1)
plot(lap_number, ZHO_Delta_Ref,"Color","#A2142F","LineStyle","--","LineWidth",1)
yline(0)
hold off

title("Bahrain 2024 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to Reference Time Laps (97.284s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,57])
ylim([-41, 200])
yticks([-40,-20,0,20,40,60,80,100,120,140,160,180,200])
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "RIC", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

