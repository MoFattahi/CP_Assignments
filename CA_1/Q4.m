clear
clc
Array=[1 5 2 7 9 ; 3 2 1 5 8 ; 8 9 3 2 1 ; 4 3 2 1 7]
A(1:4,1)=Array(1:4,5)
B(1:2,1)=Array(1:2,1);B(1:2,2)=Array(1:2,3);B(1:2,3)=Array(1:2,5)
C(1:2,1:2)=Array(3:4,1:2);C(1:2,3)=Array(3:4,4)
D(1,1:3)=Array(3,1:3);D(1,4:5)=Array(4,4:5)