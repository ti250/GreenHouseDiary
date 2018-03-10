breakdown = csvread('dummyData.csv',1,1);
[m,n] = size(breakdown);
labels = {'Bathroom','Shower','Kitchen','Others'};
pie(breakdown(:,n),labels)



