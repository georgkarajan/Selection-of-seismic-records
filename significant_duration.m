%% Significant duration of ground motion for fragility analysis
% ========IMPORTANT NOTES=========
% 1. THE SIGNIFICANT DURATION IS SELECTED BASED ON TWO OR THREE COMPONENTS.
% 2. THE RECORD FILES ARE READ ALONG EACH ROW, AS THEY EXIST IN COMMON DATABASE E.G. NWA-WEST2 
% 3. MAKE SURE THAT ALL ROWS HAVE THE SAME NUMBER OF COLUMNS
% 4. ACCELERATION UNIT OF RECORDS IN G
% !add spectrum estimation, velocity record and pulse-like record
% !identification
% dt=time step of seismic record
% AI=max Arias Intensity between X and Y direction
clear all

%% Import records from files
dt=input('please insert time step of seismic record. dt=');

%% X component
ax=load('RSN8492_SIERRA.MEX_N5062HLE.AT2');
[AIx,AIfx,AI0x,Dux,tfx,t0x,a1x,indx0,indxf]=time_limits(ax,dt);

%% Y component
ay=load('RSN8492_SIERRA.MEX_N5062HLN.AT2');
[AIy,AIfy,AI0y,Duy,tfy,t0y,a1y,indy0,indyf]=time_limits(ay,dt);

%% Consider Z component in the significant duration only in near-source conditions
s=input('If you are interested in vertical component, insert 1 or 0 otherwise. s=');
if s==1
    az=load('RSN8492_SIERRA.MEX_N5062HLZ.AT2');
    [AIz,AIfz,AI0z,Duz,tfz,t0z,a1z,indz0,indzf]=time_limits(az,dt);
else
    disp('the vertical component will not be considered in the significant duration')
    indz0=0;
    indzf=0;
    t0z=0;
    tfz=0;
    az=load('RSN1294_CHICHI_HWA048-V.AT2');
    sum=0; 
    g=9.81;
    for i=1:size(az,1)
        for j=1:size(az,2)
        sum=sum+1;
        a1z(sum,2)=az(i,j);
        end
    end
    a1z(:,1)=0:dt:((length(a1z)-1)*dt);
end

%% plot of max (AIx,AIy) and new record assignment

if AIx(end)<=AIy(end)
    disp('the energy in the Y direction is greater')
    d=1;
    plots_AI(a1y,AIy,t0y,tfy,AI0y,AIfy,Duy);
    [axnew,aynew,aznew]=new_assignment(ax,ay,az,a1x,a1y,a1z,indx0,indy0,indz0,indxf,indyf,indzf,t0x,t0y,t0z,tfx,tfy,tfz,dt,d,s);
elseif AIx(end)>AIy(end)
    disp('the energy in the X direction is greater')
    d=2;
    plots_AI(a1x,AIx,t0x,tfx,AI0x,AIfx,Dux);
    [axnew,aynew,aznew]=new_assignment(ax,ay,az,a1x,a1y,a1z,indx0,indy0,indz0,indxf,indyf,indzf,t0x,t0y,t0z,tfx,tfy,tfz,dt,d,s);
else
    disp('the energy in the Z direction is greater')
    d=3;
    plots_AI(a1z,AIz,t0z,tfz,AI0z,AIfz,Duz);
    [axnew,aynew,aznew]=new_assignment(ax,ay,az,a1x,a1y,a1z,indx0,indy0,indz0,indxf,indyf,indzf,t0x,t0y,t0z,tfx,tfy,tfz,dt,d,s);
end

    

%% New check if the max input PGA is the same with the new one for each direction
if s==1
    if max(max(abs(ax)))== max(abs(axnew(:,2))) && max(max(abs(ay)))== max(abs(aynew(:,2))) && max(max(abs(az)))== max(abs(aznew(:,2)))
        disp('the PGA is now the same in all directions')
    else
        disp('the PGA is not the same in all direcitons. check the code')
    end
else
    if max(max(abs(ax)))== max(abs(axnew(:,2))) && max(max(abs(ay)))== max(abs(aynew(:,2)))
        disp('the PGA is now the same in all directions')
    else
        disp('the PGA is not the same in all direcitons. check the code')
    end
end
pgax=max(abs(axnew(:,2)));
pgay=max(abs(aynew(:,2)));
pgaz=max(abs(aznew(:,2)));

%% plot shorted records
plots_shorted(axnew,aynew,aznew)

%% Export records into .txt file
save('x1215.txt', 'axnew', '-ASCII');
save('y1215.txt', 'aynew', '-ASCII');
save('z1215.txt', 'aznew', '-ASCII');


