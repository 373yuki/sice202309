clear all

A = [ 0    1    0     0
      0 -5.9 -0.6 0.001
      0    0    0     1
      0 21.1 37.3 -0.04 ];
B = [ 0; 0.6; 0; -2.1 ];

P = ss(A, B, eye(4), zeros([4,1]) );
pole(P) %システムの極（Aの固有値）

Q = diag([100, 1, 200, 1]);
R = 0.5;
K = -lqr(A, B, Q, R) %最適レギュレータの設計

L = ss(A, B, -K, 0); %開ループ系
[mag, phase, wgc, wpc] = margin(L); %安定余裕
phase
