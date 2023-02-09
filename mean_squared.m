function mean_squared = mean_squared(u1,u2,w1,w2,w0,class1,class2)
T=readtable('irisdata.csv');
count = 0;
%Pass in the inputs through the classifier function to get the required
%output from the sigmoid function. 
c = classifier(u1,u2,w1,w2,w0);
k = zeros(150,1);
%In iris data,verscolor and viriginica starts from index 51
%Since we are not concerned with setosa, we will ignore those indices.
%The for-loop below classfies versicolor as 0 and viriginica as 1
for i = 51:150
    if isequal(T{i,5}{1},class1)
        k(i)=0;
    end
    if isequal(T{i,5}{1},class2)
        k(i)=1;
    end
end

%Compute the mean squared error 
for i = 51:150
    count = count + (c(i)-k(i)).^2;
end
mean_squared =  count/100; 

end