function [y] = myencoder(q,L)
%%Encoder Function
Max_q = max(q);
Min_q = min(q);
step_size = (Max_q - Min_q)/(L-1);
Lx = length(q);

for i= 1:Lx
    a = (q(i)-Min_q)./step_size;
    st{i} = dec2bin(a,3);
end

y = strcat(st);

end