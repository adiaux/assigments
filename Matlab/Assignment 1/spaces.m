 a = [1 2 3
     2 5 6
     7 8 9];
 A = [1 2 3
     2 5 6
     7 8 9];
[m,n]=size(a);
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
x=zeros(1,m);
for s=m:-1:1
    c=0;
    for k=2:m
        c=c+a(s,k)*x(k);
    end
    x(s)=(a(s,n)-c)/a(s,s);
end
rref(a); %As the vectors are linaerly independent we choose all vectors for the basis of the matrix 
A1=A(:,1);
A2=A(:,2);
A3=A(:,3);
for i=1:10000
    a1=-1+rand()*2;
    b1=-1+rand()*2;
    c1=-1+rand()*2;
    pts1=[pts1 a1*A2+b1*A2+c1*A3];
end
figure
scatter3(pts1(:,1),pts1(:,2),pts1(:,3),1);
