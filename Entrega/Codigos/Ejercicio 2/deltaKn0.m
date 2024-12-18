% Delta de Kronecker desplazada en n_0
function d = deltaKn0(n,n0)
a=zeros(size(n));
a(n==n0)=1;
d=a;
end