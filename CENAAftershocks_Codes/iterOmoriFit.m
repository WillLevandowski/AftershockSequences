 

niter=5;
  
   for iterations=1:niter
       i_end=find(dayCenter>=t_end,1,'first');
       if isempty(i_end);i_end=length(dayCenter);end
        if i_end<4;i_end=4;end
        dC=dayCenter(1:i_end);
       dR=dayRate(1:i_end);
       poly=polyfit(log10(dC+littlec),log10(dR),1);
      t_end=10.^( (log10(bg_rate)-poly(2))/poly(1));

   end