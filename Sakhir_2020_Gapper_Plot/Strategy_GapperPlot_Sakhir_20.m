%% Define Race Duration

lap_number = 1:87;
total_lap_number = 87;

%% Read reference time deltas from csv

Sakhir_2020_Gapper_RefTime = readtable("Strategy_Gapper_Sakhir_20_RefTime.csv");

%% Generate reference time deltas for each driver

VER_Delta_Ref = ones(87,1).* NaN;   %Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"RBR1"};
ALB_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"RBR2"};
LEC_Delta_Ref = ones(87,1).* NaN;   %Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"SF1"};
VET_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"SF2"};
BOT_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"M_AMG1"};
RUS_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"M_AMG2"};
PER_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"RP1"};
STR_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"RP2"};
NOR_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"MCL1"};
SAI_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"MCL2"};
OCO_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"REN1"};
RIC_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"REN2"};
GAS_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"ATO1"};
KVY_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"ATO2"};
LAT_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"WIL1"};
AIT_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"WIL2"};
MAG_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"HAS1"};
FIT_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"HAS2"};
RAI_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"SAUB1"};
GIO_Delta_Ref = Sakhir_2020_Gapper_RefTime{2:total_lap_number+1,"SAUB2"};

%% Plotting relative to a reference time instead of winning driver

figure(1)
plot(lap_number, VER_Delta_Ref,"Color","#0072BD","LineWidth",1)
hold on
plot(lap_number, ALB_Delta_Ref,"Color","#0072BD","LineStyle","--","LineWidth",1)
plot(lap_number, LEC_Delta_Ref,"Color","#FF0000","LineWidth",1)
plot(lap_number, VET_Delta_Ref,"Color","#FF0000","LineStyle","--","LineWidth",1)
plot(lap_number, BOT_Delta_Ref,"Color","#000000","LineWidth",1)
plot(lap_number, RUS_Delta_Ref,"Color","#000000","LineStyle","--","LineWidth",1)
plot(lap_number, PER_Delta_Ref,"Color","#FF00FF","LineWidth",1)
plot(lap_number, STR_Delta_Ref,"Color","#FF00FF","LineStyle","--","LineWidth",1)
plot(lap_number, NOR_Delta_Ref,"Color","#EDB120","LineWidth",1)
plot(lap_number, SAI_Delta_Ref,"Color","#EDB120","LineStyle","--","LineWidth",1)
plot(lap_number, OCO_Delta_Ref,"Color","#FFFF00","LineWidth",1)
plot(lap_number, RIC_Delta_Ref,"Color","#FFFF00","LineStyle","--","LineWidth",1)
plot(lap_number, GAS_Delta_Ref,"Color","#7E2F8E","LineWidth",1)
plot(lap_number, KVY_Delta_Ref,"Color","#7E2F8E","LineStyle","--","LineWidth",1)
plot(lap_number, LAT_Delta_Ref,"Color","#4DBEEE","LineWidth",1)
plot(lap_number, AIT_Delta_Ref,"Color","#4DBEEE","LineStyle","--","LineWidth",1)
plot(lap_number, MAG_Delta_Ref,"Color","#6e6060","LineWidth",1)
plot(lap_number, FIT_Delta_Ref,"Color","#6e6060","LineStyle","--","LineWidth",1)
plot(lap_number, RAI_Delta_Ref,"Color","#A2142F","LineWidth",1)
plot(lap_number, GIO_Delta_Ref,"Color","#A2142F","LineStyle","--","LineWidth",1)
yline(0)
hold off

title("Sakhir 2020 Gapper Plot")
xlabel("Lap Number")
ylabel("Delta to Leader Average Lap-Time")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([1,87])
ylim([-90, 160])
legend(["VER", "ALB", "LEC", "VET", "BOT", "RUS", "PER", "STR", "NOR", ...
    "SAI", "OCO", "RIC", "GAS", "KVY", "LAT", "AIT", "MAG", "FIT", ...
    "RAI", "GIO"],"Location","southwest");

%% Lap Plot

Sakhir_2020_LapPlot = readtable("Strategy_LapPlot_Sakhir_20.csv");

%%

RUS_position = zeros(total_lap_number+1,20);
BOT_position = zeros(total_lap_number+1,20);
VER_position = zeros(total_lap_number+1,20);
ALB_position = zeros(total_lap_number+1,20);
LEC_position = zeros(total_lap_number+1,20);
VET_position = zeros(total_lap_number+1,20);
PER_position = zeros(total_lap_number+1,20);
STR_position = zeros(total_lap_number+1,20);
NOR_position = zeros(total_lap_number+1,20);
SAI_position = zeros(total_lap_number+1,20);
OCO_position = zeros(total_lap_number+1,20);
RIC_position = zeros(total_lap_number+1,20);
GAS_position = zeros(total_lap_number+1,20);
KVY_position = zeros(total_lap_number+1,20);
LAT_position = zeros(total_lap_number+1,20);
AIT_position = zeros(total_lap_number+1,20);
MAG_position = zeros(total_lap_number+1,20);
FIT_position = zeros(total_lap_number+1,20);
RAI_position = zeros(total_lap_number+1,20);
GIO_position = zeros(total_lap_number+1,20);


