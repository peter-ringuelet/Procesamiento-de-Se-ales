% Sistema 1
function y=Sistema_1(x)
y(1)=0.5*x(1); % Los vectores estan definidos a partir de 1 y el sistema no sabe que es x(0)
for n=2:length(x) % Inicializo el for en 2 porque ya conozco el y(1)
    y(n)=0.5*x(n)+0.5*x(n-1);
end
end
