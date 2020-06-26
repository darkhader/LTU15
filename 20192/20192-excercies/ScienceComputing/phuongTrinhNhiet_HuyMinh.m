clear;
clc;

M = 20;
Time = 1;
dt = 0.01; 
dx = 0.1;
D = 0.1;

T = ones(Time/dt+1,M).*25;

T(1,:) = sin(1:M).*25+25;
plot(T(1,:));
pause(2);

dT = zeros(Time/dt+1,M);

for t=1:100;
  for i=1:M;
    
    c = T(t,i);
    
    if (i==1);
      %l = T(t,i);
      l = 50;
    else;
      l = T(t,i-1);
    endif;
    
    if (i==M);
%      r = T(t,i);
r= 50;
    else;
      r = T(t,i+1);
    endif;
   
    dT(t,i) = D * (l-2*c+r)/(dx*dx);  
  endfor;

  T(t+1,:) = T(t,:).+ dT(t,:).*dt;

  plot(T(t,:));
  axis([0 20 0 50]);  
  title(['T= ' int2str(t)]);
  pause(dt);
  
  
endfor;


mesh(T);



