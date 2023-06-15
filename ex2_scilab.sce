A = [ 0    1    0     0
      0 -5.9 -0.6 0.001
      0    0    0     1
      0 21.1 37.3 -0.04 ];
B = [ 0; 0.6; 0; -2.1 ];

P = syslin('c', A, B, eye(4,4), zeros(4,1) );
disp('Poles:',spec(P.A)) //システムの極（Aの固有値）

Q = diag([100, 1, 200, 1]); 
R = 0.5;
K = lqr(P, Q, R) //最適レギュレータの設計
disp('K:',K)

L = syslin('c', A, B, -K, 0); //開ループ系
[phase, wgc] = p_margin(L);   //位相余裕
disp('Phase Margin:', phase)
