if y0==2008 && m0==3.72;dec_yr(Main)=dec_yr(Main)-0.005;end
% if y0==1988 && m0==5.84;dec_yr(Main)=dec_yr(Main)-0.0072;end
% if y0==1985 && m0==3.65;dec_yr(Main)=dec_yr(Main)-0.00002;end
if y0==2002 && m0==4.00;dec_yr(Main)=dec_yr(Main)-0.01;end
if y0==1984 && m0==3.97;dec_yr(Main)=dec_yr(Main)-0.045;end
% if y0==2019 && m0==3.69 && Lon(Main)==-89.44;dec_yr(Main)=dec_yr(Main)-0.022;end
if y0==2011 && m0==3.86;Main=find(yr==y0 & mag==m0,1,'last');end
if y0==2006 && m0==3.98;Main=find(yr==y0 & mag==m0,1,'first');end



% if events_loop==3
% %    dec_yr(Main)=dec_yr(Main)-25/365.25;
%    Main = find(mag==2.27 & dec_yr-dec_yr(Main)<-0.168 & dec_yr-dec_yr(Main)>-0.169);
% end
    
if events_loop==43; dec_yr(Main)=dec_yr(Main)-0.1241;end
if events_loop==47; dec_yr(Main)=dec_yr(Main)-0.03694;end % if events_loop==47; Main=Main-14;end
if events_loop==54; dec_yr(Main)=dec_yr(Main)+15/365;end
if events_loop==59;dec_yr(Main)=dec_yr(Main)-1e-8;end
% if events_loop==59;m0=3.77;end %%% La Misere 3.77 preceded by 3.60 @ r=25

if events_loop==61; dec_yr(Main)=dec_yr(Main)-0.0007;end
if events_loop==62; dec_yr(Main)=dec_yr(Main)-0.09;end
if events_loop==64
%     dec_yr(Main)=dec_yr(Main)-0.0351;
%     Main=find(Lon==-89.8600 & Lat==36.56 & yr==y0);% & mag==m0 & yr==y0);
%     m0=3.74; %%% mainshock shortly after
end

if events_loop==76
    Main=find(Lon==-104.94 & Lat==39.75 & yr==y0);% & mag==m0 & yr==y0);
    Lon(Main)=Lon(Main+1);Lat(Main)=Lat(Main+1);
    m0=4.18; %%% mainshock shortly after
end



if events_loop==97
    dec_yr(Main)=dec_yr(Main)-1e-5;
%     Main=Main-1;% & mag==m0 & yr==y0);
%     Lon(Main)=Lon(Main+1);Lat(Main)=Lat(Main+1);
%     m0=mag(Main+1); %%% mainshock shortly after
end

if events_loop==107;
    Main=find(dec_yr<dec_yr(Main)+91.4/365.25 & abs(Lat-Lat(Main))<0.1 & ...
        abs(Lon-Lon(Main))<0.1 & dec_yr>dec_yr(Main)+91.3/365.25 ) ;
    
%     af=find( abs(Lat-Lat(Main))<0.1 & ...
%         abs(Lon-Lon(Main))<0.1 & dec_yr>dec_yr(Main) ) ;
end

if events_loop==114
    dec_yr(Main)=dec_yr(Main)-0.01;
%     Main=Main-1;% & mag==m0 & yr==y0);
%     Lon(Main)=Lon(Main+1);Lat(Main)=Lat(Main+1);
%     m0=mag(Main+1); %%% mainshock shortly after
end


    

if events_loop==79;Main=find(yr==y0 & mag==m0,1,'first');end
if events_loop==80;Main=find(yr==y0 & mag==m0,1,'last');end
if events_loop==96;Main=find(yr==y0 & mag==m0,1,'last');end
if events_loop==100;Main=find(yr==y0 & mag==m0,1,'last');end
if events_loop==106;Main=find(yr==y0 & mag==m0,1,'last');end
if events_loop==113;Main=find(yr==y0 & mag==m0,1,'last');m0=3.67;end
% if events_loop==119;Main=find(yr==y0 & mag==m0,1,'last'); m0=3.67;end
if events_loop==125;Main=find(yr==y0 & mag==m0,1,'last');end
% if events_loop==115;Main=find(yr==y0 & mag==m0,1,'last');end
if events_loop==143;Main=find(yr==y0 & mag==m0,1,'last');end

 if events_loop==24 || events_loop==156
% %  Main=find(mag==4.1900 & Lon==-71.2000   & Lat==48.1300);
 m0=5.84;
%  dec_yr(Main)=dec_yr(Main)-1.4e-6;
 end %%% Saguenay begins with 4.19, then 5.8, 5.84 Starting on the 4.19 leaves a lag to aftershocks that leads to enormous p exponent
% if events_loop==63
%  Main=find(mag==1.67 & Lon==-67.280   & Lat==49.37 & yr==1986); %%% immediate foreshock of Godbout 
%  m0=3.73;
% end
% if events_loop==124
% % %     Main=find(yr==2019 & mag==2.1263 & Lon==-89.4720 & Lat==36.2090 );
% %     m0=3.69; %%% the largest event, 12.33 days later
%     dec_yr(Main)=dec_yr(Main)-0.0063;
% end
% 
if events_loop==126; dec_yr(Main)=dec_yr(Main)-0.0028577;end
if events_loop==130; dec_yr(Main)=dec_yr(Main)+8/365;end


% if events_loop==131
%         tm=Lat(Main);lm=Lon(Main);
%     Main=find(yr==2006 & mag==1.97 & Lon==-68.17 & Lat==44.44,1,'first');
%     m0=3.87; Lon(Main)=lm ; Lat(Main)=tm; %%% the mainshock 10.6 days later
% end
    
if events_loop==131 %%% begin sequence on M2.97 at 0.09 days
%         tm=Lat(Main);lm=Lon(Main);
%     Main=find(yr==2006 & mag==2.97 & Lon==-68.17 & Lat==44.44,1,'first');
Main=9999;m0=3.87;    
% m0=3.87; Lon(Main)=lm ; Lat(Main)=tm; %%% the mainshock 10.6 days later
end

if events_loop==136
    Main=find(mag==2.97 & yr==1984 & Lon==-80.8 & Lat==46.58);
    m0=3.97;
end

if events_loop==137
%     Main=find(yr==1994 & mag==2.39 & Lon==-97.5230 & Lat==34.7940,1,'first');
    m0=3.68; %%% the mainshock 10.6 days later
    dec_yr(Main)=dec_yr(Main)-0.0809;
end

 

if events_loop==78
    Main=4374;
end