function [dayCenter,dayRate]=Days2Rates_mtl(tDays,tmax)


dayCenter=tDays;
dayRate=0*dayCenter;
tDays(end)=tmax;
t_start=0;t_end=tDays(1);
dayRate(1)=1/(t_end-t_start);
dayCenter(1)=t_start/2+t_end/2;


t_start=0;t_end=tDays(2);
dayRate(2)=2/(t_end-t_start);
dayCenter(2)=t_start/2+t_end/2;



t_start=0;t_end=tDays(3);
dayRate(3)=3/(t_end-t_start);
dayCenter(3)=t_start/2+t_end/2;

t_start=tDays(2);t_end=tDays(4);
dayRate(4)=2/(t_end-t_start);
dayCenter(4)=t_start/2+t_end/2;

for i=5:length(tDays)-2
    t_start=tDays(i-2);
    t_end=tDays(i+2);
    dayRate(i)=4/(t_end-t_start);
    dayCenter(i)=t_start/2+t_end/2;
end
% t_start=tDays(end-4);t_end=tDays(end);
%     dayRate(end-2)=4/(t_end-t_start);
%     dayCenter(end-2)=t_start/2+t_end/2;
t_start=tDays(end-3);t_end=tDays(end);
    dayRate(end-1)=3/(t_end-t_start);
    dayCenter(end-1)=t_start/2+t_end/2;
t_start=tDays(end-2);t_end=tDays(end);
    dayRate(end)=2/(t_end-t_start);
    dayCenter(end)=t_start/2+t_end/2;

    
    
    
    
    
    
    
    
    
    
%     
%     
%     
%     function [dayCenter,dayRate]=Days2Rates(tDays,tmax)
% 
% 
% dayCenter=tDays;
% dayRate=0*dayCenter;
% tDays(end)=tmax;
% t_start=0;t_end=tDays(1)/2+tDays(2)/2;
% dayRate(1)=1.5/(t_end-t_start);
% dayCenter(1)=t_start/2+t_end/2;
% 
% 
% t_start=tDays(1)/2;t_end=tDays(2)/2+tDays(3)/2;
% dayRate(2)=2/(t_end-t_start);
% dayCenter(2)=t_start/2+t_end/2;
% 
% 
% 
% t_start=tDays(1)/2+tDays(2)/2;t_end=tDays(3)/2+tDays(4)/2;
% dayRate(3)=2/(t_end-t_start);
% dayCenter(3)=t_start/2+t_end/2;
% 
% 
% n=60;
% tt=zeros(n,1);
% tt(1:3)=dayCenter(1:3);
% nt=zeros(n,1);
% for i=4:n
%     tt(i)=tt(i-1)*sqrt(2);
%     nt(i)=length(find(tDays>tt(i-1) & tDays<=tt(i)));
%     
% end
% 
%  okay=find(nt);
%     nt=nt(okay);
%     tt=tt(okay);
%     
% tts=[dayCenter(3);tt];
% dt=diff(tts);
% rates=nt./dt;
% dayCenter=[dayCenter(1:3);tt];
% dayRate=[dayRate(1:3);rates];
% 
% % 
% % for i=4:length(tDays)-2
% %     t_start=tDays(i-2);
% %     t_end=tDays(i+2);
% %     dayRate(i)=4/(t_end-t_start);
% %     dayCenter(i)=t_start/2+t_end/2;
% % end
% % % t_start=tDays(end-4);t_end=tDays(end);
% % %     dayRate(end-2)=4/(t_end-t_start);
% % %     dayCenter(end-2)=t_start/2+t_end/2;
% % t_start=tDays(end-3);t_end=tDays(end);
% %     dayRate(end-1)=3/(t_end-t_start);
% %     dayCenter(end-1)=t_start/2+t_end/2;
% % t_start=tDays(end-2);t_end=tDays(end);
% %     dayRate(end)=2/(t_end-t_start);
% %     dayCenter(end)=t_start/2+t_end/2;