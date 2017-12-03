function[c,d]=przedzial(f,a,b,h,n)
		%funkcja pobiera kra�ce przedzia�u [a,b], warto�� h>1
		%oraz narzuca d�ugo�� dzia�ania poni�szej p�tli:
for i=1:n
	if f(a)*f(b) < 0 
		%wraz ze spe�nieniem warunku przedzia�u izolacji pierwiastka 
        %mo�liwe staje si� zdefiniowanie danych wyj�ciowych: 
		c = a; 
		d = b; 
        %puki za� warunek jest niespe�niony: 
	elseif abs(f(a)) < abs(f(b))    
		%abs(f(a)) = |f(a)| 
		a=a+h(a-b);
	else
		b=b+h(b-a);
	end 
end
%[c,d]=przedzial(inline('x^2'),1,2,2,9)