

% if events_loop==1;i_end=find(dayCenter<0.24*365.25,1,'last'); 
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end

if events_loop==2;i_end=find(dayCenter<854,1,'last'); 
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==3;i_end=find(dayCenter<840,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==4;i_end=find(dayCenter<60,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==5;i_end=find(dayCenter<1000,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==6;i_end=find(dayCenter<231,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(5:end)+littlec),log10(dR(5:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
if events_loop==7;i_end=find(dayCenter<1240,1,'last'); 
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==8;i_end=find(dayCenter<900,1,'last'); 
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==9;i_end=find(dayCenter<240,1,'last'); 
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==10;i_end=find(dayCenter<655,1,'last'); 
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==11;i_end=find(dayCenter<8220,1,'last'); 
%     snip1=find(dayCenter<2);
%     snip2=find(dayCenter>4 & dayCenter<50);
%     snip3=find(dayCenter>105 & dayCenter<1215 );
%     
%     
%       dC=dayCenter([snip1;snip2;snip3]);
%        dR=dayRate([snip1;snip2;snip3]);
        dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
if events_loop==12;i_end=length(dayCenter);
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
if events_loop==13;i_end=find(dayCenter<2000,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==14;i_end=find(dayCenter<456,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==15;i_end=find(dayCenter<2105,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==16;i_end=find(dayCenter<600,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==17;i_end=find(dayCenter<365,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==18;i_end=find(dayCenter<100,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==19;i_end=find(dayCenter<18250,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
% 
if events_loop==20;i_end=find(dayCenter<420,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
if events_loop==21;i_end=find(dayCenter<312,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==22;i_end=find(dayCenter<325,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==23;i_end=find(dayCenter<23700,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(2:end)+littlec),log10(dR(2:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
if events_loop==24;i_end=find(dayCenter<1900,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(5:end)+littlec),log10(dR(5:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


% if events_loop==26;i_end=find(dayCenter<500,1,'last');
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end

if events_loop==25 || events_loop==157;i_end=find(dayCenter<607,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==28;i_end=find(dayCenter<300,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==29;i_end=find(dayCenter<600,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==30;i_end=find(dayCenter<5825,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==31;i_end=find(dayCenter<4000,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==32;i_end=find(dayCenter<1600,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


% if events_loop==33;i_end=find(dayCenter<1800,1,'last');
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end

if events_loop==35;i_end=length(dayCenter);%find(dayCenter<365,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==36;i_end=find(dayCenter<150,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==37;i_end=find(dayCenter<50,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(3:end)+littlec),log10(dR(3:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==38;i_end=find(dayCenter<1764,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==40;i_end=find(dayCenter<367,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

% if events_loop==42;i_end=find(dayCenter<1526,1,'last');
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC(3:end)+littlec),log10(dR(3:end)),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end
% 

if events_loop==43;i_end=find(dayCenter<98,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end



if events_loop==47;i_end=find(dayCenter<75,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end



if events_loop==50;i_end=find(dayCenter<2830,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==54;i_end=find(dayCenter<142,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==55;i_end=find(dayCenter<365,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==57;i_end=find(dayCenter<171,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==59;i_end=find(dayCenter<200,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end



if events_loop==60;i_end=find(dayCenter<200,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==61
    i_end=find(dayCenter<30,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
if events_loop==62
    i_end=find(dayCenter<3800,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==63;i_end=find(dayCenter<350,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end
% % 


if events_loop==64;i_end=find(dayCenter<35,1,'last');
    if i_end<3;i_end=3;end
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==67;i_end=find(dayCenter<2828,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==76;i_end=find(dayCenter<1665,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

% 
% if events_loop==78;i_end=find(dayCenter<900,1,'last');
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end


if events_loop==86;i_end=find(dayCenter<1000,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(3:end)+littlec),log10(dR(3:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end





if events_loop==91;i_end=find(dayCenter<80,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==96;i_end=find(dayCenter<110,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


% if events_loop==97;i_end=find(dayCenter<1825,1,'last');
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end

if events_loop==98;i_end=find(dayCenter<1682,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==100;i_end=find(dayCenter<4000,1,'last');
      dC=dayCenter(2:i_end);
       dR=dayRate(2:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==103;i_end=find(dayCenter<4000,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==104;i_end=find(dayCenter<187,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==105;i_end=find(dayCenter<1e6,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end




if events_loop==106;i_end=find(dayCenter<570,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end



if events_loop==107;i_end=find(dayCenter<47,1,'last');
    i_start=1;%find(dayCenter>150,1,'first');
      dC=dayCenter(i_start:i_end);
       dR=dayRate(i_start:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end



if events_loop==109;i_end=find(dayCenter<515,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==110;i_end=find(dayCenter<1e9,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==113;i_end=find(dayCenter<30000,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end



if events_loop==114;i_end=find(dayCenter<365,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==115;i_end=find(dayCenter<365,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==117;i_end=find(dayCenter<12,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==119;i_end=find(dayCenter<1e6,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==120;i_end=find(dayCenter<1000,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==121;i_end=find(dayCenter<160,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==124;i_end=find(dayCenter<31,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==126;i_end=find(dayCenter<148,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==128;i_end=find(dayCenter<1359,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(1:end)+littlec),log10(dR(1:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end



if events_loop==130;i_end=find(dayCenter<10,1,'last');
    if i_end<3;i_end=3;end
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC(2:end)+littlec),log10(dR(2:end)),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==131;i_end=find(dayCenter<400,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==137;i_end=find(dayCenter<365,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==138;i_end=find(dayCenter<1227,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==139;i_end=find(dayCenter<3920,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


if events_loop==142;i_end=find(dayCenter<3208,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==143;i_end=find(dayCenter<500,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==147;i_end=find(dayCenter<175,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end

if events_loop==148;i_end=find(dayCenter<365,1,'last');
      dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
end


% if events_loop==999;i_end=find(dayCenter<545,1,'last');
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end


% 
% if events_loop==157;i_end=find(dayCenter<2700,1,'last');
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
% end






% 
%   
%   if events_loop==37;i_end=find(dayCenter<1000,1,'last'); 
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
%   end
%   
%   if events_loop==43 ;i_end=find(dayCenter<365,1,'last'); 
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
%   end
%   s
%   if  events_loop==47;i_end=find(dayCenter<500,1,'last'); 
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
%   end
%   
%    if  events_loop==54;i_end=find(dayCenter>213,1,'first'); 
%       dC=dayCenter(1:i_end);
%        dR=dayRate(1:i_end);
%        poly=polyfit(log10(dC+littlec),log10(dR),1);
%       t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));
%   end