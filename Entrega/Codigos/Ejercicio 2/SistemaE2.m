% Descripcion de l sistema con la ecuacion en diferencias  obtenida en 2.1

function y  = SistemaE2(x)
  y = zeros(size(x));
  for k=1:length(x) 
    if(k<=8820) 
      y(k)=x(k); % Si la señal tiene menos puntos que 8820 solo se vinculará la delta en 0
    else 
        if(k<=17640) 
            y(k)=x(k)-(0.45)*x(k-8820);% Si la señal tiene mas puntos que 8820 solo se vinculará por la delta en 0 y en 8820
        else 
            y(k)=x(k)-(0.45)*x(k-8820)+(0.2025)*x(k-17640); % Si tiene mas de 17640 la señal se vinculará con el sistema completo dada por la ecuacion en diferencias de abajo
        end
    end
  end
end
