% Calculo de la TFTF de las salidas como pide el ejercicio 1.5

%% TFTD SALIDA SISTEMA 1
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_1(x);
stem(n,y)
ds=0.001;
s=-0.5:ds:0.5;
Y=zeros(size(s));
for k = 1:length(s)
Y(k)=sum(y.*exp(-1i*2*pi*s(k)*n));
end
%Gráfico el modulo y la fase de la TFTD
figure(1);
subplot(2,1,1);
plot(s,abs(Y)); %Gráfico del modulo mediante el comando abs()
title("Modulo TFTD");
xlabel("s");
ylabel("|Y_1(e^j2πs)|");
axis([-0.5 0.5 -1 100]);
hold;
subplot(2,1,2);
plot(s,angle(Y)); %Gráfico de la fase mediante el comando angle()
title("Fase TFTD");
xlabel("s");
ylabel("Y_1(e^j2πs)");
%axis([-0.5 0.5 -5 5]);
print('-f1','TFTD_S1','-dpng');

%% TFTD SALIDA SISTEMA 2
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_2(x);

ds=0.001;
s=-0.5:ds:0.5;
Y=zeros(size(s));
for k = 1:length(s)
Y(k)=sum(y.*exp(-1i*2*pi*s(k)*n));
end
%Gráfico el modulo y la fase de la TFTD
figure(2);
subplot(2,1,1);
plot(s,abs(Y)); %Gráfico del modulo mediante el comando abs()
title("Modulo TFTD");
xlabel("s");
ylabel("|Y_2(e^j2πs)|");
axis([-0.5 0.5 0 15]);
subplot(2,1,2);
plot(s,angle(Y)); %Gráfico de la fase mediante el comando angle()
title("Fase TFTD");
xlabel("s");
ylabel("Y_2(e^j2πs)");
axis([-0.5 0.5 -5 5]);
print('-f2','TFTD_S2','-dpng');

%% TFTD SALIDA SISTEMA 3
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_3(x);

ds=0.001;
s=-0.5:ds:0.5;
Y=zeros(size(s));
for k = 1:length(s)
Y(k)=sum(y.*exp(-1i*2*pi*s(k)*n));
end
%Gráfico el modulo y la fase de la TFTD
figure(3);
subplot(2,1,1);
plot(s,abs(Y)); %Gráfico del modulo mediante el comando abs()
title("Modulo TFTD");
xlabel("s");
ylabel("|Y_3(e^j2πs)|");
axis([-0.5 0.5 -1 100]);
subplot(2,1,2);
plot(s,angle(Y)); %Gráfico de la fase mediante el comando angle()
title("Fase TFTD");
xlabel("s");
ylabel("Y_3(e^j2πs)");
axis([-0.5 0.5 -5 5]);
print('-f3','TFTD_S3','-dpng');

%% TFTD SALIDA SISTEMA 4
numAl=032073;
[n, x]=senial(numAl);
y=Sistema_4(x);

ds=0.001;
s=-0.5:ds:0.5;
Y=zeros(size(s));
for k = 1:length(s)
    Y(k)=sum(y.*exp(-1i*2*pi*s(k)*n));
end
%Gráfico el modulo y la fase de la TFTD
figure(4);
subplot(2,1,1);
plot(s,abs(Y)); %Gráfico del modulo mediante el comando abs()
title("Modulo TFTD");
xlabel("s");
ylabel("|Y_4(e^j2πs)|");
axis([-0.5 0.5 0 15]);
subplot(2,1,2);
plot(s,angle(Y)); %Gráfico de la fase mediante el comando angle()
title("Fase TFTD");
xlabel("s");
ylabel("Y_4(e^j2πs)");
axis([-0.5 0.5 -5 5]);
print('-f4','TFTD_S4','-dpng');
