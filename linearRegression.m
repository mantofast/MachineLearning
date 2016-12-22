function  linearRegression(x,y,z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% This matlab program is for linearRegression supvised learning
% x is the input/features
% y is the output/targets
% z is the new input,which you want to get the result
% theta is the prameter
% alpha is the learning factor,which determines the step size you walk each
% time from the top of the moutain
% delta is the erro that you can bare 
n=length(x(1,:));
theta=ones(n,1);
m=length(y);
alpha=0.1;
delta=1;
while(delta>0.00001)
    delta=0;
    for i=1:m
        for j= 1:n
          theta(j)=theta(j)-alpha*(theta'*x(i,:)'-y(i))*x(i,j);
        end
    end
    for i=1:m
      delta=+(theta'*x(i,:)'-y(i))^2;
    end
   % delta;
end

theta'*z'





end

