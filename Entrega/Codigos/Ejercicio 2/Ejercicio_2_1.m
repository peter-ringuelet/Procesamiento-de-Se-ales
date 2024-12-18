% Ejercicio 2.1
numAl=032073;
[n,ha]=hcanald(numAl);
L=length(ha); % 26460 - calculo el soporte de la señal para tener la referencia de puntos que se graficaran
figure(1);
stem(n,ha); % Grafica de ha[n]
title("Respuesta impulsional canal digital");
xlabel("n");
ylabel("h_a[n]");
axis([0 L -1 1]);
print('-f1','Grafico_E21','-dpng');


