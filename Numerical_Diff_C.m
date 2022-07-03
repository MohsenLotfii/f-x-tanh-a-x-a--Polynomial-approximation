%========================== In The Name Of God ===========================%
%------------------------ Created by Mohsen Lotfi ------------------------%
%------------------------ Persian Gulf University ------------------------%
%------ Numerical Diff. Of The Equation:f(x)=tanh(r*(x-r)), -2r<x<2r -----%

%% Numerical derivative :

clear
a = 3;
Dc=zeros(4,1);Df=zeros(4,1);Db=zeros(4,1);
DDc=zeros(4,1);DDf=zeros(4,1);DDb=zeros(4,1);
z=zeros(4,1);
for N=1:4
    dx =a*(10^(-N));
    x = [ a-2.*dx ; a-dx ; a ; a+dx ;a+2.*dx];    f = tanh(a.*(x-a));

    Dc(N,1)= ((1./(2.*dx)).* (-f(2)   + 0.*f(3) + f(4)));
    err1=(3 - Dc)/3
    Df(N,1)= ((1./(2.*dx)).* (-3.*f(3)+ 4.*f(4) - f(5)));
    err2=(3 - Df)/3
    Db(N,1)= ((1./(2.*dx)).* (f(1) - 4.*f(2) + 3.*f(3)));
    err3=(3 - Db)/3

    DDc(N,1)= ((1./((dx^2)).* (f(2) - 2.*f(3) + f(4))))
    DDf(N,1)= ((1./((dx^2)).* (f(3) - 2.*f(4) + f(5))))
    DDb(N,1)= ((1./((dx^2)).* (f(1) - 2.*f(2) + f(3))))
    
    z(N)=N;
end

figure(1)
plot(z,abs(err1),'-b*', 'linewidth' , 1);
hold on
plot(z,abs(err2),'-gs', 'linewidth' , 2);
hold on
plot(z,abs(err3),'-r^', 'linewidth' , 1);
legend('C.D.','F.D.','B.D.')
xlabel('N')
ylabel('Error')
title('First Derivative')
grid on

figure(2)
plot(z,abs(DDc),'-b*', 'linewidth' , 1);
hold on
plot(z,abs(DDf),'-gs', 'linewidth' , 2);
hold on
plot(z,abs(DDb),'-r^', 'linewidth' , 1);
legend('C.D.','F.D.','B.D.')
xlabel('N')
ylabel('Error')
title('Second Derivative')
grid on
