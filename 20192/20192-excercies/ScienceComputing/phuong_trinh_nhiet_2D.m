clear;clc;function [dfx dfy] = hao_ham_bac_2(f,dx,dy)  [X Y] = size(f);  dfx = zeros(X,Y);   dfy = zeros(X,Y);    for i=1:X    for j=1:Y            c = f(i,j);      if (i==1);%        u = 100;        u = f(i,j);      else;        u = f(i-1,j);      endif;            if (i==X);%        d = 100; % nhiệt độ ở biên         d = f(i,j);      else;        d = f(i+1,j);      endif;          if (j==1);%        l = 100;        l = f(i,j);      else;        l = f(i,j-1);      endif;            if (j==Y);%        r = 100;        r = f(i,j); % điều kiện biên cố định       else;        r = f(i,j+1);      endif;               if i>10 && j>20 && i<15 && j <25        l = 100;        r = 100;        u = 100;        d = 100;              endif;            dfx(i,j) = (u+d-2*c)/(dx*dx);      dfy(i,j) = (l+r-2*c)/(dy*dy);                        endfor;  endfor;   endfunction;  M = 30; % kích thước của miếng kim loại 30x30 T = 1000; % thời gian chạy dt = 1; % bước thời gian dx = 1; % bước theo chiều x dy = 1; % bước theo chiều y n = M/dx; % số bước theo x m = M/dy; % số bước theo yD = 0.1; % hệ số gì đó quên tên rồi C = ones(m,n).*25; % ma trận 2 chiều biểu diễn nhiệt độ các điểm FD = zeros(size(C)); % phương trình nhiệt for t=1:dt:T;    % rời rạc theo không gian   % tính đạo hàm bậc hai theo phương pháp sai phân   [d2Cx d2Cy] = hao_ham_bac_2(C,dx,dy);  % tích hợp theo thời gian   % côgng thức euler thuận để giải phương trình vi phân   FD = d2Cx + d2Cy;  C = C + D*dt.*FD;  figure(1), clf  image(C);  title(['t = ' num2str(t)]);    figure(2), clf  mesh(C);    pause(dt/100);endfor;