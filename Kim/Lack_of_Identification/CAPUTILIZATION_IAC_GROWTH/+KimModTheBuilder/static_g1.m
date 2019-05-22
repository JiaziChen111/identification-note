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
    T = KimModTheBuilder.static_g1_tt(T, y, x, params);
end
g1 = zeros(9, 9);
g1(1,1)=y(6)*T(36)*T(37);
g1(1,2)=y(6)*T(37)*T(44)-((1-T(5))*getPowerDeriv(y(2)-T(4),(-1),1)+T(11)*(-T(7))*getPowerDeriv(y(2)-T(6),(-1),1));
g1(1,3)=y(6)*T(37)*T(54);
g1(1,5)=y(6)*T(37)*T(64);
g1(1,6)=T(9);
g1(2,1)=y(6)*T(39)*T(40);
g1(2,2)=y(6)*T(40)*T(45);
g1(2,3)=y(6)*T(40)*T(55);
g1(2,5)=y(6)*T(40)*T(65);
g1(2,6)=T(13)-((1-T(15)-T(16))*y(7)*T(14)+T(18)*T(17)*T(11)*y(7));
g1(2,7)=(-((1-T(15)-T(16))*y(6)*T(14)+T(18)*y(6)*T(11)*T(17)));
g1(3,4)=(-(y(9)*y(6)*T(11)));
g1(3,6)=y(7)-T(11)*(y(9)*y(4)-T(19)+y(7)*(1-params(3)));
g1(3,7)=y(6)-y(6)*T(11)*(1-params(3));
g1(3,9)=(-(y(6)*T(11)*y(4)));
g1(4,4)=1;
g1(5,3)=(-(T(14)*(1-T(15))));
g1(5,5)=1-(1-params(3));
g1(6,1)=1;
g1(6,5)=(-(y(8)*y(9)*T(66)));
g1(6,8)=(-T(21));
g1(6,9)=(-(y(8)*y(5)*T(66)));
g1(7,4)=1;
g1(7,5)=(-(y(8)*params(1)*y(9)*T(67)));
g1(7,8)=(-T(22));
g1(7,9)=(-(y(8)*params(1)*y(5)*T(67)));
g1(8,1)=1-T(34);
g1(8,2)=(-T(43));
g1(8,3)=(-T(53));
g1(8,5)=(-(T(23)+T(63)));
g1(9,8)=1/y(8)-params(6)*1/y(8);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
