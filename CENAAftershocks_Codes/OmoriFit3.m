
 
 
 
function [a_value,a_valuestd,b_value,b_valuestd,p,pstd,t_end,a,astd,K,Khigh,Klow]=OmoriFit3(m0,mc,tDays,mag,bg_rate,events_loop,littlec,tmax,toplot)

tDays=mat2vec(tDays);mag=mat2vec(mag);temp=[tDays mag];temp=sortrows(temp);tDays=temp(:,1);mag=temp(:,2);

[m,n]=unique(sort(mag));
n=length(mag)+1-n;
logn=log10(n);
    ab=polyfit(m(m>=mc),logn(m>=mc),1);
    a_value=ab(2);
    b_value=-ab(1);
    b_term=b_value*(m0-mc);

nerror=100;[a_valuestd,b_valuestd]=jackknifeGR(mag,mc,nerror);tD=tDays(mag>=mc);

% 
% if length(find(tDays<10))>10  
%     [dayCenter,dayRate]=Days2Rates_v2(tD,tmax);
%     fprintf(['Event ' num2str(events_loop) ' will use d2r_v2 \n'])
%     pause
% else 

    if  events_loop==1 || events_loop==2   || events_loop==3      || events_loop==110 || events_loop==113 ||  events_loop==115 ||  events_loop==117 ||  events_loop==118 ...
            ||  events_loop==121  ||  events_loop==124  || events_loop==126 || events_loop==128  ||  events_loop==130  || events_loop==131 || events_loop==137 ...
            || events_loop==139 || events_loop==143   || events_loop==147  || events_loop==148  || events_loop==91    || events_loop==155  || events_loop==4 || events_loop==5 ...
            || events_loop==6   || events_loop==7 || events_loop==8  || events_loop==9  || events_loop==10 ...
            || events_loop==11 || events_loop==12 || events_loop==13 || events_loop==14 || events_loop==15 ...
            || events_loop==16 || events_loop==17 || events_loop==18 || events_loop==19  ...
            || events_loop==22   || events_loop==23  || events_loop==24 || events_loop==25 || events_loop==26 ...
             || events_loop==-28  || events_loop==29 || events_loop==30 || events_loop==31 ...
               || events_loop==32   || events_loop==33 || events_loop==35 || events_loop==36 || events_loop==37 || events_loop==38 || events_loop==43 ...
                  || events_loop==47  || events_loop==53 || events_loop==54 || events_loop==57 ...
                  || events_loop==59   || events_loop==60 || events_loop==61   || events_loop==64  || events_loop==98 ...
                  || events_loop==96   || events_loop==97    || events_loop==104  || events_loop==106   || events_loop==107  || events_loop==109  || events_loop==103  
        [dayCenter,dayRate]=Days2Rates(tD,tmax);
    else
        [dayCenter,dayRate]=RateCalc_mergeDay1(tD);
    end
    
    if events_loop==4 ;[dayCenter,dayRate]=Days2Rates_mtl(tD,tmax);end
    
    if events_loop==3
        
        dayEnd=[0;10;130;318;700;1500;3000];
        dayCenter=[10;70;140;400;900;2000];
        dayRate=zeros(length(dayEnd)-1,1);
        for i=1:length(dayEnd)-1
            inDay=find(tDays>dayEnd(i) & tDays<dayEnd(i+1));
            dur=dayEnd(i+1)-dayEnd(i);
            dayRate(i)=length(inDay)/dur;
        end
    end
    
seq_dur=10^(0.556*m0-0.6027);
i_end=find(dayCenter>seq_dur,1,'first');
if isempty(i_end);i_end=4;end
if i_end<4 ;i_end=4;end

dC=dayCenter(1:i_end);dR=dayRate(1:i_end);
poly=polyfit(log10(dC+littlec),log10(dR),1);
t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
    
  if  events_loop==2 || events_loop==5 || events_loop==6  ...
          || events_loop==7  || events_loop==9 || events_loop==10 || events_loop==15 ...
          || events_loop==17  || events_loop==22 ...
            || events_loop==155
 iterOmoriFit
  end
  
setOmoriDuration


if events_loop==25 && mc==1.57
    dC=dayCenter([ 1:4 6:10]) ;
    dR=dayRate([ 1:4 6:10]) ;
end

if events_loop==25 && mc==1.37
    dC=dayCenter([ 1:6 10:14]) ;
    dR=dayRate([ 1:6 10:14]) ;
end

if events_loop==131
dC=dayCenter([1:12 21:i_end]);
dR=dayRate([1:12 21:i_end]);
end

if events_loop==11
    okay1=find(dayCenter<2.35);
    okay2=find(dayCenter>4.02 & dayCenter<56);
    okay3=find(dayCenter>110 & dayCenter<8506);
%     okay=find( (dayCenter<25 | dayCenter>26) & (dayCenter<100 & dayCenter>150) & dayCenter<2156);
    okay=[okay1;okay2;okay3];
    dC=dayCenter(okay);
    dR=dayRate(okay);
end
if events_loop==15
    okay1=find(dayCenter<24.4);
    okay2=find(dayCenter>26.5 & dayCenter<96);
    okay3=find(dayCenter>165 & dayCenter<2156);
%     okay=find( (dayCenter<25 | dayCenter>26) & (dayCenter<100 & dayCenter>150) & dayCenter<2156);
    okay=[okay1;okay2;okay3];
    dC=dayCenter(okay);
    dR=dayRate(okay);
end

pfoo=polyfitn(log10(dC+littlec),log10(dR),1);

