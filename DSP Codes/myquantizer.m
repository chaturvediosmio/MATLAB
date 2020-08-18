function [ g ] = myquantizer( y, L )
maxy = max(y);
miny = min(y);
interval = (maxy - miny)/L;
i = round( (y - miny)/interval);
g = miny + i*interval;
end

