close all;
x1=[0 1 0]';
y1=[0 0 1]';
x2=[1 0 0]';
y2=[0 1 0]';
pts1=[ ];
pts2=[ ];
for i=1:10000
    a1=-1+rand()*2;
    b1=-1+rand()*2;
    a2=-1+rand()*2;
    b2=-1+rand()*2;
    pts1=[pts1 a1*x1+b1*y1];
    pts2=[pts2 a2*x2+b2*y2];
end
figure
scatter3(pts1(1,:),pts1(2,:),pts1(3,:),1);
hold on
scatter3(pts2(1,:),pts2(2,:),pts2(3,:),1);