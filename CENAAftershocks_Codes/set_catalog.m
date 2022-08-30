catalog=catalog_;
if events_loop<=70
catalog=catalog(catalog(:,5)>=1974 & catalog(:,2)>=-96,:);
end
if events_loop>70 && events_loop<=87
    catalog=catalog(catalog(:,5)>=1974 & catalog(:,2)>=-107 & catalog(:,2)<=-94 & catalog(:,3)>29,:);
end
if events_loop>87
OKPoly=[-99.5 36.5 ; -98.5 37.5 ; -97 37.5; -97 36.5; -96.5 36.5; -96.5 35.5; -96 35.5; -96 35.25; -97.5 35.25; -97.5 36;  -98.75 36; -99.5 36.5 ];
OKKS=find(inpolygon(catalog(:,2),catalog(:,3),OKPoly(:,1),OKPoly(:,2)) & catalog(:,5)>2008);
catalog(OKKS,:)=0;
Raton=find(abs(catalog(:,3)-37)<0.5 & abs(catalog(:,2)--105)<0.5);
catalog(Raton,:)=0;
catalog=catalog(catalog(:,5)>=1974 & catalog(:,2)>=-107 & catalog(:,2)<=-55 & catalog(:,3)>29,:);
end

mag=catalog(:,1);Lon=catalog(:,2);Lat=catalog(:,3);z=catalog(:,4);yr=catalog(:,5);mo=catalog(:,6);day=catalog(:,7);hr=catalog(:,8);minute=catalog(:,9);sec=catalog(:,10);
pre_day=0*day;pre_day(mo==2)=31;pre_day(mo==3)=31+28;pre_day(mo==4)=31+28+31;pre_day(mo==5)=31+28+31+30;pre_day(mo==6)=31+28+31+30+31;pre_day(mo==7)=31+28+31+30+31+30;pre_day(mo==8)=31+28+31+30+31+30+31;pre_day(mo==9)=31+28+31+30+31+30+31+31;pre_day(mo==10)=273;pre_day(mo==11)=304;pre_day(mo==12)=334;
dec_yr=yr+(pre_day+day)/365+hr/(24*365)+minute/(60*24*365)+sec/(60*60*24*365);
FtP=find(mag==4.59 & yr==2003);Lon(FtP)=-85.630;Lat(FtP)=34.494;
Goodnow=find(mag==4.83 & yr==1983);Lon(Goodnow)=-74.258;Lat(Goodnow)=43.938;
NMfoo=find(Lon==-90.13 & yr==1974 & mo==3 & day==27);mag(NMfoo)=2.4;
TXfoo=find(yr==2005 & mag==4.14 & day==19 & hr==20,1,'last');Lon(TXfoo)=0;mag(TXfoo)=-999;
Steele=find(yr==1989 & mag==4.28);Lat(Steele)=Lat(Steele)+0.09;
Simeon=find(yr==1976 & mag==4.05);Lon(Simeon)=Lon(Simeon)-0.05;Lat(Simeon)=Lat(Simeon)-0.05;
Simeon2=find(yr==1994 & mag==3.87);Lon(Simeon)=Lon(Simeon)-0.075;
lEpine=find(yr==1990 & mag==3.67);Lon(lEpine)=Lon(lEpine)-0.065;Lat(lEpine)=Lat(lEpine)-0.065;
clear Simeon* lEpine OKPoly OKKS Raton Steele NMfoo Miramichi FtP Goodnow TXfoo

set_littlec