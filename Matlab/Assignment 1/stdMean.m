clear all;
close all;
MeanActual=[0;0];
CovActual=[2 1;1 1];
N=1000;
D=mvnrnd(MeanActual,CovActual,N);
MeanFromData=mean(D);
DMS=D-MeanFromData;
SctrMatrix=DMS'*DMS;
CovFromData=SctrMatrix/(N-1);
MeanFromData
CovFromData

scatter(DMS(:,1),DMS(:,2));
hold on;
%Eigen valaues
[u1,v1]=eigs(SctrMxatrix);
u1
v1
[u2,v2]=eigs(CovFromData);
u2
v2
%plot
PrincDir1=u1(:,1);
%set x min and max range
xmin=min(DMS(:,1));
xmax=max(DMS(:,1));
xpoints=linspace(xmin,xmax,1000);
slope=PrincDir1(2)/PrincDir1(1);
c=MeanFromData(2)-slope*MeanFromData(1);
ypoints=slope*xpoints+c;
scatter(xpoints,ypoints,4,[1 0 0]);
hold on;