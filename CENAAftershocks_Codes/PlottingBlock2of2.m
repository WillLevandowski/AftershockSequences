 rr=(0:1:50);tt=[(0:0.05:0.5)'; (0.6:0.1:1.5)';(1.75:0.25:10)']; [rr,tt]=meshgrid(rr,tt);
    F=scatteredInterpolant(ave_r,outcomes(:,3),outcomes(:,6),'natural','linear');
    rats=F(rr,tt);rats_all(:,:,events_loop)=rats;
    names_saveRates

    h2=subplot(3,2,5:6);
    rats=scaleRates(rats);rats(rats>2)=2;
    contours= -0.03:0.1:1.5;
    contour(tt,rr,rats,contours,'fill','on');hold on;
    ylim([5 50]);grid on;colormap(jetDecluster);
    colorbar('Ticks',[-2 -1 0 0.1 1 1.477  ],'TickLabels',{'-20','-10','0','1','10','30','100'});
    xlim([0 5]);%if max(after)<5;xlim([0 max(after)]);end

    xlabel('Years since mainshock');ylabel('Epicentral distance, km');
    title('E) EQ Rate minus Background (M_w2.5  (2,000 km^2 yr)^-^1)');
    caxis([-0.03 1.5])
    plot([0 GK74_dur GK74_dur 0 0],[0 0 GK74_r GK74_r 0],'--','color',[0.65 0.65 0.65],'linewidth',2);
    text(2.7,184,figtitle,'HorizontalAlignment', 'center','FontSize',24,'FontWeight','Bold')

    h1=subplot(3,2,3);h1.Position(3)=h1.Position(3)*0.9;
    m=mag(Main);sz=(m-1)*10;c=[interp1(m2c(:,1),m2c(:,2),m) interp1(m2c(:,1),m2c(:,3),m) interp1(m2c(:,1),m2c(:,4),m) ];plot(0,0,'o','markeredgecolor',c,'markerfacecolor',c,'MarkerSize',sz);hold on
    plot([0 GK74_dur GK74_dur 0 0],[0 0 GK74_r GK74_r 0],'-','color',[0.65 0.65 0.65],'linewidth',1)

     plot( [0 5], [GK74_r GK74_r], 'k--','linewidth',1)
     if events_loop==126
         text(GK74_dur-0.25, 0.9*r_af, '\downarrow Aftershocks(?) \rightarrow ')
     else
         text(GK74_dur+0.25, 0.9*r_af, '\downarrow Aftershocks(?) \rightarrow ')
     end
        m=mag(regional);mu=unique(m); t=after(regional);   r_=r(regional);%.^2*pi;
    for j=1:length(mu)
          this_mag=mu(j);
          if this_mag>=mc
          c=[interp1(m2c(:,1),m2c(:,2),this_mag) interp1(m2c(:,1),m2c(:,3),this_mag) interp1(m2c(:,1),m2c(:,4),this_mag) ];
          sz=(this_mag-1)*10;if sz<5;sz=5;end%  
          same_mag=find(m==this_mag);
         plot(t(same_mag),r_(same_mag),'o','markeredgecolor',c,'MarkerSize',sz,'linewidth',1)%                  text(after(af_all(j)),r(af_all(j)),num2str(m),'color',c,'fontsize',12,'horizontalalignment','center','clipping','on')
          end
    end
    xlabel('Years since mainshock');ylabel('Epicentral distance, km');title('C) Post-mainshock seismicity');xlim([0 5]);ylim([0 50]);grid on
    plotMagSizeScale
    name=['M' num2str( round(m0*100)) '_' num2str( yr(Main)) ]; %saveas(gcf,name,'jpg')
    xlim([0 5]);%if max(after)<5;xlim([0 max(after)]);end
    if events_loop==126;xlim([0 1.3]);plotMagSizeScaleSparta; end