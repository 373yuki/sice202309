clear all
close all

pkg load control  %controlパッケージの読み込み

s =tf('s');
P = (s+2)/(s^3+2*s^2+3*s+4);  %伝達関数の定義

figure(1);
step(P);   %伝達関数Gのステップ応答を描画

figure(2);
bode(P);   %伝達関数Gのボード線図を描画


