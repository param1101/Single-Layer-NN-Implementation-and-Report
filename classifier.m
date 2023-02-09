function classifier = classifier(x1,x2,w1,w2,w0)

y = (w1*x1 + w2*x2 + w0);

classifier = 1./(1+exp(-y));

end


