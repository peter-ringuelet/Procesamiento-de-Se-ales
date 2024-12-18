% Grafico de la respuesta impulsional del sistema 2
n=-10:10;
x=deltaK(n);
y=Sistema_2(x);
figure(1);
stem(n,y);
title("Respuesta impulsional del Sistema 2");
xlabel("n");
ylabel("h[n]");
axis([-5 5 -1 1]);
print('-f1','RespImpS2','-dpng');
% Calculo y gráfico de la H(e^j2πs)
ds=0.001; 
s=-2:ds:2; 
H=zeros(size(s));
for k = 1:length(s)
H(k)=sum(y.*exp(-1i*2*pi*s(k)*n)); % La salida del sistema y por la exponencial
end
%Gráfico el modulo y la fase de la TFTD
figure(2);
subplot(2,1,1);
plot(s,abs(H)); %Gráfico del modulo mediante el comando abs()
title("Modulo de la respuesta en frecuencia H");
xlabel("s");
ylabel("|H(e^j2πs)|");
axis([-0.5 0.5 0 1.5]);
subplot(2,1,2);
plot(s,angle(H)); %Gráfico de la fase mediante el comando angle()
title("Fase de la Respuesta en frecuencia H");
xlabel("s");
ylabel("H(e^j2πs)");
axis([-0.5 0.5 -5 5]);
print('-f2','GraficoH2','-dpng');