Monaco_Quali = readtable('Laptime CSV Data/2023 Season/MonacoGP/2023 Monaco Quali.csv');

Sector_1 = table2array(Monaco_Quali(:,9));
Sector_2 = table2array(Monaco_Quali(:,11));
Sector_3 = table2array(Monaco_Quali(:,13));


boxchart(Monaco_Quali.Sector1Times_s_);
%boxchart(Sector_2);
%boxchart(Sector_3);
ylabel('Time (s)');
xlabel('Sector Number');
title('Sector Times');

