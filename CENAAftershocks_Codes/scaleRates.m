function scaledRate = scaleRates(totalRate)

scaledRate=NaN(size(totalRate));
class1 = find(totalRate>=0 & totalRate<=10);
    scaledRate(class1)=totalRate(class1)/10;
    
class2 = find(totalRate>=10);
    scaledRate(class2)=log10(totalRate(class2));

class3 = find( totalRate<0);
    scaledRate(class3)=totalRate(class3)/10;

end



