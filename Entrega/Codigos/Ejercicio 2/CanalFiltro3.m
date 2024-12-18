function y=CanalFiltro3(x)
    y=zeros(size(x));
    for k=1:length(x)
        if(k<=44100) 
            y(k)=x(k); % Si la señal tiene menos puntos que 26460 solo se vinculará la delta en 0
        elseif (k<=52920)
            y(k)=x(k)+(0.036)*x(k-44100);
        else
            y(k)=x(k)+(0.036)*x(k-44100)-(0.08)*x(k-52920); % Si tiene mas de 26460 la señal se vinculará con el sistema completo dada por la ecuacion en diferencias de abajo
    end
    end
end
