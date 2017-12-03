%newton2(0,4,10, inline('sin(x).*exp(cos(x))'))

function[]=newtondwa(a,b,n,fun)

arg=(n:1);
for k=0:n
    arg(k+1,1)=a+b*k/n;
end
arg
A(:,1)=arg';
A(:,2)=fun(arg');
m=n+1;
for i=3:m+1
    for j=1:n
        A(j,i)=(A(j+1,i-1)-A(j,i-1))/(A(j+i-2,1)-A(j,1));
    end
    n=n-1;
end
A;
A(1,:);
B=[];
m;
for i=1:m
   B(1,i) =A(1,i+1);
end

B

syms x;
W=B(1,1); 
for i=2:length(B);
    iloczyn = 1; 
    for j=1:i-1; 
        iloczyn= iloczyn *(x- arg(j,1));
    end;
    W = W + B(1,i) * iloczyn;
end
W 
W=inline(W,'x'); 

hold on; 
title('interpolacja wielomianem Newtona','FontSize',12); 
fplot(W,[min(arg) max(arg)],'g') 
fplot(fun,[min(arg) max(arg)],'k')
legend('funkcja interpoluj¹ca','funkcja interpolowana',2);
hold off


end





