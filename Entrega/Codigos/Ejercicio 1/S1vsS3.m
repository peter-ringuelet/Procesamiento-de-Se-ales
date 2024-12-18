% Comparativa del modulo de la TFTD entre sistema 1 y el sistema 3
numAl=032073;
[n, x]=senial(numAl);
y1=Sistema_1(x);
y3=Sistema_3(x);
% TFTD de la salida del sistema 1
ds=0.001;
s=-2:ds:2;
Y1=zeros(size(s));
for k = 1:length(s)
Y1(k)=sum(y1.*exp(-1i*2*pi*s(k)*n));
end
% TFTD de la salida del sistema 3
Y3=zeros(size(s));
for k = 1:length(s)
Y3(k)=sum(y3.*exp(-1i*2*pi*s(k)*n));
end

% Grafico el modulo de la TFTD centrado en las frecuencia altas (0,5)
figure(1);
plot(s,abs(Y1),"LineWidth",3);
hold;
plot(s,abs(Y3),"LineWidth",2);
title("Comparativa entre el sistema 1 y el sistema 3");
xlabel("s");
ylabel("TFTD{S1} / TFTD{S3}");
legend("Sistema 1","Sistema 3");
axis([-0.5 0.5 0 100]);
print('-f1','S1_vs_S3','-dpng');



