function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 48);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(24) = (1-params(5))^(1/params(4));
T(25) = (y(7)/T(1))^params(6);
T(26) = (y(4)/T(2))^params(7);
T(27) = T(2)/T(3);
T(28) = 1/T(27);
T(29) = T(28)^params(8);
T(30) = 1/T(2);
T(31) = getPowerDeriv(y(4)/T(2),params(7),1);
T(32) = T(29)*(y(6))*T(25)*T(30)*T(31);
T(33) = getPowerDeriv(T(13),1-params(9),1);
T(34) = getPowerDeriv(y(5),(-params(4)),1);
T(35) = getPowerDeriv(T(7),(-1),1);
T(36) = (y(7)-T(12))*y(4)*(T(7)*T(6)*T(34)-T(9)*y(10)*T(34))/(T(7)*T(7))/y(4);
T(37) = getPowerDeriv(y(6),params(9),1);
T(38) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(39) = (y(6))*T(38);
T(40) = (-1)/(y(8)*y(8));
T(41) = (-(T(24)*y(4)))/(T(2)*T(2));
T(42) = T(31)*T(41);
T(43) = T(27)*T(27);
T(44) = (-((T(24)*T(3)-T(24)*T(2))/(T(3)*T(3))))/T(43);
T(45) = getPowerDeriv(T(28),params(8),1);
T(46) = T(44)*T(45);
T(47) = T(29)*(y(6))*T(25)*T(42)+(y(6))*T(25)*T(26)*T(46);
T(48) = (y(7)-T(12))*y(4)*(T(5)*T(7)-T(4)*T(9))/(T(7)*T(7))/y(4);

end
