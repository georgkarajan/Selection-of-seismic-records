function []=plots_shorted(axnew,aynew,aznew)
    figure()
    plot(axnew(:,1),axnew(:,2),'k','linewidth',1)
    [~,I]=max(abs(axnew(:,2)));
    hold on
    scatter(axnew(I,1),axnew(I,2),110,'Linewidth',4,'MarkerEdgeColor','r')
    b = num2str(round(axnew(I,2),2)); c = cellstr(b);
    text(axnew(I,1)+0.6,axnew(I,2),c,'fontsize',20,'Color','r')
    set(gca,'FontSize',24, 'FontName','times','Color','w','LineWidth',2);
    title('5-95% AI - X direction')
    xlabel('t (sec)')
    ylabel('Accel (g)')
    maxy=max(max(axnew(:,2)),max(aynew(:,2)));
    miny=min(min(axnew(:,2)),min(aynew(:,2)));
    axis([0 axnew(end,1) miny maxy])    
    figure()
    plot(aynew(:,1),aynew(:,2),'k','linewidth',1)
    [~,I]=max(abs(aynew(:,2)));
    hold on
    scatter(aynew(I,1),aynew(I,2),110,'Linewidth',4,'MarkerEdgeColor','r')
    b = num2str(round(aynew(I,2),2)); c = cellstr(b);
    text(aynew(I,1)+0.6,aynew(I,2),c,'fontsize',20,'Color','r')
    set(gca,'FontSize',24, 'FontName','times','Color','w','LineWidth',2);
    title('5-95% AI - Y direction')
    xlabel('t (sec)')
    ylabel('Accel (g)')
    axis([0 axnew(end,1) miny maxy])    
    figure()
    plot(aznew(:,1),aznew(:,2),'k','linewidth',1)
    [~,I]=max(abs(aznew(:,2)));
    hold on
    scatter(aznew(I,1),aznew(I,2),110,'Linewidth',4,'MarkerEdgeColor','r')
    b = num2str(round(aznew(I,2),2)); c = cellstr(b);
    text(aznew(I,1)+0.6,aznew(I,2),c,'fontsize',20,'Color','r')
    set(gca,'FontSize',24, 'FontName','times','Color','w','LineWidth',2);
    title('5-95% AI - Z direction')
    xlabel('t (sec)')
    ylabel('Accel (g)')
    axis([0 axnew(end,1) miny maxy])
end
    