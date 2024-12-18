% Implementacion del sistema con la ecuacion en diferencias sacada del
% ejercicio 2.1 y verificacion de que tiene la misma h[n]
addpath('C:\Users\Peter\Desktop\Facu\Procesamiento de Señales\Codigos\Ejercicio 1');
n=0:26460;
x=deltaK(n);
h=SistemaE2(x); % Aqui verificamos que la respuesta impulsional es la misma que obtenida en
figure(1);
stem(n,h,"r");
title("Respuesta impulsional del sistema en diferencias");
xlabel("n");
ylabel("h[n]");
axis([0 26460 -1 1]);
print('-f1','Grafico_E22','-dpng');
