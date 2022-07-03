%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%------ Numerical Diff. Of The Equation:f(x)=tanh(r*(x-r)), -2r<x<2r -----%

clear
clc
%% Direct Diff.
a = 3;
x = a;

% First Diff.

% p2(x):
% fp1 = [(2*0.005*x)+(0.0046)]
% err1 = (3-fp1)./3
% p3(x):
% fp2 = [(3*0.0021*x.^2)-(2*0.0*x)-(0.0741)]
% err2 = (3-fp2)./3
% p4(x):
% fp3 =[(-4*0.001*x.^3)+(3*0.0*x.^2)+(2*0.0648*x)+(0.1667)]
% err3 = (3-fp3)./3
% p5(x):
% fp4 = [(-5*0.0008*x.^4)-(4*0.001*x.^3)+(3*0.0370*x.^2)+(2*0.0648*x)-(0.1003)]
% err4 = (3-fp4)./3

% Second Diff.

% p2(x):
% fp5 = [(2*0.005)]
% err5 = fp5
% p3(x):
% fp6 = [(2*3*0.0021*x)-(2*0.0)]
% err6 = fp6
% p4(x):
% fp7 =[(-3*4*0.001*x.^2)+(2*3*0.0*x)+(2*0.0648)]
% err7 = fp7
% p5(x):
% fp8 = [(-4*5*0.0008*x.^3)-(3*4*0.001*x.^2)+(2*3*0.0370*x)+(2*0.0648)]
% err8 = fp8


%% Forward Diff. Centeral Diff. Backward Diff.

% a = 3;
% r = 2*a;
% N = 10      % Number Of Element's
% Ni = N+1;   % Number Of Node's
% h = r./N;
% x = 0:h:r;
% Main Function:
% f = @(x) tanh(a.*(x-a));

% Polynomial's Function:
% p2(x):
% f = [(0.005*x.^2)+(0.0046*x)-(0.0185)];
% p3(x):
% f = [(0.0021*x.^3)-(0.0*x.^2)-(0.0741*x)+(0.1667)];
% p4(x):
% f =[(-0.001*x.^4)+(0.0*x.^3)+(0.0648*x.^2)+(0.1667*x-1)];
% p5(x):
% f = [(-0.0008*x.^5)-(0.001*x.^4)+(0.0370*x.^3)+(0.0648*x.^2)-(0.1003*x-1)];

% fp = zeros (1,Ni);

%% 3-Point :

% for i = 2:Ni-2
%     Forward Diff.
%     fp(i)=((1/(2*h))*(-3*f(i)+4*f(i+1)-f(i+2)));
    
%     Centeral Diff.
%     fp(i)=((1/(2*h))*(f(i+1)-f(i-1)));

%     Backward Diff.
%     fp(i)=((1/(2*h))*(f(i-2)-4*f(i-1)+3*f(i)));
% end

%% 5-Point :

% for i = 3:Ni-4
    % Forward Diff.
%     fp(i)=((1/(12*h))*(f(i-2)-8*f(i-1)+8*f(i+1)-f(i+2)));
    
    % Centeral Diff.
%     fp(i)=((1/(12*h))*(-25*f(i)+48*f(i+1)-36*f(i+2)+16*f(i+3)-3*f(i+4)));

% end
%% 
% i_final = find (x==3);
% fp(i_final)
% err = (1.0027-abs(fp(i_final)))/1.0027
