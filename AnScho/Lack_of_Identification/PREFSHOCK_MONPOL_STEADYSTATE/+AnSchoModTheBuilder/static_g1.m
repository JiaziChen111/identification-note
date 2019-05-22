function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = AnSchoModTheBuilder.static_g1_tt(T, y, x, params);
end
g1 = zeros(10, 10);
g1(1,5)=y(10)*T(28)-y(6)*T(6)*T(4)*T(28)/y(7)/(T(8)*y(9));
g1(1,6)=(-(T(6)*T(7)/y(7)/(T(8)*y(9))));
g1(1,7)=(-((-(y(6)*T(6)*T(7)))/(y(7)*y(7))/(T(8)*y(9))));
g1(1,9)=(-((-(y(6)*T(6)*T(7)/y(7)*T(8)))/(T(8)*y(9)*T(8)*y(9))));
g1(1,10)=T(2)-y(6)*T(3)*T(6)/y(7)/(T(8)*y(9));
g1(2,5)=(-(T(13)*(-(y(10)*T(28)*T(29)))+T(6)*params(14)*y(7)*T(30)));
g1(2,7)=(-(params(14)*(y(7)-T(9))+T(6)*params(14)*T(14)));
g1(2,10)=(-(T(13)*(-(T(2)*T(29)))+T(6)*params(14)*y(7)*T(35)));
g1(3,4)=1-T(15)-(1-1/y(8));
g1(3,5)=(-1);
g1(3,8)=(-(y(4)*(-T(34))));
g1(4,4)=(-(T(18)*T(17)*T(26)*T(27)));
g1(4,6)=1-T(18)*(T(17)*T(27)*T(22)*T(23)+T(16)*T(31));
g1(4,7)=(-(T(18)*T(17)*T(27)*T(23)*T(33)));
g1(5,8)=1/y(8)-1/y(8)*params(9);
g1(6,9)=1/y(9)-params(10)*1/y(9);
g1(7,10)=1/y(10)-params(16)*1/y(10);
g1(8,1)=1;
g1(8,9)=(-(100*((y(9))-y(9))/((y(9))*(y(9)))/T(19)));
g1(9,2)=1;
g1(9,7)=(-(400*((y(7))-y(7))/((y(7))*(y(7)))/T(20)));
g1(10,3)=1;
g1(10,6)=(-(400*((y(6))-y(6))/((y(6))*(y(6)))/T(21)));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
