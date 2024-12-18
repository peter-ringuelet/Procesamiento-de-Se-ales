[x, fs] = audioread("audio.wav");
sound(x,fs); % Escucho como suena la señal de audio dada
N=length(x);
figure(1);
subplot(2,1,1);
plot(x); %Grafica de la señal de entrada
title("Señal de audio");
xlabel("f_s");
ylabel("x");
axis([0 N -0.5 0.5]);
y=SistemaE2(x); %Ingreso la señal de audio al sistema anterior
sound(y,fs); % Escucho como suena
subplot(2,1,2);
plot(y); % Grafico la salida del sistema a este ingreso
title("Salida del sistema a la señal de audio");
xlabel("f_s");
ylabel("y");
axis([0 N -0.5 0.5]);
print('-f1','Grafico_señal_audio','-dpng');