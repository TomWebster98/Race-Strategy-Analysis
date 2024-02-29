%% Read CSV Data

Bahrain_2023_Gapper = readtable("Strategy_Gapper_Bahrain_23.csv");

%% Create Arrays of time delta to Race Winner

lap_number = 1:57;

VER_Delta = Bahrain_2023_Gapper{2:58,"RBR1"};
PER_Delta = Bahrain_2023_Gapper{2:58,"RBR2"};
LEC_Delta = Bahrain_2023_Gapper{2:58,"SF1"};
SAI_Delta = Bahrain_2023_Gapper{2:58,"SF2"};
HAM_Delta = Bahrain_2023_Gapper{2:58,"M_AMG1"};
RUS_Delta = Bahrain_2023_Gapper{2:58,"M_AMG2"};
ALO_Delta = Bahrain_2023_Gapper{2:58,"AMR1"};
STR_Delta = Bahrain_2023_Gapper{2:58,"AMR2"};
NOR_Delta = Bahrain_2023_Gapper{2:58,"MCL1"};
PIA_Delta = Bahrain_2023_Gapper{2:58,"MCL2"};
OCO_Delta = Bahrain_2023_Gapper{2:58,"ALP1"};
GAS_Delta = Bahrain_2023_Gapper{2:58,"ALP2"};
TSU_Delta = Bahrain_2023_Gapper{2:58,"ATO1"};
DEV_Delta = Bahrain_2023_Gapper{2:58,"ATO2"};
ALB_Delta = Bahrain_2023_Gapper{2:58,"WIL1"};
SAR_Delta = Bahrain_2023_Gapper{2:58,"WIL2"};
MAG_Delta = Bahrain_2023_Gapper{2:58,"HAS1"};
HUL_Delta = Bahrain_2023_Gapper{2:58,"HAS2"};
BOT_Delta = Bahrain_2023_Gapper{2:58,"SAUB1"};
ZHO_Delta = Bahrain_2023_Gapper{2:58,"SAUB2"};

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
plot(lap_number, DEV_Delta,"Color","#7E2F8E","LineStyle","--","LineWidth",1)
plot(lap_number, ALB_Delta,"Color","#4DBEEE","LineWidth",1)
plot(lap_number, SAR_Delta,"Color","#4DBEEE","LineStyle","--","LineWidth",1)
plot(lap_number, MAG_Delta,"Color","#6e6060","LineWidth",1)
plot(lap_number, HUL_Delta,"Color","#6e6060","LineStyle","--","LineWidth",1)
plot(lap_number, BOT_Delta,"Color","#A2142F","LineWidth",1)
plot(lap_number, ZHO_Delta,"Color","#A2142F","LineStyle","--","LineWidth",1)
hold off

title("Bahrain 2023 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to VER (s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,57])
ylim([-20, 200])
legend(["VER", "PER", "LEC", "SAI", "HAM", "RUS", "ALO", "STR", "NOR", ...
    "PIA", "OCO", "GAS", "TSU", "DEV", "ALB", "SAR", "MAG", "HUL", ...
    "BOT", "ZHO"],"Location","southwest");

