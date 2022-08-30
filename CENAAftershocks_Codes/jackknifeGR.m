function [a_valuestd,b_valuestd]=jackknifeGR(mag,mc,nerror)


ab1=zeros(nerror,2);
for i=1:nerror
    m1=mag(mag>=mc);
    m1=m1+(rand(length(m1),1)-0.5)/2;
    m1=m1(m1>=mc);
    n1=0*m1;
    for j=1:length(m1);n1(j)=length(find(m1>=m1(j)));end
    ab1(i,:)=polyfit(m1,log10(n1),1);
end
a_valuestd=std(ab1(:,2));
b_valuestd=std(ab1(:,1));


end