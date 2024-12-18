addpath('C:\Users\Peter\Desktop\Facu\Procesamiento de Señales\Codigos\Ejercicio 1');
n=0:30000;
x=deltaK(n);
h=CanalFiltro1(x); % Aqui verificamos que la respuesta impulsional es la misma que obtenida en

[v, fs] = audioread("audio.wav");
sound(v,fs);
y=CanalFiltro1(v);
sound(y,fs);
figure(1);
subplot(2,1,1);
stem(n,h);
title("Respuesta impulsional canal+filtro 1");
xlabel("n");
ylabel("h_c_1[n]");
subplot(2,1,2);
plot(y);
title("Audio filtrado con 1 ramas de retardo");
xlabel("f_s");
ylabel("y");
axis([0 length(y) -1 1]);
print('-f1','Grafico_audio_filtrado_1','-dpng');

%% Filtrado con dos ramas
addpath('C:\Users\Peter\Desktop\Facu\Procesamiento de Señales\Codigos\Ejercicio 1');
n=0:45000;
x=deltaK(n);
h=CanalFiltro2(x); % Aqui verificamos que la respuesta impulsional es la misma que obtenida en
[v, fs] = audioread("audio.wav");
sound(v,fs);
y=CanalFiltro2(v);
sound(y,fs);
figure(1);
subplot(2,1,1);
stem(n,h);
title("Respuesta impulsional canal+filtro 2");
xlabel("n");
ylabel("h_c_2[n]");
axis([0 45000 -1 1]);
subplot(2,1,2);
plot(y);
title("Audio filtrado con 2 ramas de retardo");
xlabel("f_s");
ylabel("y");
axis([0 length(y) -1 1]);
print('-f1','Grafico_audio_filtrado_2','-dpng');

%% Filtrado con tres ramas
addpath('C:\Users\Peter\Desktop\Facu\Procesamiento de Señales\Codigos\Ejercicio 1');
n=0:53000;
x=deltaK(n);
h=CanalFiltro3(x); % Aqui verificamos que la respuesta impulsional es la misma que obtenida en

[v, fs] = audioread("audio.wav");
sound(v,fs);
y=CanalFiltro3(v);
sound(y,fs);
figure(1);
subplot(2,1,1);
stem(n,h);
title("Respuesta impulsional canal+filtro 3");
xlabel("n");
ylabel("h_c_3[n]");
axis([0 53000 -1 1]);
subplot(2,1,2);
plot(y);
title("Audio filtrado con 3 ramas de retardo");
xlabel("f_s");
ylabel("y");
axis([0 length(y) -1 1]);
print('-f1','Grafico_audio_filtrado_3','-dpng');