for i = 3:22
    for j = 2:total_lap_number+2

        RUS_pos_idx = Sakhir_2020_LapPlot{j,i} == 63;
        if RUS_pos_idx == 1
            RUS_position(j-1,i-2) = 1;
        end
        BOT_pos_idx = Sakhir_2020_LapPlot{j,i} == 77;
        if BOT_pos_idx == 1
            BOT_position(j-1,i-2) = 1;
        end
        VER_pos_idx = Sakhir_2020_LapPlot{j,i} == 33;
        if VER_pos_idx == 1
            VER_position(j-1,i-2) = 1;
        end
        ALB_pos_idx = Sakhir_2020_LapPlot{j,i} == 23;
        if ALB_pos_idx == 1
            ALB_position(j-1,i-2) = 1;
        end
        LEC_pos_idx = Sakhir_2020_LapPlot{j,i} == 16;
        if LEC_pos_idx == 1
            LEC_position(j-1,i-2) = 1;
        end
        VET_pos_idx = Sakhir_2020_LapPlot{j,i} == 5;
        if VET_pos_idx == 1
            VET_position(j-1,i-2) = 1;
        end
        PER_pos_idx = Sakhir_2020_LapPlot{j,i} == 11;
        if PER_pos_idx == 1
            PER_position(j-1,i-2) = 1;
        end
        STR_pos_idx = Sakhir_2020_LapPlot{j,i} == 18;
        if STR_pos_idx == 1
            STR_position(j-1,i-2) = 1;
        end
        NOR_pos_idx = Sakhir_2020_LapPlot{j,i} == 4;
        if NOR_pos_idx == 1
            NOR_position(j-1,i-2) = 1;
        end
        SAI_pos_idx = Sakhir_2020_LapPlot{j,i} == 55;
        if SAI_pos_idx == 1
            SAI_position(j-1,i-2) = 1;
        end
        OCO_pos_idx = Sakhir_2020_LapPlot{j,i} == 31;
        if OCO_pos_idx == 1
            OCO_position(j-1,i-2) = 1;
        end
        RIC_pos_idx = Sakhir_2020_LapPlot{j,i} == 3;
        if RIC_pos_idx == 1
            RIC_position(j-1,i-2) = 1;
        end
        GAS_pos_idx = Sakhir_2020_LapPlot{j,i} == 10;
        if GAS_pos_idx == 1
            GAS_position(j-1,i-2) = 1;
        end
        KVY_pos_idx = Sakhir_2020_LapPlot{j,i} == 26;
        if KVY_pos_idx == 1
            KVY_position(j-1,i-2) = 1;
        end
        LAT_pos_idx = Sakhir_2020_LapPlot{j,i} == 6;
        if LAT_pos_idx == 1
            LAT_position(j-1,i-2) = 1;
        end
        AIT_pos_idx = Sakhir_2020_LapPlot{j,i} == 89;
        if AIT_pos_idx == 1
            AIT_position(j-1,i-2) = 1;
        end
        MAG_pos_idx = Sakhir_2020_LapPlot{j,i} == 20;
        if MAG_pos_idx == 1
            MAG_position(j-1,i-2) = 1;
        end
        FIT_pos_idx = Sakhir_2020_LapPlot{j,i} == 51;
        if FIT_pos_idx == 1
            FIT_position(j-1,i-2) = 1;
        end
        RAI_pos_idx = Sakhir_2020_LapPlot{j,i} == 7;
        if RAI_pos_idx == 1
            RAI_position(j-1,i-2) = 1;
        end
        GIO_pos_idx = Sakhir_2020_LapPlot{j,i} == 99;
        if GIO_pos_idx == 1
            GIO_position(j-1,i-2) = 1;
        end
    end
end

