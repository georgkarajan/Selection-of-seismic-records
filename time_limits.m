function [AI,AIf,AI0,Du,tf,t0,a1,ind0,indf]=time_limits(a,dt)

%% X-direction
sum=0;
g=9.81;
for i=1:size(a,1)
    for j=1:size(a,2)
        sum=sum+1;
        a1(sum,2)=a(i,j);
    end
end
a1(:,1)=0:dt:((length(a1)-1)*dt);

for i=1:length(a1)
    ai(i)=(a1(i,2)*g).^2*dt;
    if i==1
        AI(i)=ai(i)*pi()/(2*g);
    else
        AI(i)=ai(i)*pi()/(2*g)+AI(i-1);
    end
end

sum1=0;
sum2=0;
ind=1;
AIf=0.95*AI(end);
AI0=0.05*AI(end);
for i=1:length(AI)
    if round(AI(i),3)==round(AIf,3)
        tf=a1(i,1);
        indf=i;
        sum1=1;
    end
    if round(AI(i),3)==round(AI0,3) && ind==1
        t0=a1(i,1);
        ind=0;
        ind0=i;
        sum1=1;
    end
end
if sum1==0 || sum2==0
    for i=1:length(AI)
        if round(AI(i),2)==round(AIf,2)
        tf=a1(i,1);
        indf=i;
        end
        if round(AI(i),2)==round(AI0,2) && ind==1
        t0=a1(i,1);
        ind=0;
        ind0=i;
        end
    end
end
Du=tf-t0;
end