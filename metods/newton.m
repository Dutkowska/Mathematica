%newton([-2;-1; 0; 1; 2], inline('4*x.^5-x.^2+12'))
function[]=newton(arg,fun)
n=length(arg);
A(:,1)=arg';
A(:,2)=fun(arg');
m=n;
for i=3:m+1
    for j=1:n-1
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