a=pfoo.Coefficients(2)-b_term;
astd=pfoo.ParameterStd(2);
        log10K=pfoo.Coefficients(2);
        K=10^log10K;
        p=-pfoo.Coefficients(1);
        
    log10K_uncert=pfoo.ParameterStd(2);
    Khigh=10^(log10K+log10K_uncert);
    Klow=10^(log10K-log10K_uncert);
    pstd=pfoo.ParameterStd(1);

    if events_loop==10 && m0==4.47
    bg_rate=2*bg_rate;
    end
      pred=polyval(poly,log10(dayCenter+littlec));
  t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));

if toplot
 figure(events_loop);h4=subplot(3,2,4);h4.Position(1)=h4.Position(1)+0.045;h4.Position(3)=h4.Position(3)-0.05;
 loglog(dayCenter,dayRate,'o','color',[0.55 0.55 0.55],'markerfacecolor',[0.55 0.55 0.55],'markersize',3);axis tight;hold on;grid on
    set(gca,'XTick',[1 30 365 1825 10958],'XTickLabels',{'1 day', '30 days', '1yr', '5yr', '30yr'});
    xlabel('Time since mainshock');ylabel('Daily rate M>=m_c')
     loglog([ min(dayCenter) max(dayCenter)],[bg_rate bg_rate],'r:','linewidth',0.5)
   text(min(dayCenter)+0.5,bg_rate*1.25,'Background rate','color','r','fontsize',8)
   loglog(dC,dR,'o','color',[0.25 0.25 0.25],'markerfacecolor',[0.25 0.25 0.25],'markersize',3)    

    loglog(dayCenter,10.^(pred),'k')
    
   arrowtop=10.^(log10(bg_rate)*(0.65)+log10(max(dayRate))*(0.35));
   arrowtop2=10.^(log10(bg_rate)*(0.4)+log10(max(dayRate))*(0.6));
   arrow([seq_dur arrowtop*0.9], [seq_dur bg_rate],'TipAngle',1,'Length',10);% arrow([mc+range(mags)/3 max(logn(mags>=mc))],[mc+range(mags)/30 max(logn(mags>=mc))],'TipAngle',10,'Length',10);
    text(seq_dur,arrowtop*1.1,[ num2str(seq_dur/365,'%1.2f') ' yr?' ],'HorizontalAlignment','center')

        if events_loop~=26
        if t_end<max(dayCenter)
               arrow([t_end arrowtop2*0.9], [t_end bg_rate],'TipAngle',1,'Length',10);% arrow([mc+range(mags)/3 max(logn(mags>=mc))],[mc+range(mags)/30 max(logn(mags>=mc))],'TipAngle',10,'Length',10);
            text(t_end,arrowtop2*1.1,[ num2str(t_end/365,'%1.2f') ' yr?' ],'HorizontalAlignment','center')
            end 
            if t_end>=max(dayCenter)
                text( max(dayCenter), arrowtop2, [num2str(t_end/365,'%1.2f') ' yr? \rightarrow'],'HorizontalAlignment','right')
            end
        end
        title(['D) Omori Decay ']);%: Rate = ' num2str(poly(2),'%1.2f') ' + ' num2str(b_value,'%1.2f') ' (M-m_c) - ' num2str(p,'%1.2f') ' log_1_0(t)'])
        set(gca,'YTick',[0.001 0.005 0.01 0.05 0.1 0.5  1  5   10])
        grid on


        % Kstd=(Khigh-Klow)/2;
        str = {['a=' num2str(a,'%1.2f') '±' num2str(astd,'%1.2f')] ...
            ['p=' num2str(p,'%1.2f') '±' num2str(pstd,'%1.2f')],  ... 
                    ['b=' num2str(b_value,'%1.2f') '±' num2str(b_valuestd,'%1.2f')]};
        text(max(dayCenter*0.99),max(dayRate),str,'HorizontalAlignment','right','VerticalAlignment','top')
        foo=min([min(dayCenter) seq_dur*0.9]);
        xlim([foo max(dayCenter) ])

        xl=xlim;
        if events_loop==12;xlim([xl(1) 1826]);end
            set(gca,'XTick',[1 30 365 1825 10958],'XTickLabels',{'1 day', '30 days', '1yr', '5yr', '30yr'});

        if max(dayCenter)>3652 && max(dayCenter)< 10958
                set(gca,'XTick',[1 30 365  3652],'XTickLabels',{'1 day', '30 days', '1yr', '10yr'});
        end


        ylimfoo=ylim;
        ybot=min([bg_rate*0.75 min(dayRate)]);
        ylim([ybot max(dayRate)*1.1])


        if events_loop==4
        FA=[ -1.75 0.76 0 1.47];
        predFA=FA(1) + FA(2)*(4.5-FA(3)) - FA(4)*log10(dayCenter+0.05);
         FAMcRescale=FA(2)*(FA(3)-mc);
         predFA=predFA+FAMcRescale;
         predFA=10.^predFA;
          loglog(dayCenter,predFA,'k--','linewidth',1);
        text(1,10,'FA14','rotation',-65)
        end

        if events_loop==25 && mc==1.57
            pred_mc137=log10(dayCenter+littlec)*-1.0077 + 0.4905;
            pred_mc137=pred_mc137+0.73*(1.37-mc);
            loglog(dayCenter,10.^(pred_mc137),'k--')
        end

        if events_loop==16 && mc==1.37
            pred_mc197=log10(dayCenter+littlec)*-0.9466 + 0.1870;
            pred_mc197=pred_mc197;%-1.5271*(1.97-mc);
            loglog(dayCenter,10.^(pred_mc197),'k--')
        end
end
end