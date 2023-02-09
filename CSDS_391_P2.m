T = readtable('irisdata.csv');
p_length = [];
p_width = [];
species = [];
specie1 = {'versicolor'};
specie2 = {'virginica'};
for i = 1:150
    p_length = [p_length; T{i,3}];
    p_width = [p_width; T{i,4}];
    species = [species;T{i,5}];
end

xlabel('Petal Length');
ylabel('Petal Width')

hold on

x1 = [];
for i = 1:150
    if isequal(specie1{1}, species{i})
        plot(p_length(i),p_width(i),'*r' )
        
    end
    if isequal(specie2{1}, species{i})
        plot(p_length(i),p_width(i),'*g' )
    end
end
plot([4 0], [0 8])
hold off
