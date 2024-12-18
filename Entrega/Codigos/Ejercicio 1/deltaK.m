% Delta de Kronecker
function d = deltaK(n)
a=zeros(size(n));
a(n==0)=1;
d=a;
end