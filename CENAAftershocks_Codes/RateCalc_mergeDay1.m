% figure(99);hold off;

function [dayCenter,dayRate]=RateCalc_mergeDay1(tDays)

% 
% nDay1=length(find(tDays<1));
% med_day1=median(tDays(1:nDay1));


% tDays=tDays(nDay1+1:end);


dayCenter=tDays;
dayRate=0*dayCenter;

rate1=1./tDays(1);
tD1=tDays(1)/2;%10^log10(tDays(1)/2);

rate2=1.5/(tDays(1)/2+tDays(2)/2);
tD2=tDays(1)/2+tDays(2)/2;%10^(log10(tDays(1))/2+log10(tDays(2))/2);

rate3=2/tDays(2);
tD3=tDays(2)/2;


dayRate(1)=10^(mean([log10(rate1) log10(rate2) log10(rate3)]));



% mean([rate1 rate2 rate3 ]);
dayCenter(1)=mean([tD1 tD2 tD3 ]);




rate1=2/(tDays(3)-tDays(1));
tD1=tDays(3)/2+tDays(1)/2;%10^(log10(tDays(3))/2+log10(tDays(1))/2);
rate2=3/tDays(3);
tD2=tDays(3)/2;%10^(log10(tDays(3))/2);
tD3=tDays(4)/2;%10^(log10(tDays(4))/2);
rate3=4/tDays(4);
dayCenter(2)=mean([tD1 tD2 tD3]);
dayRate(2)=10^(mean([log10(rate1) log10(rate2) log10(rate3)]));%mean([rate1 rate2 rate3]);

t_start=0;t_end=tDays(5);
rate1=5/(t_end-t_start);tD1=t_start/2+t_end/2;%10^(log10(t_start)/2+log10(t_end)/2);
t_end=tDays(5);t_start=tDays(1);
rate2=4/(t_end-t_start);tD2=t_start/2+t_end/2;%10^(log10(t_start)/2+log10(t_end)/2);

if length(tDays)>=6
t_end=tDays(6);t_start=tDays(1);
rate3=5/(t_end-t_start);tD3=t_start/2+t_end/2;%10^(log10(t_start)/2+log10(t_end)/2);
dayCenter(3)=mean([tD1 tD2 tD3]);
dayRate(3)=10^(mean([log10(rate1) log10(rate2) log10(rate3)]));%mean([rate1 rate2 rate3]);
else
dayCenter(3)=mean([tD1 tD2]);
dayRate(3)=10^(mean([log10(rate1) log10(rate2) ]));%mean([rate1 rate2 rate3]);
end

n_end=length(tDays)-3;%%% when to stop using n-2-->n+2
for i=4:n_end
    t_start=tDays(i-3);t_end=tDays(i+3);
    dayRate(i)=6/(t_end-t_start);
    dayCenter(i)=t_start/2+t_end/2;%10^(log10(t_start)/2+log10(t_end)/2);
end

i=length(tDays)-2;
if length(tDays)>=6
t_start=tDays(i-3);t_end=tDays(i+2);
dayRate(i)=5/(t_end-t_start);
else
t_start=tDays(i-2);t_end=tDays(i+2);
dayRate(i)=4/(t_end-t_start);
end
dayCenter(i)=t_start/2+t_end/2;%10^(log10(t_start)/2+log10(t_end)/2);

i=length(tDays)-1;
t_start=tDays(i-3);t_end=tDays(i+1);
dayRate(i)=4/(t_end-t_start);
dayCenter(i)=t_start/2+t_end/2;%10^(log10(t_start)/2+log10(t_end)/2);

i=length(tDays);
t_start=tDays(i-3);t_end=tDays(i);
dayRate(i)=3/(t_end-t_start);
dayCenter(i)=t_start/2+t_end/2;%10^(log10(t_start)/2+log10(t_end)/2);



%%%% now trim the first day to be a single data point.
%%%% doing so prevents near-singuklarity problems better than c=0.05 when
%%%% there aren't abundant aftershocks. For instance, many events display
%%%% peak rates arounbd the 3rd, 4th, 5th dayCenter rather than at the
%%%% outset. We are gunning for long-duration sequences anyway, requiring
%%%% tens to hundreds of days
nDay1=length(find(tDays<1));
if nDay1>1
dayRate(nDay1)=nDay1;
foo=dayCenter(1:nDay1);foo=log10(foo);
dayCenter(nDay1)=10^mean(foo);
% if dayCenter(nDay1)>0.5;dayCenter(nDay1)=0.5;end
dayRate=dayRate(nDay1:end);
dayCenter=dayCenter(nDay1:end);
end
end
