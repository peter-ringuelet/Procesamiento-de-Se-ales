% Sistema 3
function y=Sistema_3(x)
y(1)=0.25*x(1); % Los vectores estan definidos a partir de 1 y el sistema no sabe que es x(0) ni y(0)
for n=2:length(x) 
    y(n)=0.25*x(n)+0.25*x(n-1)+0.5*y(n-1)
end
end
