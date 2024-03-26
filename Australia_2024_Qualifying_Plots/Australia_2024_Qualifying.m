%% Read Quali Data CSV

Australia_2024_Quali = readtable("Australia_2024_Qualifying_Plots.csv");

%% Load Data Arrays

lap_number = 2:11;

VER = Australia_2024_Quali{1:10,"VER_delta"};
PER = Australia_2024_Quali{1:10,"PER_delta"};
LEC = Australia_2024_Quali{1:10,"LEC_delta"};
SAI = Australia_2024_Quali{1:10,"SAI_delta"};
NOR = Australia_2024_Quali{1:10,"NOR_delta"};
PIA = Australia_2024_Quali{1:10,"PIA_delta"};
RUS = Australia_2024_Quali{1:10,"RUS_delta"};
TSU = Australia_2024_Quali{1:10,"TSU_delta"};
STR = Australia_2024_Quali{1:10,"STR_delta"};
ALO = Australia_2024_Quali{1:10,"ALO_delta"};

%% Plot Representative Qualifying Lap Improvement

figure(1)
plot(lap_number, VER,"Color","#0072BD","LineWidth",1)
hold on
plot(lap_number, PER,"Color","#0072BD","LineStyle","--","LineWidth",1)
plot(lap_number, LEC,"Color","#FF0000","LineWidth",1)
plot(lap_number, SAI,"Color","#FF0000","LineStyle","--","LineWidth",1)
plot(lap_number, NOR,"Color","#EDB120","LineWidth",1)
plot(lap_number, PIA,"Color","#EDB120","LineStyle","--","LineWidth",1)
plot(lap_number, RUS,"Color","#000000","LineStyle","--","LineWidth",1)
plot(lap_number, TSU,"Color","#7E2F8E","LineWidth",1)
plot(lap_number, ALO,"Color","#77AC30","LineWidth",1)
plot(lap_number, STR,"Color","#77AC30","LineStyle","--","LineWidth",1)
hold off

title("Australia 2024 Qualifying Improvement")
xlabel("Lap Number")
ylabel("Time Delta to Previous Qualifying Lap (s)")
set ( gca, 'YDir', 'reverse' )
grid on
xlim([2,8])
xticks(1:1:10)
legend(["VER", "PER", "LEC", "SAI", "NOR", "PIA", "RUS", "TSU", ...
    "ALO", "STR"],"Location","northeast");

%% Boxplot for Each Driver Improvements

All_Deltas = [VER,PER,LEC,SAI,NOR,PIA,RUS,TSU,ALO,STR];

figure(2)
boxplot(All_Deltas,'Labels',{'VER','PER','LEC','SAI','NOR','PIA','RUS','TSU','ALO','STR'})
xlabel('Driver')
ylabel('Time Delta (s)')
ylim([-1,1])
title('Australia 2024 - Time Deltas for Subsequent Qualifying Laps')
grid on

%% Plot Bar Averages for Time Improvements

VER_avg = mean(VER,"omitmissing");
PER_avg = mean(PER,"omitmissing");
LEC_avg = mean(LEC,"omitmissing");
SAI_avg = mean(SAI,"omitmissing");
NOR_avg = mean(NOR,"omitmissing");
PIA_avg = mean(PIA,"omitmissing");
RUS_avg = mean(RUS,"omitmissing");
TSU_avg = mean(TSU,"omitmissing");
STR_avg = mean(STR,"omitmissing");
ALO_avg = mean(ALO,"omitmissing");

All_Means = [VER_avg,PER_avg,LEC_avg,SAI_avg,NOR_avg,PIA_avg,RUS_avg,TSU_avg,ALO_avg,STR_avg];

figure(3)
bar(All_Means)
set(gca,'XTick',1:10, 'XTickLabel',{'VER','PER','LEC','SAI','NOR','PIA','RUS','TSU','ALO','STR'})
xlabel('Driver')
ylabel('Average Time Delta (s)')
title('Australia 2024 - Mean Time Delta Between Qualifying Laps')
