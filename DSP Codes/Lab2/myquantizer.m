function[y]= myquantizer(x,L)
%Uniform Quantizer Function
Max_x = max(x);
Min_x = min(x);
step_size = (Max_x - Min_x)/(L);
Lx = length(x);
y = zeros(1,Lx);
    for i= 1:Lx
        index = round(((x(i)-Min_x)./step_size));
        y(i) = index.*step_size + Min_x;
    end
end