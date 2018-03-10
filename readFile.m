clear;
set(0,'DefaultFigureVisible','off')
%Start of the code
breakdown = csvread('dummyData.csv',1,1);
[m,n] = size(breakdown);
labels = {'Others','Bathroom','Kitchen','Shower'};
data = breakdown(:,n);
pie = pie(data);
colormap([0.996 0.813 0.551;     
          0.961 0.512 0.438;      
          0.992 0.668 0.723;     
          0.809 0.590 0.840]); 
T = pie(strcmpi(get(pie,'Type'),'text'));
P = cell2mat(get(T,'Position'));
set(T,{'Position'},num2cell(P*0.6,2));
text(P(:,1),P(:,2),labels(:));
set(gcf, 'color', 'none');
saveas(gcf,'images/breakdown.png')