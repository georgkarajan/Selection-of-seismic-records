function [axnew,aynew,aznew]=plots_AI(a1,AI,t0,tf,AI0,AIf,Du)
    plot(a1(:,1),AI,'linewidth',2,'Color',[0 0 0])
    hold on
    axis([0 a1(end,1) 0 AI(end)])
    plot([t0 t0],[0 AI0],'--k','linewidth',1)
    plot([0 t0],[AI0 AI0],'--k','linewidth',1)
    plot([tf tf],[0 AIf],'--k','linewidth',1)
    plot([0 tf],[AIf AIf],'--k','linewidth',1)   
    plot([t0 tf],[(AI0+AIf)/2 (AI0+AIf)/2],'--r','linewidth',1)
    scatter(t0,(AI0+AIf)/2,100,'linewidth',2,'MarkeredgeColor',[1 0 0])
    scatter(tf,(AI0+AIf)/2,100,'linewidth',2,'MarkeredgeColor',[1 0 0])
    legend('AI');
    xlabel('t (sec)')
    ylabel('Arias Intensity (m/s)')
    set(gca,'FontSize',24, 'FontName','times','Color','w','LineWidth',2);
    n1 = num2str(Du,4);
    n2=num2str(AI(end),3);
    text((tf-t0)/2, (AI0+AIf)/2+AI0,['Du=',n1,' sec',', AI=',n2, ' m/s]'],'fontsize',20)
end
    