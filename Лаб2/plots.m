close all;

%Модификация для S:
figure()
S1 = 0; S2 = 0.75; S3 = 0;
x=[0:0.01:2];
yS1=ones([1,50]).*S1;
yS1=[yS1, (1-x(51:100))./(0.5).*S1];
yS1=[yS1, zeros([1,101])];
plot(x,yS1, 'Linewidth',4)
hold on
yS2=zeros([1,50]);
yS2=[yS2, (x(51:100)-0.5)./0.5.*S2];
yS2=[yS2, (1.5-x(101:150))./0.5.*S2];
yS2=[yS2, zeros([1,51])];
plot(x,yS2, 'Linewidth',3)
grid on
hold on
yS3=zeros([1,100]);
yS3=[yS3, (x(101:150)-1)./0.5.*S3];
yS3=[yS3, ones([1,51]).*S3];
plot(x,yS3, 'Linewidth',2)
title('S')
legend('Орджоникидзе','Истра','Садовод')

%Модификация для N:
figure()
N1 = 0; N2 = 0.25; N3 = 0.25;
x=[0:0.01:2];
yN1=ones([1,50]).*N1;
yN1=[yN1, (1-x(51:100))./(0.5).*N1];
yN1=[yN1, zeros([1,101])];
plot(x,yN1, 'Linewidth',4)
hold on
yN2=zeros([1,50]);
yN2=[yN2, (x(51:100)-0.5)./0.5.*N2];
yN2=[yN2, (1.5-x(101:150))./0.5.*N2];
yN2=[yN2, zeros([1,51])];
plot(x,yN2, 'Linewidth',3)
grid on
hold on
yN3=zeros([1,100]);
yN3=[yN3, (x(101:150)-1)./0.5.*N3];
yN3=[yN3, ones([1,51]).*N3];
plot(x,yN3, 'Linewidth',2)
title('N')
legend('Орджоникидзе','Истра','Садовод')

%Модификация для M:
figure()
M1 = 0.25; M2 = 0.2; M3 = 0;
x=[0:0.01:2];
yM1=ones([1,50]).*M2;
yM1=[yM1, (1-x(51:100))./(0.5).*M2];
yM1=[yM1, zeros([1,101])];
plot(x,yM1, 'Linewidth',4)
hold on
yM2=zeros([1,50]);
yM2=[yM2, (x(51:100)-0.5)./0.5.*M1];
yM2=[yM2, (1.5-x(101:150))./0.5.*M1];
yM2=[yM2, zeros([1,51])];
plot(x,yM2, 'Linewidth',3)
grid on
hold on
yM3=zeros([1,100]);
yM3=[yM3, (x(101:150)-1)./0.5.*M3];
yM3=[yM3, ones([1,51]).*M3];
plot(x,yM3, 'Linewidth',2)
title('M')
legend('Орджоникидзе','Истра','Садовод')

%Модификация для P:
figure()
P1 = 0; P2 = 0.25; P3 = 0.5;
x=[0:0.01:2];
yP1=ones([1,50]).*P2;
yP1=[yP1, (1-x(51:100))./(0.5).*P2];
yP1=[yP1, zeros([1,101])];
plot(x,yP1, 'Linewidth',4)
hold on
yP2=zeros([1,50]);
yP2=[yP2, (x(51:100)-0.5)./0.5.*P3];
yP2=[yP2, (1.5-x(101:150))./0.5.*P3];
yP2=[yP2, zeros([1,51])];
plot(x,yP2, 'Linewidth',3)
grid on
hold on
yP3=zeros([1,100]);
yP3=[yP3, (x(101:150)-1)./0.5.*P1];
yP3=[yP3, ones([1,51]).*P1];
plot(x,yP3, 'Linewidth',2)
title('P')
legend('Орджоникидзе','Истра','Садовод')

%Модификация для R:
figure()
R1 = 0.5; R2 = 0.25; R3 = 0;
x=[0:0.01:2];
yR1=ones([1,50]).*R2;
yR1=[yR1, (1-x(51:100))./(0.5).*R2];
yR1=[yR1, zeros([1,101])];
plot(x,yR1, 'Linewidth',4)
hold on
yR2=zeros([1,50]);
yR2=[yR2, (x(51:100)-0.5)./0.5.*R3];
yR2=[yR2, (1.5-x(101:150))./0.5.*R3];
yR2=[yR2, zeros([1,51])];
plot(x,yR2, 'Linewidth',3)
grid on
hold on
yR3=zeros([1,100]);
yR3=[yR3, (x(101:150)-1)./0.5.*R1];
yR3=[yR3, ones([1,51]).*R1];
plot(x,yR3, 'Linewidth',2)
title('R')
legend('Орджоникидзе','Истра','Садовод')

figure()
A=[yS1;yS2;yS3;yN1;yN2;yN3;yM1;yM2;yM3;yP1;yP2;yP3;yR1;yR2;yR3];
y=max(A);
plot(x,y,'Linewidth',4)
grid on

sum1=0;
sum2=0;
for i=1:201
sum1=sum1+x(i)*y(i);
sum2=sum2+y(i);
end
c=sum1/sum2