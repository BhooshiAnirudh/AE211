clear all;
clc;
b=0.25;
e = 0.074;
beta = 3*pi/180;
alpha = 9*pi/180;
a = 0.269;
theta = 0:pi/180:2*pi;

r = -b*(1+e+e*cos(theta)+beta*sin(theta));
thetac = alpha+asin((r.*(sin(theta))/a)-beta);
R = 1./r;
n = 2*(sin(thetac)+sin(alpha+beta));
d = (1-(2*b*b*R.*R.*cos(2*theta))+(b*b*b*b*R.*R.*R.*R)).^(1/2);
v = n./d;
V = v.*v;
C = 1-V;

x = 2*b*cos(theta);

hold on;
plot(x,C);
xlabel('x/c');
ylabel('Cp');
xlim([-0.6,0]);
ylim([-10,2]);
hold off;