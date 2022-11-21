m = 400;
I = 159;
lf = 0.75;
lr = 0.53;
Cf = 10000;
Cr = 16000;
rw = 0.225;
d = 0.815;

Cf_M = -2*Cf/m;
Cr_M = -2*Cr/m;
LCf_I = -2*lf*Cf/I;
LCr_I = 2*lr*Cr/I;
I_I = 1/I;

V = 128/18;
d_t = 8/8;
Ls = d_t * V;
t = linspace(0,8,8);
a_0 = 2*(Cf + Cr)/(m*I*V);
a_1 = 1/I;
b_0 = 4*(Cf*Cr*(lf+lr)^2)/(m*I*V^2) - 2*(lf*Cf-lr*Cr)/(I);
b_1 = 2*(Cf + Cr)/(m*V) + 2*(Cf*lf^2 + Cr*lr^2)/(I*V);
[RR,PP,KK] = residue([1 b_1 b_0],[a_1 a_0]);
prop = KK(1);
dev = KK(2);
C = RR;
D = [1,-PP];
