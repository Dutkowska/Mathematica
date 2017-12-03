function[w]=newton211(f,pf,d,M)
w=[];
for k=sqrt(5)/5:0.0001:0.4656
    x0=k;
for i=1:M
   
    if pf(x0)==0
       fprintf('dzielenie przez zero\n'); %by Micha³
        x1='nie istnieje';
        break;
    end
    x1=x0-f(x0)/pf(x0);
  if -d<(x1-x0) && (x1-x0)<d
      break;
  end
  x0=x1;
end
w=[x1,w];
end
end

% [w]=newton211(inline('x^3-x'),inline('3*x^2-1'),0.001,50)
