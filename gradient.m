function gradient = gradient(w0,w1,w2,u1,u2)
T=readtable('irisdata.csv');
y = classifier(u1,u2,w1,w2,w0);
g_loss = zeros(3,1);

class1= 'versicolor';
class2= 'virginica';

for i = 51:150
    if isequal(T{i,5}{1},class1)
        k(i)=0;
    end
    if isequal(T{i,5}{1},class2)
        k(i)=1;
    end
end


for i = 51:150
    g_loss(1) = g_loss(1) + (-2*(k(i)-y(i))*y(i)*(1-y(i)));
    g_loss(2) = g_loss(2) + (-2*(k(i)-y(i))*y(i)*(1-y(i)))*u1(i);
    g_loss(3) = g_loss(3) + (-2*(k(i)-y(i))*y(i)*(1-y(i)))*u2(i);
end
gradient = g_loss/100;
end

