% Gráfico de la señal dada para el ejericio 1
%n=-5:1:5;
numAl=032073;
[n, x]=senial(numAl); % Los puntos n ya estan establecidos para la señal dada
figure(1)
stem(n,x)
title("Señal discreta (03207/3)")
xlabel("n")
ylabel("x[n]")
print('-f1','GraficoSenial','-dpng') % Comando para generar y guardar automaticamente una imagen .png de la gráfica
