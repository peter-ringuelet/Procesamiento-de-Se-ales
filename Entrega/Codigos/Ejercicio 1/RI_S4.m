% Grafico de la respuesta impulsional del sistema 4
n = -10:10;
x=deltaK(n); % Delta de kronecker de soporte -n a n
y = Sistema_4(x); % Al sistema le paso la delta
figure(1);
stem(n,y);
title("Respuesta impulsional del Sistema 4");
xlabel("n");
ylabel("h[n]");
axis([-2 10 -1 1]);
print('-f1','RespImpS4','-dpng');
% Calculo y gráfico de la H(e^j2πs)
ds=0.0001; 
s=-2:ds:2; 
X=zeros(size(s));
for k = 1:length(s)
X(k)=sum(y.*exp(-1i*2*pi*s(k)*n)); % La salida del sistema y por la exponencial
end
%Gráfico el modulo y la fase de la TFTD
figure(2);
subplot(2,1,1);
plot(s,abs(X)); %Gráfico del modulo mediante el comando abs()
title("Modulo de la respuesta en frecuencia H");
xlabel("s");
ylabel("|H(e^j2πs)|");
axis([-0.5 0.5 0 1.5]);
subplot(2,1,2);
plot(s,angle(X)); %Gráfico de la fase mediante el comando angle()
title("Fase de la respuesta en frecuencia H");
xlabel("s");
ylabel("H(e^j2πs)");
axis([-0.5 0.5 -5 5]);
print('-f2','GraficoH4','-dpng');