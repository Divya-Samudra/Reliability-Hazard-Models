clc; clear;
m=input('Enter value of m')         %0,1
k=input('Enter value of k')         %2
t=0.01:0.01:10;
lam=k*t.^(m);
R=exp(-k*t);
fd0=R*k;
R1=exp(-k*(t.^(m+1)/(m+1)));
fd=R.*lam;
if m==0
    MTTF=1/k;
    plot(t,R,t,fd0,t,MTTF);
    legend('R(t)','fd(t)','MTTF');
else
    plot(t,R1,t,fd);
    legend('R(t)', 'fd(t)');
end