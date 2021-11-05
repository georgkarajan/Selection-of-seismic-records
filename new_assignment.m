function [axnew,aynew,aznew]=new_assignment(ax,ay,az,a1x,a1y,a1z,indx0,indy0,indz0,indxf,indyf,indzf,t0x,t0y,t0z,tfx,tfy,tfz,dt,d,s)
if s==1
    if d==1
    axnew(:,2)=a1x(indy0:indyf,2);
    axnew(:,1)=0:dt:(length(axnew)-1)*dt;
    aynew(:,2)=a1y(indy0:indyf,2);
    aynew(:,1)=0:dt:(length(aynew)-1)*dt;
    aznew(:,2)=a1z(indy0:indyf,2);
    aznew(:,1)=0:dt:(length(aznew)-1)*dt;
    if max(max(abs(ax)))~= max(abs(axnew(:,2)))
        disp('the PGA is not the same in X direction. Change of bounds')
        if tfy<tfx & t0y>t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfy<tfx & t0y<t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfy>tfx & t0y>t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    elseif max(max(abs(az)))~= max(abs(aznew(:,2)))
        disp('the PGA is not the same in Z direction. Change of bounds')
        if tfy<tfz & t0y>t0z
            clear axnew aynew aznew
            axnew(:,2)=a1x(indz0:indzf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indz0:indzf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indz0:indzf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfy<tfz & t0y<t0z
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indzf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indzf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indzf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfy>tfz & t0y>t0z
            clear axnew aynew aznew
            axnew(:,2)=a1x(indz0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indz0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indz0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    end
    
    end
    if d==2
    axnew(:,2)=a1x(indx0:indxf,2);
    axnew(:,1)=0:dt:(length(axnew)-1)*dt;
    aynew(:,2)=a1y(indx0:indxf,2);
    aynew(:,1)=0:dt:(length(aynew)-1)*dt;
    aznew(:,2)=a1z(indx0:indxf,2);
    aznew(:,1)=0:dt:(length(aznew)-1)*dt;
    if max(max(abs(ay)))~= max(abs(aynew(:,2)))
        disp('the PGA is not the same in Y direction. Change of bounds')
        if tfx<tfy && t0x>t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfx<tfy && t0x<t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfx>tfy && t0x>t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    elseif max(max(abs(az)))~= max(abs(aznew(:,2)))
        disp('the PGA is not the same in Z direction. Change of bounds')
        if tfx<tfz && t0x>t0z
            clear axnew aynew aznew
            axnew(:,2)=a1x(indz0:indzf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indz0:indzf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indz0:indzf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfx<tfz && t0x<t0z
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indzf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indzf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indzf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfx>tfz && t0x>t0z
            clear axnew aynew aznew
            axnew(:,2)=a1x(indz0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indz0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indz0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    end
    end
    if d==3
    axnew(:,2)=a1x(indz0:indzf,2);
    axnew(:,1)=0:dt:(length(axnew)-1)*dt;
    aynew(:,2)=a1y(indz0:indzf,2);
    aynew(:,1)=0:dt:(length(aynew)-1)*dt;
    aznew(:,2)=a1z(indz0:indzf,2);
    aznew(:,1)=0:dt:(length(aznew)-1)*dt;
    if max(max(abs(ay)))~= max(abs(aynew(:,2))) 
        disp('the PGA is not the same in Y direction. Change of bounds')
        if tfz<tfy && t0z>t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfz<tfy && t0z<t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indz0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indz0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indz0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfz>tfy && t0z>t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indzf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indzf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indzf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    elseif max(max(abs(az)))~= max(abs(aznew(:,2)))
        disp('the PGA is not the same in X direction. Change of bounds')
        if tfz<tfx && t0z>t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfz<tfx && t0z<t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indz0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indz0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indz0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfz>tfx && t0z>t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indzf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indzf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indzf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    end
end
else
    if d==1
    axnew(:,2)=a1x(indy0:indyf,2);
    axnew(:,1)=0:dt:(length(axnew)-1)*dt;
    aynew(:,2)=a1y(indy0:indyf,2);
    aynew(:,1)=0:dt:(length(aynew)-1)*dt;
    aznew(:,2)=a1z(indy0:indyf,2);
    aznew(:,1)=0:dt:(length(aznew)-1)*dt;
    if max(max(abs(ax)))~= max(abs(axnew(:,2)))
        disp('the PGA is not the same in X direction. Change of bounds')
        if tfy<tfx && t0y>t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfy<tfx && t0y<t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfy>tfx && t0y>t0x
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    end    
    end
    if d==2
    axnew(:,2)=a1x(indx0:indxf,2);
    axnew(:,1)=0:dt:(length(axnew)-1)*dt;
    aynew(:,2)=a1y(indx0:indxf,2);
    aynew(:,1)=0:dt:(length(aynew)-1)*dt;
    aznew(:,2)=a1z(indx0:indxf,2);
    aznew(:,1)=0:dt:(length(aznew)-1)*dt;
    if max(max(abs(ay)))~= max(abs(aynew(:,2)))
        disp('the PGA is not the same in Y direction. Change of bounds')
        if tfx<tfy && t0x>t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfx<tfy && t0x<t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indx0:indyf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indx0:indyf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indx0:indyf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt;
        elseif tfx>tfy && t0x>t0y
            clear axnew aynew aznew
            axnew(:,2)=a1x(indy0:indxf,2);
            axnew(:,1)=0:dt:(length(axnew)-1)*dt;
            aynew(:,2)=a1y(indy0:indxf,2);
            aynew(:,1)=0:dt:(length(aynew)-1)*dt;
            aznew(:,2)=a1z(indy0:indxf,2);
            aznew(:,1)=0:dt:(length(aznew)-1)*dt; 
        end
    end
    end
end
end