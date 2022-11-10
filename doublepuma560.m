startup_rvc;
clear all;
clc;

L(1)=Link([0       -0.25        0        pi/2      0     -pi/2  ],'modified'); 
L(2)=Link([0       0          0        -pi/2      0    0  ],'modified');
L(3)=Link([0       0           0.2        0          0    -pi/2 ],'modified');
L(4)=Link([0       0.248        0           -pi/2      0     ],'modified');
L(5)=Link([0       0           0           -pi/2       0     ],'modified');
L(6)=Link([0       0            0           pi/2      0     ],'modified');

p560Right=SerialLink(L,'name','rightPUMA560');

           
R(1)=Link([0       0.25        0        pi/2      0     -pi/2   ],'modified'); 
R(2)=Link([0      0          0           -pi/2      0    0  ],'modified');
R(3)=Link([0       0           0.2        0          0     -pi/2],'modified');
R(4)=Link([0       0.248         0           -pi/2      0     ],'modified');
R(5)=Link([0       0           0           -pi/2       0     ],'modified');
R(6)=Link([0       0           0           pi/2      0     ],'modified');

p560Left=SerialLink(R,'name','leftPUMA560');


platform=SerialLink([0 0 0 0],'name','platform','modified');
platform.base=[1 0 0 0;
               0 1 0 0;
               0 0 1 0 ;
               0 0 0 1;]; 

R=SerialLink([platform,p560Right],'name','Right');
L=SerialLink([platform,p560Left],'name','Left'); 


axis([-1, 1, -1, 1, -1, 1])

R.plot([1 1 0 2 0 0 1]) 
hold on
L.plot([1 1 0 -2  0 0 1])
hold on
pause

R.plot([1 1 0 -1 0 0 1]) 
hold on
L.plot([1 1 0 1  0 0 1])
hold on
pause

R.plot([1 1 0 2 0 0 1]) 
hold on
L.plot([1 1 0 -2  0 0 1])
hold on
