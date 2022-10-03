close all

% Треугольная (а) и трапециевидная (б) функции принадлежности
x = 0:0.1:15;
y = trimf(x, [1 4 8]);
plot (x, y, 'LineWidth', 4);
xlabel ('trimf (x, P), P = [1 4 8]');

figure
y = trapmf(x, [2 3 8 12]);
plot (x, y, 'LineWidth', 4);
xlabel ('trapmf (x, P), P = [2 3 8 12]');


% Простая (а) и двухсторонняя (б) функции принадлежности Гаусса
x = -20:1:20;
y = gaussmf (x, [2 12]);
figure
plot (x, y, 'LineWidth', 4);

x = [-20:30]';
y1 = gauss2mf (x, [1 2 7 9]);
y2 = gauss2mf (x, [3 4 11 13]);
y3 = gauss2mf (x, [2 7 8 15]);
figure
plot (x, y1, 'LineWidth', 4, 'Color', 'Red');
hold on;
plot (x, y2, 'LineWidth', 4, 'Color', 'Green');
hold on;
plot (x, y3, 'LineWidth', 4, 'Color', 'Blue');

% Функция принадлежности "обобщенный колокол"
x = -20:1:20;
y = gbellmf (x, [-3 2 5]);
figure
plot (x, y, 'LineWidth', 4);
xlabel ('gbellmf (x, P), P = [-3 2 5]');

% Сигмоидные функции: основная односторонняя, открытая справа (а), дополнительная двухсторонняя (б) и дополнительная несимметричная (в)
x = [0:15];
figure
subplot (1, 3, 1);
y = sigmf (x,[2 5]);
plot (x, y, 'LineWidth', 4);
xlabel ('sigmf (x, P), P = [2 5]');
subplot (1, 3, 2);
y = dsigmf (x, [1 2 5 6]);
plot (x, y, 'LineWidth', 4);
xlabel ('dsigmf (x, P), P = [1 2 5 6]');
subplot (1, 3, 3);
y = psigmf (x, [1 2 5 6]);
plot (x, y, 'LineWidth', 4);
xlabel ('psigmf (x, P), P = [1 2 5 6]');


% Полиномиальные функции принадлежности: Z-функция (а), PI-функция (б) и Sфункция (в)
x = [0:15];
figure
subplot (1, 3, 1);
y = zmf (x,[1 2]);
plot (x, y, 'LineWidth', 4);
xlabel ('zmf (x, P), P = [1 2]');
subplot (1, 3, 2);
y = pimf (x, [1 3 8 9]);
plot (x, y, 'LineWidth', 4);
xlabel ('pimf (x, P), P = [1 3 8 9]');
subplot (1, 3, 3);
y = smf (x, [2 5]);
plot (x, y, 'LineWidth', 4);
xlabel ('smf (x, P), P = [2 5]');


% Минимаксная интерпретация пересечения (а) и объединения (б) нечетких множеств
x = 1:0.1:10;
figure
subplot (1, 2, 1);
y1 = gaussmf (x, [2 7]);
y2 = gaussmf (x, [3 5]);
y3 = min ([y1; y2]);
plot (x, y1,':', 'LineWidth', 4, 'Color', 'Red');
hold on;
plot (x, y2,':', 'LineWidth', 4, 'Color', 'Green');
hold on;
plot (x, y3, 'LineWidth', 4, 'Color', 'Blue');
subplot (1, 2, 2);
y4 = max ([y1; y2]);
plot (x, y1,':', 'LineWidth', 4, 'Color', 'Red');
hold on;
plot (x, y2,':', 'LineWidth', 4, 'Color', 'Green');
hold on;
plot (x, y4, 'LineWidth', 4, 'Color', 'Blue'); 


% Вероятностная интерпретация пересечения (а) и объединения (б) нечетких множеств
x = 1:0.1:10;
figure
subplot (1, 2, 1);
y1 = gaussmf (x, [2 7]);
y2 = gaussmf (x, [3 5]);
y3 = prod ([y1; y2]);
plot (x, y1,':', 'LineWidth', 4, 'Color', 'Red');
hold on;
plot (x, y2,':', 'LineWidth', 4, 'Color', 'Green');
hold on;
plot (x, y3, 'LineWidth', 4, 'Color', 'Blue');
subplot (1, 2, 2);
y4 = probor ([y1; y2]);
plot (x, y1,':', 'LineWidth', 4, 'Color', 'Red');
hold on;
plot (x, y2,':', 'LineWidth', 4, 'Color', 'Green');
hold on;
plot (x, y4, 'LineWidth', 4, 'Color', 'Blue'); 


% Дополнение нечеткого множества
x = 0:0.1:10;
figure
y1 = gaussmf (x, [2 6]);
y2 = 1-y1;
plot (x, y1,':', 'LineWidth', 4);
hold on;
plot (x, y2, 'LineWidth', 4);
