% Aqui ingresamos la señal que se nos dio a cada uno de los 4 sistemas
% dados, como se pide en el ejercicio 1.4

%% Ingreso la señal al sistema 1
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_1(x);
figure(1)
stem(n,y)
title("Señal de salida para Sistema 1 cuando ingreso la señal dada")
xlabel("n")
ylabel("y[n]")
print('-f1','SeñalSistema1','-dpng')

%% %% Ingreso la señal al sistema 2
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_2(x);
figure(2)
stem(n,y)
title("Señal de salida para Sistema 2 cuando ingreso la señal dada")
xlabel("n")
ylabel("y[n]")
print('-f2','SeñalSistema2','-dpng')

%% %% Ingreso la señal al sistema 3
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_3(x);
figure(3)
stem(n,y)
title("Señal de salida para Sistema 3 cuando ingreso la señal dada")
xlabel("n")
ylabel("y[n]")
print('-f3','SeñalSistema3','-dpng')

%% %% Ingreso la señal al sistema 4
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_4(x);
figure(4)
stem(n,y)
title("Señal de salida para Sistema 4 cuando ingreso la señal dada")
xlabel("n")
ylabel("y[n]")
print('-f4','SeñalSistema4','-dpng')

