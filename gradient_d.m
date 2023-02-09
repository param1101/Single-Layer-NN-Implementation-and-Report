function gradient_d =  gradient_d(w0,w1,w2,u1,u2,iterations)
T = readtable('irisdata.csv');
eps = 0.5;
g = zeros(3,1);
ms = zeros(iterations,1);
w_mid = zeros(3,1);

for i = 1:iterations
    g = gradient(w0,w1,w2,u1,u2);
    w0 = w0 - eps*g(1);
    w1 = w1 - eps*g(2);
    w2 = w2 - eps*g(3);
    ms(i) = mean_squared(T{:,3},T{:,4},w1,w2,w0,'versicolor','virginica');
    if i == iterations/2
        w_mid(1) = w0;
        w_mid(2) = w1;
        w_mid(3) = w2;
    end
        
end

% plot([1 : 1 :iterations]',ms);
gradient_d = [w0 w1 w2 ; w_mid'];
end 
