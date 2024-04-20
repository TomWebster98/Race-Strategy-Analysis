%% Calculating the Safety Car Window in F1 Strategy
% Assuming single stop from C3 to C2 tyre.

fuelQuantity = 110;  %kg
totalLapNumber = 56; %laps
lapNumber = 1:totalLapNumber;
timePerKg = 0.035;   %seconds

fuelConsumption = fuelQuantity/totalLapNumber;   %kg/lap

fuelCorrectionFactor = fuelConsumption .* timePerKg; %seconds/lap

fuelLapCorrections = fuelCorrectionFactor .* (lapNumber-1);

%% Defining Arbitrary Tyre Wear Factors

C3Wear = linspace(0.04,0.2,totalLapNumber); %0.02;
C2Wear = linspace(0.04,0.12,totalLapNumber); %0.01;

tyreAge = 1:totalLapNumber; %laps

%% Calculating Tyre Degradation Laptime Impact

C3InitialLaptime = 97;   %seconds
C2InitialLaptime = 97.8;

C3DegLaptime = C3InitialLaptime + (C3Wear .* (tyreAge-1));
C2DegLaptime = C2InitialLaptime + (C2Wear .* (tyreAge-1));

%% Calculating Tyre and Fuel Effected Laptimes for Full Distance Tyre Model

C3laptime = C3InitialLaptime + (C3Wear .* (tyreAge-1)) - fuelLapCorrections(lapNumber);
C2laptime = C2InitialLaptime + (C2Wear .* (tyreAge-1)) - fuelLapCorrections(lapNumber);

%% Defining Average Pit Time Loss

pitTime = 20;  %seconds

%% 
% Plotting the tyre model to visualise the tyre life and pace over the full 
% race distance.

plot(lapNumber,C3DegLaptime,"Color","#EDB120","LineWidth",1)
hold on
plot(lapNumber,C2DegLaptime,"Color","#4DBEEE","LineWidth",1)
xlabel("Lap Number")
ylabel("Laptime (s)")
xlim([1,totalLapNumber])
ylim([C3InitialLaptime-0.5, C3DegLaptime(end)+0.5])
title("Estimated Tyre Degradation Model")
legend(["C3", "C2"])
grid on
hold off

%% Initial Attempt
% Parameter sweep for pitstop laps

% Objective (minimise over 56 laps) raceTime = total lap times (including pit time).

% Establish the logic such that we can choose to stop at any point, and 
% only once, at which point the tyreAge returns to 1.

raceTimesArray = zeros(1,length(totalLapNumber)-1);

for pitLap = 1:totalLapNumber-1
    fuel_Corrected_Stint1 = C3laptime(tyreAge(1:pitLap));
    fuel_Corrected_Stint2 = C2DegLaptime(tyreAge(1:(totalLapNumber-pitLap))) - fuelLapCorrections(lapNumber(pitLap+1:totalLapNumber));
    raceTimesArray(pitLap) = sum(fuel_Corrected_Stint1) + sum(fuel_Corrected_Stint2) + pitTime;  %seconds
end

optimalRaceTime = min(raceTimesArray);
optimalPitLap = find(raceTimesArray == optimalRaceTime);

%% Plot Total Race Time vs Pit Lap

figure(2)
plot(1:totalLapNumber-1, raceTimesArray,"Marker","x","LineStyle","none","MarkerSize",7,"Color","k")
title('Total Race Time vs Pitstop Lap')
xlabel('Pit Stop Lap')
ylabel('Total Race Time (s)')
xlim([1,totalLapNumber])
grid on
hold on

%% Determine the Quadratic Fit of Race Time vs Pitstop Lap

Quadfit = polyfit(1:totalLapNumber-1, raceTimesArray, 2);
Quadval = polyval(Quadfit,1:totalLapNumber-1);

plot(1:totalLapNumber-1,Quadval,"r--")
hold off
legend(["Calculated Race Times", "Quadratic Fit"])

%% Determine the Equation Relating the loss in time compared to optimal for a given pit stop lap

TimeLossFit = polyfit(1:totalLapNumber-1, raceTimesArray-optimalRaceTime, 2);
TimeLossVal = polyval(TimeLossFit,1:totalLapNumber-1);

VSCTimeSaved = 10; % seconds

figure(3)
plot(1:totalLapNumber-1,TimeLossVal,"LineWidth",1)
hold on
yline(VSCTimeSaved,"k--","LineWidth",1)
xlim([1,totalLapNumber])
ylim([-10,100])
title('Race Time Loss vs Pitstop Lap')
xlabel('Pit Stop Lap')
ylabel('Race Time Loss (s)')
grid on
hold off

