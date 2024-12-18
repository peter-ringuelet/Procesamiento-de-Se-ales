% Gráfico y calculo de la TFTF
numAl=032073;
[n, x]=senial(numAl);
ds=0.0001;
s=-0.5:ds:0.5;
X=zeros(size(s));
for i = 1:length(s)
X(i)=sum(x.*exp(-1i*2*pi*s(i)*n));
end
%Gráfico el modulo y la fase de la TFTD
figure(1);
subplot(2,1,1);
plot(s,abs(X)); %Gráfico del modulo mediante el comando abs()
title("Modulo TFTD");
xlabel("s");
ylabel("|X(e^j2πs)|");
axis([-0.5 0.5 -1 100]);

subplot(2,1,2);
plot(s,angle(X)); %Gráfico de la fase mediante el comando angle()
title("Fase de la TFTD");
xlabel("s");
ylabel("X(e^j2πs)");
axis([-0.5 0.5 -5 5]);
print('-f1','GraficoTFTD','-dpng');
