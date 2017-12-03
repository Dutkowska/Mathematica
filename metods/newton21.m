function[x1,i]=newton21(xo,f,pf,d,k,M)
for i=1:M
   
    if pf(xo)==0
       fprintf('dzielenie przez zero\n'); %by Micha³
        x1='nie istnieje';
        break;
    end
    x1=xo-f(xo)/pf(xo);
  if -d<(x1-xo) && (x1-xo)<d
      break;
  end
  %  if i==20 && (-k>=(x1-xo) || (x1-xo)>=k)
   %     fprintf('metoda jest rozbie¿na\n'); %by Micha³
    %  break;
    %end
  xo=x1;
end

end

%[x1,i]=newton21(2,inline('x^2-2'),inline('2*x'),0.001,1,20)
% [x1,i]=newton21(a,inline('x^3-x'),inline('3*x^2-1'),0.001,1,50)
% a=sqrt(5)/5
% b=sqrt(3)/3
%[x1,i]=newton21(b,inline('x^3-x'),inline('3*x^2-1'),0.001,1,50)
%[x1,i]=newton21(b-0.01,inline('x^3-x'),inline('3*x^2-1'),0.001,1,50)