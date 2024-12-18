function y=CanalFiltro2(x)
    y=zeros(size(x));
    for k=1:length(x)
        if(k<=35280) 
            y(k)=x(k);
        elseif (k<=44100)
            y(k)=x(k)-(0.041)*x(k-35280);
        else 
            y(k)=x(k)-(0.041)*x(k-35280)+(0.018)*x(k-44100);
        end
    end
end