RUS_LapPlot = zeros(total_lap_number+1,1);
BOT_LapPlot = zeros(total_lap_number+1,1);
VER_LapPlot = ones(total_lap_number+1,1) .* 20;
ALB_LapPlot = zeros(total_lap_number+1,1);
LEC_LapPlot = ones(total_lap_number+1,1) .* 20;
VET_LapPlot = zeros(total_lap_number+1,1);
PER_LapPlot = zeros(total_lap_number+1,1);
STR_LapPlot = zeros(total_lap_number+1,1);
NOR_LapPlot = zeros(total_lap_number+1,1);
SAI_LapPlot = zeros(total_lap_number+1,1);
OCO_LapPlot = zeros(total_lap_number+1,1);
RIC_LapPlot = zeros(total_lap_number+1,1);
GAS_LapPlot = zeros(total_lap_number+1,1);
KVY_LapPlot = zeros(total_lap_number+1,1);
LAT_LapPlot = ones(total_lap_number+1,1) .* 20;
AIT_LapPlot = zeros(total_lap_number+1,1);
MAG_LapPlot = zeros(total_lap_number+1,1);
FIT_LapPlot = zeros(total_lap_number+1,1);
RAI_LapPlot = zeros(total_lap_number+1,1);
GIO_LapPlot = zeros(total_lap_number+1,1);

for i = 1:20
    for j = 1:total_lap_number+1
        if RUS_position(j,i) == 1
            RUS_LapPlot(j) = i;
        end
        if BOT_position(j,i) == 1
            BOT_LapPlot(j) = i;
        end
        if VER_position(j,i) == 1
            VER_LapPlot(j) = i;
        end
        if ALB_position(j,i) == 1
            ALB_LapPlot(j) = i;
        end
        if LEC_position(j,i) == 1
            LEC_LapPlot(j) = i;
        end
        if VET_position(j,i) == 1
            VET_LapPlot(j) = i;
        end
        if PER_position(j,i) == 1
            PER_LapPlot(j) = i;
        end
        if STR_position(j,i) == 1
            STR_LapPlot(j) = i;
        end
        if NOR_position(j,i) == 1
            NOR_LapPlot(j) = i;
        end
        if SAI_position(j,i) == 1
            SAI_LapPlot(j) = i;
        end
        if OCO_position(j,i) == 1
            OCO_LapPlot(j) = i;
        end
        if RIC_position(j,i) == 1
            RIC_LapPlot(j) = i;
        end
        if GAS_position(j,i) == 1
            GAS_LapPlot(j) = i;
        end
        if KVY_position(j,i) == 1
            KVY_LapPlot(j) = i;
        end
        if LAT_position(j,i) == 1
            LAT_LapPlot(j) = i;
        end
        if AIT_position(j,i) == 1
            AIT_LapPlot(j) = i;
        end
        if MAG_position(j,i) == 1
            MAG_LapPlot(j) = i;
        end
        if FIT_position(j,i) == 1
            FIT_LapPlot(j) = i;
        end
        if RAI_position(j,i) == 1
            RAI_LapPlot(j) = i;
        end
        if GIO_position(j,i) == 1
            GIO_LapPlot(j) = i;
        end
    end
end


%% Plot

figure(2)
plot(0:total_lap_number, VER_LapPlot,"Color","#0072BD","LineWidth",1)
hold on
plot(0:total_lap_number, ALB_LapPlot,"Color","#0072BD","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, LEC_LapPlot,"Color","#FF0000","LineWidth",1)
plot(0:total_lap_number, VET_LapPlot,"Color","#FF0000","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, BOT_LapPlot,"Color","#000000","LineWidth",1)
plot(0:total_lap_number, RUS_LapPlot,"Color","#000000","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, PER_LapPlot,"Color","#FF00FF","LineWidth",1)
plot(0:total_lap_number, STR_LapPlot,"Color","#FF00FF","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, NOR_LapPlot,"Color","#EDB120","LineWidth",1)
plot(0:total_lap_number, SAI_LapPlot,"Color","#EDB120","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, OCO_LapPlot,"Color","#FFFF00","LineWidth",1)
plot(0:total_lap_number, RIC_LapPlot,"Color","#FFFF00","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, GAS_LapPlot,"Color","#7E2F8E","LineWidth",1)
plot(0:total_lap_number, KVY_LapPlot,"Color","#7E2F8E","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, LAT_LapPlot,"Color","#4DBEEE","LineWidth",1)
plot(0:total_lap_number, AIT_LapPlot,"Color","#4DBEEE","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, MAG_LapPlot,"Color","#6e6060","LineWidth",1)
plot(0:total_lap_number, FIT_LapPlot,"Color","#6e6060","LineStyle","--","LineWidth",1)
plot(0:total_lap_number, RAI_LapPlot,"Color","#A2142F","LineWidth",1)
plot(0:total_lap_number, GIO_LapPlot,"Color","#A2142F","LineStyle","--","LineWidth",1)
yline(0)
hold off

title("Sakhir 2020 Position Chart")
xlabel("Lap Number")
ylabel("Position")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([-1,87])
legend(["VER", "ALB", "LEC", "VET", "BOT", "RUS", "PER", "STR", "NOR", ...
    "SAI", "OCO", "RIC", "GAS", "KVY", "LAT", "AIT", "MAG", "FIT", ...
    "RAI", "GIO"],"Location","southwest");

