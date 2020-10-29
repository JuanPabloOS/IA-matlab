clc;
x = generaTabla(3);
w = [2; 2; 2];
yd = [1:1.5:2.5,3,4,4.5,5.5];
alpha = 0.5;
numEpocas = 10;

numPatrones = size(x,1); %renglones
numEntradas = size(x,2); %columnas

epsilon = 0.00001
y = zeros(numPatrones, 1);
y
for i = 1:numPatrones
##    fprintf("x(i,:)");
##    x(i,:)
##    fprintf("w:");
##    w
    suma = x(i,:) * w;
##    fprintf("suma:");
##    suma
##    fprintf("fin suma");
    y(i)= suma;
    error = yd(i)-y(i);
    if(abs(error) > epsilon)
        DeltaWs = (alpha * error * x(i, :))'; %el simbolo la transpone
        w = w + DeltaWs;
    end
end
wAct = w;
