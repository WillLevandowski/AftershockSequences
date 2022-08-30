%%% magnitude r g b
m2c=[ 
    -10 1 1 1;  
    0 1 1 1;  
    1 0 0 0;  
    1.5 1 1 0;  
    2 1 0 0;  
    2.5 1 0 1;  
    3 0 0 1;  
    4 0 0 0;  
    10 0 0 0
    ];


figure(events_loop)
        subplot(3,2,1) ;hold on;set(gcf, 'Position', [0 0 500 700]);   grid on
        plot(0,0,'o','markeredgecolor','k','MarkerSize',(m0-1)*3,'linewidth',1.5)
        plot( [bg_start bg_start bg_end ]-dec_yr(Main) , [0 r_bg r_bg ], 'k--','linewidth',1)
         text(bg_start-dec_yr(Main), 0.9*r_bg, '\downarrow "Background" \rightarrow ')

        m=mag(regional);mu=unique(m); t=after(regional);   r_=r(regional);%.^2*pi;
            for j=1:length(mu)
                 this_mag=mu(j);
                 if this_mag>=mc
                    same_mag=find(m==this_mag);
                    sz=(this_mag-1)*3;if sz<0.25;sz=0.25;end
                    c=[interp1(m2c(:,1),m2c(:,2),this_mag) interp1(m2c(:,1),m2c(:,3),this_mag) interp1(m2c(:,1),m2c(:,4),this_mag) ];
                    plot(t(same_mag),r_(same_mag),'o','markeredgecolor',c,'MarkerSize',sz,'linewidth',1)
                 end
            end

    plot([0 GK74_dur GK74_dur 0 0],[0 0 GK74_r GK74_r 0],'k')
    xlabel('Years since mainshock');ylabel('Epicentral distance, km');title('A) Long-term regional seismicity'); 
    xlim([-bg_duration total_duration]);ylim([0 r_mc])
    if events_loop==126;xlim([-bg_duration 1.3]);end

    subplot(3,2,2);
    plot(mags,logn,'ko','linewidth',2);hold on;plot(mags(mags<mc),logn(mags<mc),'o','color',[0.5 0.5 0.5],'linewidth',2);
    plot(magplot,pp,'k');
    xlabel('M_w');ylabel('# events');yticks([0 1 2 3]);yticklabels({'1','10','100','1000'});title('B) Regional seismicity');grid on
    xleft=max([min(mags(mags>=1))-range(mags)/10 1 ]);
    xlim([xleft max(mags)+range(mags)/10]);ylim([-range(logn)/10 max(logn)+range(logn)/10]);

    if events_loop==13 && mc==0.98;mc=2.01;end
    arrow([mc max(logn(mags>=mc))/3],[mc max(logn(mags>=mc))],'TipAngle',10,'Length',10);% arrow([mc+range(mags)/3 max(logn(mags>=mc))],[mc+range(mags)/30 max(logn(mags>=mc))],'TipAngle',10,'Length',10);
    text(mc+0.02,max(logn(mags>=mc))/3,['M_c=' num2str(mc,'%1.2f') ])
    if events_loop==13 && mc==2.01;mc=0.98;end

    text(max(mags),max(logn(mags>=mc)),['b = ' num2str(-b_regional,'%1.2f') '±' num2str(b_regional_uncert,'%1.2f')],'HorizontalAlignment','right')
