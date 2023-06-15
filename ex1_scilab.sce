s = %s; //s = poly(0, 's');
P = syslin('c', (s+2)/(s^3+2*s^2+3*s+4));

f = figure(1); f.BackgroundColor=[1,1,1];
t = 0:0.01:30;
y = csim('step',t,P);
plot2d(t, y);

f = figure(2); f.BackgroundColor=[1,1,1];
bode(P);
