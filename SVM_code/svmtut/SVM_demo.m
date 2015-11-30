clear all; close all;
mu1 = [0 0]; Sigma1 = [1 0; 0 1];
mu2 = [2 -2]; Sigma2 = [1 0;0 1];
N = 500;
data1 = mvnrnd(mu1,Sigma1,N);
data2 = mvnrnd(mu2,Sigma2,N);
plot(data1(:,1),data1(:,2),'b*');
hold on;
%plot(data2(:,1),data2(:,2),'ro');

y1 = ones(N,1);
y2 = -ones(N,1);

numAttri = 2;
numExam = N;

X = [data1; data2];
Y = [y1;y2];
C = 0.1;
G = X*X';

[alpha, bias] = svm(G,Y,C);
% [nsv, alpha, b0] = svc(X,Y,'linear',1);
h = svcplot(X,Y,'linear',alpha,-bias);
