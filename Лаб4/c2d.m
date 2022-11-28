clear; close all;
fcmdata = load('2d.dat');
options = [2.0 6 1e-5 1];
[center, U, obj_fcn] = fcm(fcmdata, 2, options);
maxU = max(U);
index1 = find (U(1, :) == maxU);
index2 = find(U(2, :) == maxU); 
figure;
hold on; grid on;
plot(fcmdata (index1, 1), fcmdata (index1, 2),' bo', 'markersize', 5,'LineWidth' ,1); 
plot(fcmdata (index2, 1), fcmdata(index2, 2), 'rx', 'markersize', 5,'LineWidth', 1);
plot(center(1, 1), center(1, 2), 'ko', 'markersize', 15, 'LineWidth', 2);
plot (center (2, 1), center (2, 2), 'kx', 'markersize', 15, 'LineWidth', 2);
title('Множество анализируемых данных и центры кластеров')
figure;
plot(obj_fcn)
title('График изменения значений целевой функции')
