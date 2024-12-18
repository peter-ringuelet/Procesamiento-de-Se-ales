function y=CanalFiltro1(x)
    y=zeros(size(x));
    for k=1:length(x)
        if(k<=26460) 
            y(k)=x(k); % Si la señal tiene menos puntos que 26460 solo se vinculará la delta en 0
        else       
            y(k)=x(k)+(0.091125)*x(k-26460); % Si tiene mas de 26460 la señal se vinculará con el sistema completo dada por la ecuacion en diferencias de abajo
        end
    end
end