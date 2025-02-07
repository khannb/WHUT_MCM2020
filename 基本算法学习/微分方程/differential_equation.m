clc;
clear;
%% 微分方程
dsolve('Du=1+u^2','t');

y=dsolve('D2y+4*Dy+29*y=0','y(0)=0,Dy(0)=15','x');
dsolve('x^2+y+(x-2*y)*Dy=0','x');

y=dsolve('D3y-D2y=x','y(1)=8','Dy(1)=7','D2y(2)=4','x');

[x,y,z]=dsolve('Dx=2*x-3*y+3*z','Dy=4*x-5*y+3*z','Dz=4*x-4*y+2*z','t');
x=simplify(x);%化简
y=simplify(y);
z=simplify(z);


equ1='D2f+3*g=sin(x)';
equ2='Dg+Df=cos(x)';
[general_f,general_g]=dsolve(equ1,equ2,'x');  %通解
[f,g]=dsolve(equ1,equ2,'Df(2)=0,f(3)=3,g(5)=1','x');
