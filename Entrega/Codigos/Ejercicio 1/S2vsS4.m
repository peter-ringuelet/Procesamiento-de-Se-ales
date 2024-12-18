%% Comparativa del modulo de la TFTD entre sistema 2 y el sistema 4
numAl=032073;
[n, x]=senial(numAl);
y2=Sistema_2(x);
y4=Sistema_4(x);
% TFTD de la salida del sistema 1
ds=0.001;
s=-2:ds:2;
Y2=zeros(size(s));
for k = 1:length(s)
Y2(k)=sum(y2.*exp(-1i*2*pi*s(k)*n));
end
% TFTD de la salida del sistema 3
Y4=zeros(size(s));
for k = 1:length(s)
Y4(k)=sum(y4.*exp(-1i*2*pi*s(k)*n));
end

% Grafico el modulo de la TFTD centrado en las frecuencia bajas (0)
figure(1);
plot(s,abs(Y2));
hold;
plot(s,abs(Y4));
title("Comparativa entre el sistema 2 y el sistema 4");
xlabel("s");
ylabel("TFTD S2 / TFTD S4");
legend("Sistema 2","Sistema 4")
axis([-0.1 0.1 0 1.5]);
print('-f1','S2_vs_S4','-dpng');
