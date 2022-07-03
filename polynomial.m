%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%------------ Root Of The Equation:f(x)=tanh(r*(x-r)), -2r<x<2r ----------%

clear
clc
%%
% 3-Point :

% r = 3;
% f = @(x) tanh(r*(x-r));
% X = ([-6,3,6])';
% ff = f(X)
% c1 = X.^0;
% c2 = X.^1;
% c3 = X.^2;
% c4 = X.^3;
% c5 = X.^4;
% CC = [c1 c2 c3 c4 c5];
% AA = CC\ff
% Z = -2*r:0.01:2*r;
% y1 = AA(1)+ AA(2).*Z.^1 + AA(3).*Z.^2 + AA(4).*Z.^3 + AA(5).*Z.^4;
% y2 = tanh(r.*(Z-r));
% hold on
% legend ('Main Function','Polynomial')
% plot(Z,y2,'k',Z,y1,'--m')
% title({'Polynomial Interpolation'})
% xlabel('Spatial co-ordinate (x) \rightarrow')
% ylabel('Spatial co-ordinate (y) \rightarrow')
% format short


%%
% 4-Point :

r = 3;
f = @(x) tanh(r*(x-r));
X = ([-6,-3,3,6])';
ff = f(X)
c1 = X.^0;
c2 = X.^1;
c3 = X.^2;
c4 = X.^3;
c5 = X.^4;
CC = [c1 c2 c3 c4 c5];
AA = CC\ff
Z = -2*r:0.01:2*r;
y1 = AA(1)+ AA(2).*Z.^1 + AA(3).*Z.^2 + AA(4).*Z.^3 + AA(5).*Z.^4;
y2 = tanh(r.*(Z-r));
hold on
plot(Z,y1,'--g')
title({'Polynomial Interpolation'})
xlabel('Spatial co-ordinate (x) \rightarrow')
ylabel('Spatial co-ordinate (y) \rightarrow')
format short


%%
% 5-Point :

% r = 3;
% f = @(x) tanh(r*(x-r));
% X = ([-6,-3,0,3,6])';
% ff = f(X)
% c1 = X.^0;
% c2 = X.^1;
% c3 = X.^2;
% c4 = X.^3;
% c5 = X.^4;
% CC = [c1 c2 c3 c4 c5];
% AA = CC\ff
% Z = -2*r:0.01:2*r;
% y1 = AA(1)+ AA(2).*Z.^1 + AA(3).*Z.^2 + AA(4).*Z.^3 + AA(5).*Z.^4;
% y2 = tanh(r.*(Z-r));
% hold on
% plot(Z,y1,'--r')
% title({'Polynomial Interpolation'})
% xlabel('Spatial co-ordinate (x) \rightarrow')
% ylabel('Spatial co-ordinate (y) \rightarrow')
% format short


%%
% 6-Point :

% r = 3;
% f = @(x) tanh(r*(x-r));
% X = ([-6,-3,0,1,3,6])';
% ff = f(X)
% c1 = X.^0;
% c2 = X.^1;
% c3 = X.^2;
% c4 = X.^3;
% c5 = X.^4;
% c6 = X.^5;
% CC = [c1 c2 c3 c4 c5 c6];
% AA = CC\ff 
% Z = -2*r:0.01:2*r;
% y1 = AA(1) + AA(2).*Z.^1 + AA(3).*Z.^2 + AA(4).*Z.^3 + AA(5).*Z.^4 + AA(6).*Z.^5;
% y2 = tanh(r.*(Z-r));
% hold on
% plot(Z,y1,'--b')
% title({'Polynomial Interpolation'})
% xlabel('Spatial co-ordinate (x) \rightarrow')
% ylabel('Spatial co-ordinate (y) \rightarrow')
% format short

